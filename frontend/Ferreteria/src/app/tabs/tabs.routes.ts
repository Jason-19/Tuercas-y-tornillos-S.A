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
        path: 'products/details/:id',
        loadComponent: () =>
          import('../modules/products/pages/products-details/products-details.page').then((m) => m.ProductsDetailsPage),
      },
      {
        path: 'products/create',
        loadComponent: () =>
          import('../modules/products/components/produts-form/produts-form.component').then((m) => m.ProdutsFormComponent),
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
        path: 'customer/register',
        loadComponent: () => import('../modules/customers/pages/customer-register/customer-register.page').then(m => m.CustomerRegisterPage)
      },
      {
        path: 'sales/list',
        loadComponent: () => import('../modules/sales/pages/sales-list/sales-list.page').then(m => m.SalesListPage)
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
    redirectTo: '/tuercas/home',
    pathMatch: 'full',
  },
];
