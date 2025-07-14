import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule, FormBuilder, FormGroup, ReactiveFormsModule, Validators,} from '@angular/forms';
import { IonContent, IonHeader, IonTitle, IonToolbar, IonButton, IonBackButton, IonButtons,IonBreadcrumb, IonBreadcrumbs, IonIcon} from '@ionic/angular/standalone';
import { ProductsService } from '../../services/products.service';
import { Router } from '@angular/router';
@Component({
  selector: 'app-produts-form',
  templateUrl: './produts-form.component.html',
  imports: [IonContent, IonHeader, IonTitle, IonToolbar, IonButton, ReactiveFormsModule, FormsModule, IonBackButton, IonButtons, CommonModule, IonBreadcrumb, IonBreadcrumbs, IonIcon],
})
export class ProdutsFormComponent implements OnInit {
  proveedores: any[] = [];

  categorias: any[] = [
    { id: 1, name: 'Categoria 1' },
    { id: 2, name: 'Categoria 2' }
  ];

  subcategorias: any[] = [
    { id: 1, name: 'Subcategoria 1' },
    { id: 2, name: 'Subcategoria 2' }
  ];

  marcas: any[] = [
    { id: 1, name: 'Marca 1' },
    { id: 2, name: 'Marca 2' }
  ];

  unidades: any[] = [
    { id: 1, name: 'Unidad 1' },
    { id: 2, name: 'Unidad 2' }
  ]

  newProduct: FormGroup
  success: boolean = false;
  
  constructor(
    private formBuilder: FormBuilder,
    private productsService: ProductsService,
    private router: Router
  ) {
    
    this.newProduct = this.formBuilder.group({
      name: ['', [Validators.required]],
      descripcion: ['', [Validators.required]],
      price: ['', [Validators.required]],
      stock: ['', [Validators.required]],
      idProveedor: ['', [Validators.required]],
      idCategoria: ['', [Validators.required]],
      idSubcategoria: ['', [Validators.required]],
      idMarca: ['', [Validators.required]],
      idUnidad: ['', [Validators.required]],
      imageUrl: ['', [Validators.required]],
      status: ['A', [Validators.required]]

    })

  }

  ngOnInit() {
this.productsService.getProveedor({}).subscribe(data => {
  this.proveedores = data
})
  }

  createProduct() {
    console.log(this.newProduct.value);
    this.productsService.createProduct(this.newProduct.value).subscribe();
    this.success = true
    setTimeout(() => {
      this.success = false
      this.router.navigate(['/tuercas/products'])
    }, 3000);
  }

}
