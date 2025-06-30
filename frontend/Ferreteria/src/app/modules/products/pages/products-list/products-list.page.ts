import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule, } from '@angular/forms';
import { IonContent, IonHeader, IonTitle, IonToolbar, IonList,IonItem, IonLabel} from '@ionic/angular/standalone';
import { ProductsService } from '../../services/products.service';
import type { Product } from '../../models/producto.model';


@Component({
  selector: 'app-products-list',
  templateUrl: './products-list.page.html',
  styleUrls: [],
  standalone: true,
  imports: [
    IonContent,
    IonHeader,
    IonTitle,
    IonToolbar,
    CommonModule,
    FormsModule,
    IonList,
    IonItem,
    IonLabel


  ]
})
export class ProductsListPage implements OnInit {

  products: Product[] = [];
  loading: boolean = true;
  searchValue: string | undefined;

  constructor(private productsService: ProductsService) { }

  ngOnInit() {
    this.getProducts();
  }

  getProducts() {

    this.productsService.getProducts(null).subscribe({
      next: (response) => {
        this.products = response;
      },
      error: (error) => {
        console.error('Error al obtener los productos:', error);
      }
    });
  }



}
