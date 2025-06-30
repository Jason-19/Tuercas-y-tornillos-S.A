import { Routes } from '@angular/router';

export const routes: Routes = [
  {
    path: '',
    loadChildren: () => import('./tabs/tabs.routes').then((m) => m.routes),
  },
  {
    path: 'login',
    loadComponent: () => import('./auth/login/login.page').then( m => m.LoginPage)
  },
  {
    path: 'register',
    loadComponent: () => import('./auth/register/register.page').then( m => m.RegisterPage)
  },
  // {
  //   path: 'products-list',
  //   loadComponent: () => import('./modules/products/pages/products-list/products-list.page').then( m => m.ProductsListPage)
  // },
  // {
  //   path: 'products-details',
  //   // loadComponent: () => import('./modules/products/pages/products-details/products-details.page').then( m => m.ProductsDetailsPage)
  // }

];
