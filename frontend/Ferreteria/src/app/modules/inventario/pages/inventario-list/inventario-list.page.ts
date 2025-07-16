import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule, FormGroup, FormBuilder, ReactiveFormsModule } from '@angular/forms';
import { IonContent, IonHeader, IonTitle, IonToolbar, IonList, IonItem, IonLabel,IonBreadcrumb, 
  IonBreadcrumbs,IonIcon,IonBackButton, IonButtons,IonNote
} from '@ionic/angular/standalone';
import { InventarioService } from '../../services/inventario.service';
import type { Product } from 'src/app/modules/products/models/producto.model';
import { Router } from '@angular/router';

@Component({
  selector: 'app-inventario-list',
  templateUrl: './inventario-list.page.html',
  standalone: true,
  imports: [IonContent, IonHeader, IonTitle, 
    IonToolbar, CommonModule, FormsModule, 
    ReactiveFormsModule, IonList, IonItem, 
    IonLabel,IonBreadcrumb, IonBreadcrumbs,IonIcon,
    IonButtons,IonBackButton,IonNote
  ]
})
export class InventarioListPage implements OnInit {

  products: Product[] = [];
  constructor(
    private inventarioService: InventarioService,
    private router: Router
  ) { }

  ngOnInit() {
    this.getProducts();
  }

  getProducts() {
    this.inventarioService.getProducts(null).subscribe({
      next: (response) => {
        this.products = response;
        console.log('Productos obtenidos:', this.products);
      },
      error: (error) => {
        console.error('Error al obtener los productos:', error);
      }
    });
  }

  createProduct() {
    this.router.navigate(['/tuercas/products/create']);


  }

  productDetail(id: number) {
    this.router.navigate(['/tuercas/products/details', id]);
  }
  createProvider() {
    this.router.navigate(['/tuercas/supplier/create']);
  }
}
