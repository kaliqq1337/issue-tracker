import { HttpInterceptorFn } from '@angular/common/http';
import { inject } from '@angular/core';
import { AuthService } from '../services/auth.service';

export const authInterceptor: HttpInterceptorFn = (req, next) => {
  const authService = inject(AuthService);
  const token = authService.getToken();

  console.log('AuthInterceptor: Intercepting request to', req.url);
  if (token) {
    console.log('AuthInterceptor: Adding Authorization header');
    // Ensure we only add the header if it looks like a valid JWT
    if (token.split('.').length === 3) {
      req = req.clone({
        setHeaders: {
          Authorization: `Bearer ${token}`
        }
      });
    } else {
      console.warn('AuthInterceptor: Token found but it is not a valid JWT format. Skipping Authorization header.');
    }
  } else {
    console.log('AuthInterceptor: No token found in AuthService');
  }

  return next(req);
};
