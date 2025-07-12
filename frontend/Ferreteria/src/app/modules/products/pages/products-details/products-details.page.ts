import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { IonContent, IonHeader, IonTitle, IonToolbar, IonButton,IonBreadcrumb, IonBreadcrumbs,IonIcon} from '@ionic/angular/standalone';
import { ProductsService } from '../../services/products.service';
import { ActivatedRoute } from '@angular/router';
@Component({
  selector: 'app-products-details',
  templateUrl: './products-details.page.html',
  styleUrls: [],
  standalone: true,
  imports: [IonContent, IonHeader, IonTitle, IonToolbar, CommonModule, FormsModule, IonButton, IonBreadcrumb, IonBreadcrumbs,IonIcon]
})
export class ProductsDetailsPage implements OnInit {
  product: any = {};
  constructor(
    private productsService: ProductsService,
    private route: ActivatedRoute

  ) { }

  ngOnInit() {
   this.get_detail();
  }
  get_detail() {
    this.route.params.subscribe(params => {

      this.productsService.detailProduct({"id":params['id']}).subscribe(data => {
        this.product = data
      });
    })
  }

}
