export interface Activity {
  id: string;
  issueId: string;
  userId: string;
  action: string;
  details: string;
  createdAt: Date;
}
