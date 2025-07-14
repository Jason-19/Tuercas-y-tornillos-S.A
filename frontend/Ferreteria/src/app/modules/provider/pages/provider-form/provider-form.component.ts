import { Component, OnInit } from '@angular/core';
import { CommonModule, NgIf, NgFor} from '@angular/common';
import { FormsModule, FormBuilder, FormGroup, ReactiveFormsModule, Validators, } from '@angular/forms';
import { IonContent, IonHeader, IonTitle, IonToolbar, IonButton, IonBackButton, IonButtons, IonBreadcrumb, IonBreadcrumbs, IonIcon, IonList, IonItem, IonLabel } from '@ionic/angular/standalone';
import { ProviderService } from '../../services/provider.service';
@Component({
  selector: 'app-provider-form',
  templateUrl: './provider-form.component.html',
  imports: [ReactiveFormsModule, IonContent, IonHeader, IonTitle, IonToolbar, IonBreadcrumb,
    IonBreadcrumbs, IonIcon, IonBackButton, IonButtons, FormsModule, CommonModule, IonButton, IonList, IonItem, IonLabel, NgIf, NgFor],
  standalone: true
})
export class ProviderFormComponent implements OnInit {
  proveedores: any[] = [];
  newProveedor: FormGroup;
  success: boolean = false
  constructor(
    private fb: FormBuilder,
    private providerService: ProviderService

  ) {
    this.newProveedor = this.fb.group({
      name: ['', Validators.required],
      contact: ['', Validators.required],
      iddireccion: ['null', Validators.required],
      phone: ['', Validators.required]
    });

   
  }

  ngOnInit() {
    this.getProveedores();  
   }
   getProveedores() {
      this.providerService.getProveedor(null).subscribe(
        (response: any) => {
          this.proveedores = response;
        }
      )
   }
  createProveedor() {
    if (this.newProveedor.valid) {
      const proveedorData = this.newProveedor.value;
      this.providerService.createProvider(proveedorData).subscribe();
      this.success = true;
      setTimeout(() => {
        this.getProveedores();
      },1000);
    }
  }
}
