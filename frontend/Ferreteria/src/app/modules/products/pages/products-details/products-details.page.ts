import { Component, OnInit } from '@angular/core';
import { CommonModule, NgIf } from '@angular/common';
import { FormsModule, FormBuilder, FormGroup, ReactiveFormsModule, Validators, } from '@angular/forms';
import { IonContent, IonHeader, IonTitle, IonToolbar, IonButton, IonBreadcrumb, IonBreadcrumbs, IonIcon,IonAlert } from '@ionic/angular/standalone';
import { ProductsService } from '../../services/products.service';
import { ActivatedRoute, Router } from '@angular/router';
@Component({
  selector: 'app-products-details',
  templateUrl: './products-details.page.html',
  styleUrls: [],
  standalone: true,
  imports: [
    IonContent,
    IonHeader,
    IonTitle,
    IonToolbar,
    CommonModule,
    FormsModule,
    IonButton,
    IonBreadcrumb,
    IonBreadcrumbs,
    IonIcon,
    IonAlert,
    ReactiveFormsModule
  ]
})
export class ProductsDetailsPage implements OnInit {
  product: any = {};
  newProduct: FormGroup;
  enabled: boolean = true;
  success: boolean = false;
  message: string = '';
  id: number = 0;

  constructor(
    private productsService: ProductsService,
    private route: ActivatedRoute,
    private fb: FormBuilder,
    private router: Router
  ) {
    this.newProduct = this.fb.group({
      id: [null, [Validators.required]],
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
    });
  }

  ngOnInit() {
    this.route.params.subscribe(params => {
      this.id = +params['id']; // Convertir a número
      this.productsService.detailProduct({ id: this.id }).subscribe({
        next: (data: any) => {
          this.product = data;

          this.newProduct.patchValue({
            id: data.id,
            name: data.name,
            descripcion: data.descripcion,
            price: data.price,
            stock: data.stock,
            idProveedor: data.idProveedor,
            idCategoria: data.idCategoria,
            idSubcategoria: data.idSubcategoria,
            idMarca: data.idMarca,
            idUnidad: data.idUnidad,
            imageUrl: data.imageUrl,
          });
        },
        error: (error) => {
          console.log(error);
          this.message = "Error al obtener el producto";
        }
      });
    });

  }
  editProduct() {
    this.enabled = false;
  }
  updateProduct() {
    this.productsService.update_product(this.newProduct.value).subscribe(
      (data) => {
        this.enabled = true;
        this.message = 'Producto actualizado exitosamente';
        this.success = true;

        setTimeout(() => {
          this.success = false;
        }, 3000);
      },
      (error) => {
        console.log(error);
        this.message = 'Error al actualizar el producto';
        this.success = true;


      }

    ); setTimeout(() => {
      this.success = false;
    }, 3000);
  }

  // Eliminar Producto
  deleteProduct() {
    this.productsService.deleteProduct(this.id).subscribe({
      next: (data) => {
        this.success = true
        this.message = 'Producto eliminado exitosamente';
        setTimeout(() => {
          this.router.navigate(['/tuercas/products']);  
        }, 1500);
      },
      error: (error) => {
        this.message = 'Error al eliminar el producto';
      }
    });
  }

   public alertButtons = [
    {
      text: 'Cancel',
      role: 'cancel',
      handler: () => {
      },
    },
    {
      text: 'OK',
      role: 'confirm',
      handler: () => {
        this.deleteProduct();
      },
    },
  ];

}
