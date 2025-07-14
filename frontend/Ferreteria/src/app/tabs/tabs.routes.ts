import { Routes } from '@angular/router';
import { TabsPage } from './tabs.page';
import { authGuard } from '../core/guards/auth.guard';

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
        path: 'products/details/:id',
        loadComponent: () =>
          import('../modules/products/pages/products-details/products-details.page').then((m) => m.ProductsDetailsPage),
      },
      {
        path: 'products/card/:id',
        loadComponent: () => import('../modules/products/components/produts-card/produts-card.component').then( m => m.ProdutsCardComponent)
      },
      {
        path: 'products/create',
        loadComponent: () =>
          import('../modules/products/components/produts-form/produts-form.component').then((m) => m.ProdutsFormComponent),
      },
      {   
        path: 'supplier/create',
        loadComponent: () =>
          import('../modules/provider/pages/provider-form/provider-form.component').then((m) => m.ProviderFormComponent),
      },
      {
        path: 'inventario/list',
        loadComponent: () => import('../modules/inventario/pages/inventario-list/inventario-list.page').then(m => m.InventarioListPage)
      },
      {
        path: 'customer/list',
        loadComponent: () => import('../modules/customers/pages/customer-list/customer-list.page').then(m => m.CustomerListPage)
      },
      {
        path: 'customer/card',
        loadComponent: () => import('../modules/customers/pages/customer-card/customer-card.page').then(m => m.CustomerCardPage)
      },
      {
        path: 'customer/create',
        loadComponent: () => import('../modules/customers/components/customer-form/customer-form.component').then(m => m.CustomerFormComponent)
      },
      {
        path: 'sales/list',
        loadComponent: () => import('../modules/sales/pages/sales-list/sales-list.page').then(m => m.SalesListPage)
      },
      {
        path: 'users/list',
        loadComponent: () => import('../modules/users/pages/users-list/users-list').then(m => m.CustomerListPage),
        canActivate: [authGuard],
        data: { role: 'Administrador' }
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
    ]
  },
  {
    path: '',
    redirectTo: '/login',
    pathMatch: 'full',
  },
];
