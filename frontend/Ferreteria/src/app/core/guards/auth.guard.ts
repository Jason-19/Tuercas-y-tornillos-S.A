import { inject } from '@angular/core';
import { CanActivateFn, Router } from '@angular/router';
import { CurrentUserService } from '../../../services/currentUser/current-user.service';  

export const authGuard: CanActivateFn = (route, state) => {
  const currentUserService = inject(CurrentUserService);
  const router = inject(Router);

  const user = currentUserService.getCurrentUser();

  if (!user) {
    router.navigate(['/auth/login']);
    return false;
  }

  const expectedRole = route.data['role']; 
  if (expectedRole && user.role?.name !== expectedRole) {
    router.navigate(['/unauthorized']); 
    return false;
  }

  return true;
};

