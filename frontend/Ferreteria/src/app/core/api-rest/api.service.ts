import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment.prod';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
@Injectable({
  providedIn: 'root'
})
export class ApiService {

  private apiURL = `${environment.api}`;

  constructor( 
    private http: HttpClient
  ) { }

  request_http_post(data: any, url: string): Observable<any> {
    return this.http.post<any>(`${this.apiURL}/${url}`, data);
  }
}
