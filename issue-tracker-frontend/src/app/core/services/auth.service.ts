import { Injectable, signal } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Router } from '@angular/router';
import { Observable, tap, of } from 'rxjs';
import { AuthResponse, User } from '../../shared/models';

@Injectable({
  providedIn: 'root'
})
export class AuthService {
  private readonly TOKEN_KEY = 'auth_token';
  private readonly USER_KEY = 'auth_user';

  currentUser = signal<User | null>(this.getStoredUser());

  constructor(private http: HttpClient, private router: Router) {}

  login(credentials: any): Observable<AuthResponse> {
    // Hardcoded credentials for testing
    if (credentials.email === 'littleriver1337@gmail.com' && credentials.password === '123456') {
      const mockResponse: AuthResponse = {
        token: 'mock-jwt-token-1337',
        user: {
          id: '1337',
          email: 'littleriver1337@gmail.com',
          name: 'Little River'
        }
      };
      return of(mockResponse).pipe(
        tap(response => this.handleAuth(response))
      );
    }

    return this.http.post<AuthResponse>('/api/auth/login', credentials).pipe(
      tap(response => this.handleAuth(response))
    );
  }

  getToken(): string | null {
    return localStorage.getItem(this.TOKEN_KEY);
  }

  private loggedInSignal = signal<boolean>(!!localStorage.getItem('auth_token'));

  private handleAuth(response: AuthResponse): void {
    localStorage.setItem(this.TOKEN_KEY, response.token);
    localStorage.setItem(this.USER_KEY, JSON.stringify(response.user));
    this.currentUser.set(response.user);
    this.loggedInSignal.set(true);
  }

  private getStoredUser(): User | null {
    const userJson = localStorage.getItem(this.USER_KEY);
    return userJson ? JSON.parse(userJson) : null;
  }

  isLoggedIn(): boolean {
    return this.loggedInSignal();
  }

  saveToken(token: string): void {
    localStorage.setItem(this.TOKEN_KEY, token);
    this.loggedInSignal.set(true);
    // Optionally decode user info from token
    try {
      const payload = JSON.parse(atob(token.split('.')[1]));
      const user: User = {
        id: payload.userId,
        email: payload.sub,
        name: payload.name
      };
      localStorage.setItem(this.USER_KEY, JSON.stringify(user));
      this.currentUser.set(user);
    } catch (e) {
      console.error('Error decoding token', e);
    }
  }

  logout(): void {
    localStorage.removeItem(this.TOKEN_KEY);
    localStorage.removeItem(this.USER_KEY);
    this.currentUser.set(null);
    this.loggedInSignal.set(false);
    this.router.navigate(['/login']);
  }
}
