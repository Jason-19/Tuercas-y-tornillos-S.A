import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule, FormBuilder, FormGroup, ReactiveFormsModule, Validators, } from '@angular/forms';
import { IonContent, IonHeader, IonTitle, IonToolbar, IonBackButton, IonButtons, IonBreadcrumb, IonBreadcrumbs, IonIcon, IonButton, IonList, IonItem, IonLabel, IonBadge, IonAvatar } from '@ionic/angular/standalone';
import { UserService } from '../../services/UserService.service';

type User = {
  id: number;
  username: string;
  email: string;
  role: {
    id: number;
    name: string;
  };
}

@Component({
  selector: 'app-users-list',
  templateUrl: './users-list.page.html',
  standalone: true,
  imports: [IonContent, IonHeader, IonTitle, IonToolbar, CommonModule, FormsModule, IonBackButton, IonButtons, IonBreadcrumb, IonBreadcrumbs, IonIcon, IonButton, IonList, IonItem, IonLabel, IonBadge, IonAvatar, ReactiveFormsModule, IonBadge, IonAvatar]
})


export class CustomerListPage implements OnInit {

  newUser: FormGroup;
  filtroRolId: number | null = null;
  isModalOpen = false;
  usuarioSeleccionado: any = null;
  success = false;

  roles = [
    { id: 1, name: 'Administrador' },
    { id: 2, name: 'Gerente' },
    { id: 3, name: 'Vendedor' },
    { id: 4, name: 'Bodeguero' },
    { id: 5, name: 'Cajero' },
    { id: 7, name: 'Soporte Tecnico' },
  ];

  usuarios: User[] = [];
  constructor(
    private fb: FormBuilder,
    private userService: UserService
  ) {
    this.newUser = this.fb.group({
      name: ['', Validators.required],
      email: ['', [Validators.required, Validators.email]],
      username: ['', Validators.required],
      password: ['', Validators.required],
      role: ['', Validators.required]
    });
    

  }
  ngOnInit() {
    this.userService.getUsers({}).subscribe(data => {
      this.usuarios = data;
    })
  }

  createUser() {
    const form= this.newUser.value
    const role = this.roles.find(r => r.id == form.roleId);

    const userToSend = {
      name: form.name,
      email: form.email,
      username: form.username,
      password: form.password,
      role: {
        id: role?.id,
        name: role?.name
      }
    };

    this.userService.createUser(userToSend).subscribe(data => {
      this.success = true;
      this.userService.getUsers({}).subscribe(data => {
        this.usuarios = data;
      })
    })
  }

  usuariosFiltrados() {
    if (!this.filtroRolId) return this.usuarios;
    return this.usuarios.filter(u => u.role.id === this.filtroRolId);
  }
  setOpen(isOpen: boolean) {
    this.isModalOpen = isOpen;
  }
}
