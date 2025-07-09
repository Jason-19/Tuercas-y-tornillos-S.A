import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { IonContent, IonHeader, IonTitle, IonToolbar, IonButton } from '@ionic/angular/standalone';

@Component({
  selector: 'app-customer-register',
  templateUrl: './customer-register.page.html',
  styleUrls: ['./customer-register.page.scss'],
  standalone: true,
  imports: [IonContent, IonHeader, IonTitle, IonToolbar, CommonModule, FormsModule, IonButton]
})
export class CustomerRegisterPage implements OnInit {

  constructor() { }

  ngOnInit() {
  }

}
