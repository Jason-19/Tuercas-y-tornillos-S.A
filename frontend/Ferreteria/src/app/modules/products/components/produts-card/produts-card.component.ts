import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { IonHeader, IonToolbar, IonBreadcrumb, IonBreadcrumbs, IonTitle, IonContent, IonIcon, IonButton, IonInput, IonCol, IonGrid, IonItem, IonButtons, IonImg, IonRow } from '@ionic/angular/standalone';
import { ProductsService } from '../../services/products.service';
import { ActivatedRoute } from '@angular/router';
@Component({
  selector: 'app-produts-card',
  templateUrl: './produts-card.component.html',
  standalone: true,
  imports: [CommonModule, IonHeader, IonToolbar, IonBreadcrumb, IonBreadcrumbs,
    IonTitle, IonContent, IonIcon, IonButton, IonInput, IonCol, IonGrid, IonItem, IonButtons, IonImg, IonRow],
})
export class ProdutsCardComponent implements OnInit {

  product: any = {};
  cantidad: number = 0;
  constructor(
    private productsService: ProductsService,
    private route: ActivatedRoute
  ) { }

  ngOnInit() {
    this.get_detail_card_product()
  }

  get_detail_card_product() {
    this.route.params.subscribe(params => {

      this.productsService.detailProduct({ "id": params['id'] }).subscribe(data => {
        this.product = data
      });
    })
  }
  decrement() {
    if (this.cantidad > 0) this.cantidad--;
  }

  increment() {
    this.cantidad++;
  }

  buy() {
    if (this.cantidad > this.product.stock) {
      alert("No hay stock suficiente")
    } else {
      alert("Producto comprado")
      console.log(this.product)

    }
  }
}
