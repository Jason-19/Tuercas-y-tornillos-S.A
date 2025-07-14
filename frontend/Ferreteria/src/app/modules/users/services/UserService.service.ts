import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment.prod';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
    providedIn: 'root'
})
export class UserService {

    private apiURL = `${environment.api}/user`

    constructor(private http: HttpClient) { }

    getUsers(data: any): Observable<any> {
        return this.http.post<any>(`${this.apiURL}/all`, data);

    }
    createUser(data: any): Observable<any> {
        return this.http.post<any>(`${this.apiURL}/add`, data);
    }
}