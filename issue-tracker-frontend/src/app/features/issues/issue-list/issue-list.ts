import { Component, OnInit, signal, inject } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { RouterLink, ActivatedRoute } from '@angular/router';
import { IssueService, IssueFilters } from '../../../core/services/issue.service';
import { WebSocketService } from '../../../core/services/websocket.service';
import { Issue } from '../../../shared/models';

@Component({
  selector: 'app-issue-list',
  standalone: true,
  imports: [CommonModule, FormsModule, RouterLink],
  templateUrl: './issue-list.html',
  styleUrl: './issue-list.css',
})
export class IssueListComponent implements OnInit {
  private issueService = inject(IssueService);
  private wsService = inject(WebSocketService);
  private route = inject(ActivatedRoute);

  issues = signal<Issue[]>([]);
  page = signal(1);
  pageSize = signal(10);
  filters: IssueFilters = {
    search: '',
    status: '',
    priority: '',
    tag: '',
    assigneeId: '',
    projectId: '',
  };

  ngOnInit() {
    this.route.queryParams.subscribe((params) => {
      if (params['projectId']) {
        this.filters.projectId = params['projectId'];
      }
      this.loadIssues(1);
    });
    this.setupWebSocket();
  }

  setupWebSocket() {
    this.wsService.connect();
    this.wsService.subscribe('/topic/issues').subscribe({
      next: (updatedIssue) => {
        this.issues.update((prev) =>
          prev.map((i) => (i.id === updatedIssue.id ? updatedIssue : i))
        );
      },
      error: (err) => console.error('WebSocket subscription error:', err)
    });
  }

  loadIssues(page: number) {
    this.issueService.getIssues(page, this.pageSize(), this.filters).subscribe({
      next: (response) => {
        this.issues.set(response.data);
        this.page.set(page);
      },
      error: (error) => {
        console.error('IssueListComponent: Error loading issues', error);
      }
    });
  }
}
