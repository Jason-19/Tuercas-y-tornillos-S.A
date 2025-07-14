import { Component, OnInit } from '@angular/core';
import { CommonModule, NgIf, NgFor } from '@angular/common';
import { FormsModule, FormBuilder, FormGroup, ReactiveFormsModule, Validators, } from '@angular/forms';
import { IonContent, IonHeader, IonTitle, IonToolbar, IonButton, IonBackButton, IonButtons, IonBreadcrumb, IonBreadcrumbs, IonIcon, IonList, IonItem, IonLabel } from '@ionic/angular/standalone';
import { CustomerService } from '../../services/customer.service';

@Component({
  selector: 'app-customer-form',
  templateUrl: './customer-form.component.html',
  imports: [
    CommonModule,
    FormsModule,
    ReactiveFormsModule,
    NgIf,
    NgFor,
    IonContent,
    IonHeader,
    IonTitle,
    IonToolbar,
    IonButton,
    IonBackButton,
    IonButtons,
    IonBreadcrumb,
    IonBreadcrumbs,
    IonIcon,
    IonList,
    IonItem,
    IonLabel,
  ],

})
export class CustomerFormComponent implements OnInit {
  customers: any[] = []
  newCliente: FormGroup
  success: boolean = false
  constructor(
    private fb: FormBuilder,
    private customerService: CustomerService
  ) {
    this.newCliente = this.fb.group({
      first_name: ['', Validators.required],
      email: ['', [Validators.required, Validators.email]],
      phone: ['', Validators.required]
    });
  }

  ngOnInit() { 
    this.get_customers();
  }

  createCliente() {
    this.customerService.createCustomer(this.newCliente.value).subscribe((data) => {
      this.success = true;
      this.get_customers();
    });
  }
  get_customers() {
    this.customerService.getClientes({}).subscribe((data) => { 
      this.customers = data; 
    });

  }
  deleteCustomer(id: any) {
    this.customerService.deleteCustomer(id).subscribe((data) => {
      this.get_customers();
    });
  }

}
