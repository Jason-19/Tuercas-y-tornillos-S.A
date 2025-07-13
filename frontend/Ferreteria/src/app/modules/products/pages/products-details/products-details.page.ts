import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule, FormBuilder, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { IonContent, IonHeader, IonTitle, IonToolbar, IonButton, IonBreadcrumb, IonBreadcrumbs, IonIcon } from '@ionic/angular/standalone';
import { ProductsService } from '../../services/products.service';
import { ActivatedRoute } from '@angular/router';

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
    private fb: FormBuilder
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
    console.log(this.newProduct.value); // Verifica que se esté enviando el ID correctamente

    this.productsService.update_product(this.newProduct.value).subscribe({
      next: (data) => {
        this.message = 'Producto actualizado exitosamente';
        this.success = true;
        this.enabled = true;
      },
      error: (error) => {
        console.log(error);
        this.message = 'Error al actualizar el producto';
        this.success = false;
      }
    });

    setTimeout(() => {
      this.success = false;
    }, 3000);
  }
}
