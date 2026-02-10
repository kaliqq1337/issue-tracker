export type IssueStatus = 'OPEN' | 'IN_PROGRESS' | 'DONE';
export type IssuePriority = 'LOW' | 'MEDIUM' | 'HIGH';

export interface Issue {
  id: string;
  projectId: string;
  title: string;
  description: string;
  status: IssueStatus;
  priority: IssuePriority;
  assigneeIds?: string[];
  tags: string[];
  createdAt: Date;
  updatedAt: Date;
}
