import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { IonContent, IonHeader, IonTitle, IonToolbar, IonBreadcrumb, IonBreadcrumbs, IonIcon, IonLabel, IonButton, IonCard, IonCardContent, IonCardHeader, IonCardTitle, IonList, IonItem, IonGrid, IonCol, IonRow } from '@ionic/angular/standalone';
import { CurrentUserService } from 'src/services/currentUser/current-user.service';
import { User } from '../users/models/user.mode';
import { Router, RouterLink } from '@angular/router';
import { ToastController } from '@ionic/angular';
import { ApiService } from 'src/app/core/api-rest/api.service';
@Component({
  selector: 'app-home',
  templateUrl: './home.page.html',
  standalone: true,
  imports: [RouterLink, IonContent, IonHeader, IonTitle, IonToolbar, CommonModule, FormsModule, IonBreadcrumb, IonBreadcrumbs, IonIcon, IonLabel, IonButton, IonCard, IonCardContent, IonCardHeader, IonCardTitle, IonList, IonItem, IonGrid, IonCol, IonRow

  ],
})
export class HomePage implements OnInit {

  currentUser: User | null = null
  totalVentas: string = ''
  totalStok: number = 0
  constructor(
    public currentUserService: CurrentUserService,
    private router: Router,
    private toastController: ToastController,
    private api: ApiService
  ) { }
  ngOnInit() {
    this.currentUser = this.currentUserService.getCurrentUser();
    this.totalVentasDiaria();
  }

  profile() {
    this.router.navigate(['/tuercas/profile']);
  }
  logout() {
    this.currentUserService.logout();
    this.router.navigate(['/']);
  }
  reportes() {
    this.presentToast('Proximamente', 2000, 'top', 'danger');
  }

  async presentToast(message: string, duration: number, position: 'top' | 'middle' | 'bottom', color?: string) {
    const toast = await this.toastController.create({
      message: message,
      duration: duration,
      position: position,
      color: color
    });
    toast.present();
  }

  totalVentasDiaria() {
    this.api.request_http_post({}, 'sales/daily/report').subscribe((response: any) => {
     
      const enDolares = new Intl.NumberFormat('en-US', {
        style: 'currency',
        currency: 'USD'
      }).format(response.total);

      this.totalVentas = enDolares;
    })
    this.api.request_http_post({}, 'products/stock/full').subscribe((response: any) => {
      this.totalStok = response.stock
    })
  }

}
