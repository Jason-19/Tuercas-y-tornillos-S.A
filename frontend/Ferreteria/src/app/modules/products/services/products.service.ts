import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment.prod';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Product } from '../models/producto.model';

@Injectable({
  providedIn: 'root'
})
export class ProductsService {

    private apiURL = `${environment.api}/products`;
    // http://localhost:8080/products/find
  constructor(private http: HttpClient) {
  }

 
  getProducts(data: any) : Observable<Product[]> {
    return this.http.post<Product[]>(`${this.apiURL}/all`, data);
  }
  createProduct(data: any) : Observable<Product> {
    return this.http.post<Product>(`${this.apiURL}/add`, data);
  }

  getProveedor(data: any) : Observable<Product[]> {
    return this.http.post<Product[]>(`${environment.api}/supplier/all`, data);
  }
  detailProduct(data: any) : Observable<Product> {
    return this.http.post<any>(`${this.apiURL}/find`,data);
  }

  update_product(data: any) : Observable<any> {
    return this.http.put<any>(`${this.apiURL}/update`,data);
  }
}
