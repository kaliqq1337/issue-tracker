import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Project, PaginatedResponse } from '../../shared/models';

@Injectable({
  providedIn: 'root'
})
export class ProjectService {
  private readonly API_URL = '/api/projects';

  constructor(private http: HttpClient) {}

  getProjects(page = 1, pageSize = 10): Observable<PaginatedResponse<Project>> {
    console.log(`ProjectService: Requesting projects page ${page} with pageSize ${pageSize}`);
    const params = new HttpParams()
      .set('page', page.toString())
      .set('pageSize', pageSize.toString());
    console.log(`ProjectService: GET ${this.API_URL} with params:`, params.toString());
    return this.http.get<PaginatedResponse<Project>>(this.API_URL, { params });
  }

  getProject(id: string): Observable<Project> {
    return this.http.get<Project>(`${this.API_URL}/${id}`);
  }

  createProject(project: Partial<Project>): Observable<Project> {
    return this.http.post<Project>(this.API_URL, project);
  }

  updateProject(id: string, project: Partial<Project>): Observable<Project> {
    return this.http.put<Project>(`${this.API_URL}/${id}`, project);
  }

  deleteProject(id: string): Observable<void> {
    return this.http.delete<void>(`${this.API_URL}/${id}`);
  }
}
