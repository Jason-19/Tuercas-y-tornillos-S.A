import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class CurrentUserService {

  currentUser: string | any = null
  is_admin: boolean = false
  constructor() {
    
  }

  setJWT(token: any) {
    localStorage.setItem('token', JSON.stringify(token));
  }

  getCurrentUserID(){
    const token = localStorage.getItem('token');
    if (!token) return null;
    try {
      const payloadString = atob(token.split('.')[1]);
      const payload = JSON.parse(payloadString);
      console.log(payload.sub);
      return payload.sub || null;
    } catch (e) {
      console.error('Error al decodificar token:', e);
      return null;
    }
  }
}

