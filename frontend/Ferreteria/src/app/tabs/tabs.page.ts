import { Component, EnvironmentInjector, inject } from '@angular/core';
import { IonTabs, IonTabBar, IonTabButton, IonIcon, IonLabel} from '@ionic/angular/standalone';
import { RouterLink } from '@angular/router';
import { NgIf } from '@angular/common';
import { CurrentUserService } from 'src/services/currentUser/current-user.service';

@Component({
  selector: 'app-tabs',
  templateUrl: 'tabs.page.html',
  styleUrls: ['tabs.page.scss'],
  imports: [IonTabs, IonTabBar, IonTabButton, IonLabel,RouterLink, IonIcon, NgIf],
})
export class TabsPage {
  public environmentInjector = inject(EnvironmentInjector);
  public userLoggedIn : boolean = true;
  constructor(
    public currentUserService: CurrentUserService
  ) {
  }
}
