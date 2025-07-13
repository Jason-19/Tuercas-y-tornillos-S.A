import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule, FormGroup,FormBuilder,ReactiveFormsModule} from '@angular/forms';
import { IonContent, IonHeader, IonTitle, IonToolbar,IonBreadcrumb, IonBreadcrumbs,IonIcon} from '@ionic/angular/standalone';
import { ProductsService } from '../../services/products.service';
import type { Product } from '../../models/producto.model';
import { Router} from '@angular/router';

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
    ReactiveFormsModule,
    IonBreadcrumb,
    IonBreadcrumbs,
    IonIcon


  ]
})
export class ProductsListPage implements OnInit {

  
  products: Product[] = [];
  loading: boolean = true;
  searchValue: string | undefined;

  constructor(
    private productsService: ProductsService, 
    private router: Router, 
    private formBuilder: FormBuilder
   
  ) { }

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

  createProduct() {
    this.router.navigate(['/tuercas/products/create']);

    
  }

  productDetail(id: number) {
    this.router.navigate(['/tuercas/products/card', id]);
  }

}
