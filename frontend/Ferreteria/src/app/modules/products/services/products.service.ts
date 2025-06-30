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
  constructor(private http: HttpClient) {
  }

 
  getProducts(data: any) : Observable<Product[]> {
    return this.http.post<Product[]>(`${this.apiURL}/all`, data);
  }
}
