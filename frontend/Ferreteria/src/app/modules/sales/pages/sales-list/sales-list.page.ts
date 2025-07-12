import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { IonContent, IonHeader, IonTitle, IonToolbar,IonBreadcrumb, IonBreadcrumbs,IonIcon} from '@ionic/angular/standalone';

@Component({
  selector: 'app-sales-list',
  templateUrl: './sales-list.page.html',
  // styleUrls: ['./sales-list.page.scss'],
  standalone: true,
  imports: [IonContent, IonHeader, IonTitle, IonToolbar, CommonModule, FormsModule, IonBreadcrumb, IonBreadcrumbs, IonIcon]
})
export class SalesListPage implements OnInit {

  constructor() { }

  ngOnInit() {
  }

  createSale() {
    
  }
}
