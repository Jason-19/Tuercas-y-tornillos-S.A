import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { IonContent, IonHeader, IonTitle, IonToolbar,IonBreadcrumb, IonBreadcrumbs,IonIcon,IonBackButton, 
  IonButtons,IonList,IonItem,IonLabel,IonAvatar,IonButton } from '@ionic/angular/standalone';
import { CustomerService } from '../../services/customer.service';

@Component({
  selector: 'app-customer-list',
  templateUrl: './customer-list.page.html',
  standalone: true,
  imports: [IonContent, IonHeader, IonTitle, IonToolbar, CommonModule, FormsModule, IonBreadcrumb, IonBreadcrumbs,IonIcon,
    IonBackButton, IonButtons,IonList,IonItem,IonLabel,IonAvatar,IonButton
  ]
})
export class CustomerListPage implements OnInit {
  customers: any = [];
  constructor(
    private customerService: CustomerService

  ) { }

  ngOnInit() {
    this.get_customers();
  }

  get_customers() {
    this.customerService.getClientes({}).subscribe((data) => { 
      this.customers = data; 
    });

  }
  edit(customer: any) {}
  view(customer: any) {}
  delete(customer: any) {}
}
