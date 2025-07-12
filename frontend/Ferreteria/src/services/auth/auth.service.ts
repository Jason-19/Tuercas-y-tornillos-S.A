import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment.prod';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class AuthService {
  private baseUrl = `${environment.api}/auth`;

  constructor(
    private http: HttpClient
  ) { }

  login(data: any) {
    return this.http.post(`${this.baseUrl}/login`, data);
  }
}
