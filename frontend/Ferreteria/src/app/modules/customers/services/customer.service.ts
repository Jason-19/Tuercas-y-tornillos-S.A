import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment.prod';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class CustomerService {

  private apiURL = `${environment.api}/customer`;
  constructor(private http: HttpClient) {
  }


  getClientes(data: any): Observable<any[]> {
    return this.http.post<any[]>(`${this.apiURL}/all`, data);
  }
  createCustomer(data: any): Observable<any> {
    return this.http.post<any>(`${this.apiURL}/add`, data);
  }
  deleteCustomer(id: any): Observable<any> {
    return this.http.post<any>(`${this.apiURL}/delete/:id?id=${id}`, id);
  }
}
