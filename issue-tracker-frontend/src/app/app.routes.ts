import { Routes } from '@angular/router';
import { authGuard } from './core/guards/auth.guard';

export const routes: Routes = [
  {
    path: 'login',
    loadComponent: () => import('./features/auth/login/login').then(m => m.Login)
  },
  {
    path: 'auth/callback',
    loadComponent: () => import('./features/auth/callback/auth-callback.component').then(m => m.AuthCallbackComponent)
  },
  {
    path: 'projects',
    canActivate: [authGuard],
    children: [
      {
        path: '',
        loadComponent: () => import('./features/projects/project-list/project-list').then(m => m.ProjectListComponent)
      },
      {
        path: ':id',
        loadComponent: () => import('./features/projects/project-detail/project-detail').then(m => m.ProjectDetailComponent)
      }
    ]
  },
  {
    path: 'issues',
    canActivate: [authGuard],
    children: [
      {
        path: '',
        loadComponent: () => import('./features/issues/issue-list/issue-list').then(m => m.IssueListComponent)
      },
      {
        path: ':id',
        loadComponent: () => import('./features/issues/issue-detail/issue-detail').then(m => m.IssueDetailComponent)
      }
    ]
  },
  { path: '', redirectTo: 'projects', pathMatch: 'full' },
  { path: '**', redirectTo: 'projects' }
];
