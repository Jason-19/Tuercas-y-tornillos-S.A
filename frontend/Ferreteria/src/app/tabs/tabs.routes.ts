import { Routes } from '@angular/router';
import { TabsPage } from './tabs.page';

export const routes: Routes = [
  {
    path: 'tuercas',
    component: TabsPage,
    children: [
      {
        path: 'products',
        loadComponent: () =>
          import('../modules/products/pages/products-list/products-list.page').then((m) => m.ProductsListPage),
      },
      {
        path: 'details',
        loadComponent: () =>
          import('../modules/products/pages/products-details/products-details.page').then((m) => m.ProductsDetailsPage),
      },
      {
        path: 'home',
        loadComponent: () =>
          import('../modules/home/home.page').then((m) => m.HomePage),
      },
  
      {
        path: '',
        redirectTo: '/tuercas/home',
        pathMatch: 'full',
      },
    ],
  },
  {
    path: '',
    redirectTo: '/tuercas/home',
    pathMatch: 'full',
  },
];
