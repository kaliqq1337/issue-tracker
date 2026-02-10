import { Component, OnInit, inject } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { AuthService } from '../../../core/services/auth.service';

@Component({
  selector: 'app-auth-callback',
  standalone: true,
  template: '<div class="flex justify-center items-center h-screen">Logging in with Google...</div>',
})
export class AuthCallbackComponent implements OnInit {
  private route = inject(ActivatedRoute);
  private router = inject(Router);
  private authService = inject(AuthService);

  ngOnInit() {
    const token = this.route.snapshot.queryParamMap.get('token');
    if (token) {
      this.authService.saveToken(token);
      this.router.navigate(['/projects']);
    } else {
      console.error('No token found in callback');
      this.router.navigate(['/login']);
    }
  }
}
