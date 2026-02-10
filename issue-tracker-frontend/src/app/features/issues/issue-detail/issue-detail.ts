import { Component, OnInit, signal, inject } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ActivatedRoute } from '@angular/router';
import { FormsModule } from '@angular/forms';
import { IssueService } from '../../../core/services/issue.service';
import { WebSocketService } from '../../../core/services/websocket.service';
import { Issue, Comment, Activity } from '../../../shared/models';

@Component({
  selector: 'app-issue-detail',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './issue-detail.html',
  styleUrl: './issue-detail.css',
})
export class IssueDetailComponent implements OnInit {
  private route = inject(ActivatedRoute);
  private issueService = inject(IssueService);
  private wsService = inject(WebSocketService);

  issue = signal<Issue | null>(null);
  comments = signal<Comment[]>([]);
  activityLog = signal<Activity[]>([]);
  isEditing = signal(false);
  editForm: Partial<Issue> = {};
  newCommentText = '';

  ngOnInit() {
    const id = this.route.snapshot.paramMap.get('id');
    if (id) {
      this.loadIssue(id);
      this.loadComments(id);
      this.loadActivity(id);
      this.setupWebSocket(id);
    }
  }

  setupWebSocket(id: string) {
    this.wsService.connect();
    this.wsService.subscribe(`/topic/issues/${id}`).subscribe({
      next: (updatedIssue) => {
        this.issue.set(updatedIssue);
        if (!this.isEditing()) {
          this.editForm = { ...updatedIssue };
        }
      },
      error: (err) => console.error('WebSocket subscription error:', err)
    });
  }

  ngOnDestroy() {
    this.wsService.disconnect();
  }

  loadIssue(id: string) {
    this.issueService.getIssue(id).subscribe((issue) => {
      this.issue.set(issue);
      this.editForm = { ...issue };
    });
  }

  loadComments(id: string) {
    this.issueService.getComments(id).subscribe((comments) => this.comments.set(comments));
  }

  loadActivity(id: string) {
    this.issueService.getActivityLog(id).subscribe((log) => this.activityLog.set(log));
  }

  toggleEdit() {
    this.isEditing.update((v) => !v);
  }

  saveIssue() {
    const id = this.issue()?.id;
    if (id) {
      this.issueService.updateIssue(id, this.editForm).subscribe((updated) => {
        this.issue.set(updated);
        this.isEditing.set(false);
        this.loadActivity(id);
      });
    }
  }

  addComment() {
    const id = this.issue()?.id;
    if (id && this.newCommentText.trim()) {
      this.issueService.addComment(id, this.newCommentText).subscribe((comment) => {
        this.comments.update((prev) => [...prev, comment]);
        this.newCommentText = '';
        this.loadActivity(id);
      });
    }
  }
}
