import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment.prod';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
    providedIn: 'root'
})
export class ProviderService {

    private apiURL = `${environment.api}/supplier`

    constructor(private http: HttpClient) { }

    getProveedor(data: any): Observable<any> {
        return this.http.post<any>(`${this.apiURL}/all`, data);

    }
    createProvider(data: any): Observable<any> {
        return this.http.post<any>(`${this.apiURL}/add`, data);
    }
}