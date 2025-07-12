import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { IonContent, IonHeader, IonTitle, IonToolbar ,IonBreadcrumb, IonBreadcrumbs,IonIcon,IonLabel} from '@ionic/angular/standalone';
import { CurrentUserService } from 'src/services/currentUser/current-user.service';
@Component({
  selector: 'app-home',
  templateUrl: './home.page.html',
  standalone: true,
  imports: [IonContent, IonHeader, IonTitle, IonToolbar, CommonModule, FormsModule,IonBreadcrumb, IonBreadcrumbs,IonIcon,IonLabel]
})
export class HomePage implements OnInit {

  currentUser: any = this.currentUserService.getCurrentUserID();
  constructor( 
    private currentUserService: CurrentUserService
  ) { }
  ngOnInit() {
  }

}
