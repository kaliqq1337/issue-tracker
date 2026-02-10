import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Issue, PaginatedResponse, Comment, Activity } from '../../shared/models';

export interface IssueFilters {
  status?: string;
  priority?: string;
  assigneeId?: string;
  tag?: string;
  search?: string;
  projectId?: string;
}

@Injectable({
  providedIn: 'root'
})
export class IssueService {
  private readonly API_URL = '/api/issues';

  constructor(private http: HttpClient) {}

  getIssues(
    page = 1,
    pageSize = 10,
    filters: IssueFilters = {}
  ): Observable<PaginatedResponse<Issue>> {
    let params = new HttpParams()
      .set('page', page.toString())
      .set('pageSize', pageSize.toString());

    Object.entries(filters).forEach(([key, value]) => {
      if (value) {
        params = params.set(key, value);
      }
    });

    return this.http.get<PaginatedResponse<Issue>>(this.API_URL, { params });
  }

  getIssue(id: string): Observable<Issue> {
    return this.http.get<Issue>(`${this.API_URL}/${id}`);
  }

  createIssue(issue: Partial<Issue>): Observable<Issue> {
    return this.http.post<Issue>(this.API_URL, issue);
  }

  updateIssue(id: string, issue: Partial<Issue>): Observable<Issue> {
    return this.http.put<Issue>(`${this.API_URL}/${id}`, issue);
  }

  deleteIssue(id: string): Observable<void> {
    return this.http.delete<void>(`${this.API_URL}/${id}`);
  }

  getComments(issueId: string): Observable<Comment[]> {
    return this.http.get<Comment[]>(`${this.API_URL}/${issueId}/comments`);
  }

  addComment(issueId: string, text: string): Observable<Comment> {
    return this.http.post<Comment>(`${this.API_URL}/${issueId}/comments`, { text });
  }

  getActivityLog(issueId: string): Observable<Activity[]> {
    return this.http.get<Activity[]>(`${this.API_URL}/${issueId}/activity`);
  }
}
