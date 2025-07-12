import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { IonicModule } from '@ionic/angular';
import { RouterModule } from '@angular/router';
@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss'],
  standalone: true, 
  imports: [CommonModule, IonicModule, RouterModule]
})
export class HeaderComponent  implements OnInit {

  constructor() { }

  ngOnInit() {}

}
