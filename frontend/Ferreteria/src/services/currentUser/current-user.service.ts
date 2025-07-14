import { Injectable } from '@angular/core';
import { Observable, tap } from 'rxjs';
import { ApiService } from 'src/app/core/api-rest/api.service';
import { User } from 'src/app/modules/users/models/user.mode';
@Injectable({
  providedIn: 'root'
})
export class CurrentUserService {


  currentUser: User | null = null
  roles:any
  constructor(
    private apiService: ApiService
  ) {
  }

  setJWT(token: any) {
    localStorage.setItem('token', JSON.stringify(token));
  }

  getCurrentUserID() {
    const token = localStorage.getItem('token');
    if (!token) return null;
    try {
      const payloadString = atob(token.split('.')[1]);
      const payload = JSON.parse(payloadString);
      return payload.sub || null;

    } catch (e) {
      console.error('Error al decodificar token:', e);
      return null;
    }
  }
  setCurrentUser(): Observable<User> {
    return this.apiService.request_http_post({ id: this.getCurrentUserID() }, 'user/find').pipe(
      tap((response: User) => {
        this.currentUser = response;
        this.roles = response.role.name
        console.log(response.role.name);
        localStorage.setItem('currentUser', JSON.stringify(response));
      })
    );
  }
  getCurrentUser() {
    const userString = localStorage.getItem('currentUser');
    if (!userString) return null;
    return JSON.parse(userString);
  }
  logout() {
    localStorage.removeItem('token');
    localStorage.removeItem('currentUser');
    localStorage.clear();
    this.currentUser = null
  }
  isAdmin(): boolean {
    return this.currentUser?.role.name === 'Administrador';
  }

  hasRole(role: string): boolean {
  return this.roles.name === role;
}
}

