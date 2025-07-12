import { addIcons } from 'ionicons';
import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule, FormBuilder, FormGroup, ReactiveFormsModule, Validators,} from '@angular/forms';
import { IonContent,IonItem,IonLabel,IonInput,IonButton,IonGrid,IonRow,IonCol,IonCard,IonCardContent,IonCardHeader,IonCardTitle,IonCheckbox } from '@ionic/angular/standalone';
import { Router } from "@angular/router"
import { CurrentUserService } from 'src/services/currentUser/current-user.service';
import { AuthService } from 'src/services/auth/auth.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.page.html',
  standalone: true,
  imports: [IonContent,CommonModule, FormsModule,ReactiveFormsModule,
    IonItem,IonLabel,IonInput,IonButton,IonGrid,IonRow,IonCol,IonCard,IonCardContent,
    IonCardHeader,IonCardTitle,IonCheckbox
  ]
})
export class LoginPage implements OnInit {
  loginForm: FormGroup;
  constructor(
    private fb: FormBuilder,
    private router: Router,
    private currentUserService: CurrentUserService,
    private authService: AuthService
  ) { 
    this.loginForm = this.fb.group({
      username: ["", [Validators.required]],
      password: ["", [Validators.required]]
    })
  }

  ngOnInit() {

  }

  login(){
    // if (this.loginForm.invalid) {
    //   return
    // }

    const { username, password }  = this.loginForm.value
    console.log(username, password);


      if (this.authService.login(this.loginForm.value).subscribe({
        next: (response: any) => {
          if (response.token) {
            this.currentUserService.setJWT(response.token)
            this.router.navigate(['/tuercas/home'])
          }
        },
        error: (error) => {
          console.error('Error al obtener los productos:', error);
        }
      })) {
    
    }
  } 
}
