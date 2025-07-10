import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment.prod';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Product } from '../../products/models/producto.model';

@Injectable({
  providedIn: 'root'
})
export class InventarioService {

  private apiURL = `${environment.api}/products`;
  constructor(private http: HttpClient) {
  }

  getProducts(data: any): Observable<Product[]> {
    return this.http.post<Product[]>(`${this.apiURL}/all`, data);
  }
  createProduct(data: any): Observable<Product> {
    return this.http.post<Product>(`${this.apiURL}/add`, data);
  }

  getProveedor(data: any): Observable<Product[]> {
    return this.http.post<Product[]>(`${environment.api}/supplier/all`, data);
  }
}
