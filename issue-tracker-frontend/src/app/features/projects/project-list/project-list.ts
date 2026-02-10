import { Component, OnInit, signal, inject } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterLink } from '@angular/router';
import { MatToolbarModule } from '@angular/material/toolbar';
import { MatCardModule } from '@angular/material/card';
import { MatButtonModule } from '@angular/material/button';
import { MatPaginatorModule, PageEvent } from '@angular/material/paginator';
import { ProjectService } from '../../../core/services/project.service';
import { AuthService } from '../../../core/services/auth.service';
import { Project } from '../../../shared/models';

@Component({
  selector: 'app-project-list',
  standalone: true,
  imports: [CommonModule, RouterLink, MatToolbarModule, MatCardModule, MatButtonModule, MatPaginatorModule],
  templateUrl: './project-list.html',
  styleUrl: './project-list.css',
})
export class ProjectListComponent implements OnInit {
  protected authService = inject(AuthService);
  private projectService = inject(ProjectService);
  protected Math = Math;

  projects = signal<Project[]>([]);
  page = signal(1);
  pageSize = signal(10);
  total = signal(0);

  errorMessage = signal<string | null>(null);

  ngOnInit() {
    this.loadProjects(1);
  }

  loadProjects(page: number) {
    console.log('ProjectListComponent: loadProjects called with page:', page);
    console.log('ProjectListComponent: API_URL being used via ProjectService');
    this.errorMessage.set(null);
    this.projectService.getProjects(page, this.pageSize()).subscribe({
      next: (response) => {
        console.log('ProjectListComponent: Received response from API:', response);
        if (response && response.data) {
          console.log('ProjectListComponent: Setting projects signal with', response.data.length, 'items');
          this.projects.set(response.data);
          this.total.set(response.total);
          this.page.set(page);
        } else {
          console.warn('ProjectListComponent: Response data is empty or invalid');
          this.errorMessage.set('Received invalid data from server.');
        }
      },
      error: (error) => {
        console.error('ProjectListComponent: API error:', error);
        this.errorMessage.set(`Failed to load projects: ${error.message || error.statusText || 'Unknown error'}`);
      }
    });
  }

  onPage(event: PageEvent) {
    this.pageSize.set(event.pageSize);
    this.loadProjects(event.pageIndex + 1);
  }
}
