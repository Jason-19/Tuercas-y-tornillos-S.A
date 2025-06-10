# Tuercas y tornillos S.A.
---
El proyecto consiste en el diseño e implementación de un sistema de base de datos para una ferretería que integre las diferentes áreas operativas. 

Este sistema permitirá registrar y controlar todas las transacciones de la tienda, tanto en punto de venta físico como en una eventual tienda en línea, manteniendo actualizados el inventario y las cuentas de clientes y proveedores. 

# Objetivos
---

cada venta reducirá automáticamente el stock, cada compra a proveedor actualizará existencias, y se podrá consultar fácilmente el estado actual del almacén. 

El alcance inicial del proyecto es nacional, aunque el diseño será escalable a otras regiones si se desea. 

En resumen, el proyecto pretende modernizar la gestión de la ferretería, ofrecer información precisa en tiempo real y aumentar la competitividad del negocio en el mercado.

# Alcance
---
* Gestión de ventas al detalle, compras a proveedores, inventario de productos, y registros de clientes y proveedores.
* Se enfocará en las operaciones dentro de Panamá.
* Se empleará el dólar estadounidense como moneda de transacción.
* Para el personal de la ferretería como los vendedores, administrador, gerentes y clientes para consulta de información si aplica.


| Módulo                     | Descripción |
|---------------------------|-------------|
| **Gestión de Inventario** | Control de productos con atributos como nombre, descripción, precio, cantidad en stock, alerta de stock mínimo, unidad de medida, etc. Actualización automática del inventario tras cada venta o compra. |
| **Módulo de Ventas**      | Punto de venta que registre cada transacción (número de venta, fecha, ítems vendidos, cantidades, precio unitario, total). Genera comprobantes (tickets o facturas) y actualiza el stock automáticamente. |
| **Módulo de Compras y Proveedores** | Registro de pedidos y compras a proveedores (número de orden, fecha, productos comprados, cantidades, costo unitario, total). Incrementa inventario. Gestión de proveedores (nombre, contacto, condiciones de pago). |
| **Gestión de Clientes**   | Base de datos de clientes (nombre, contacto, historial de compras). Permite registrar ventas asociadas a clientes identificados o anónimos, útil para fidelización y seguimiento. |
| **Gestión de Usuarios y Roles** | Control de acceso mediante roles (administrador, cajero, almacenista). Los usuarios acceden con credenciales y tienen permisos según su rol. |
| **Reportes y Consultas**  | Generación de reportes dinámicos: ventas diarias/semanales/mensuales, productos más vendidos, niveles de stock, compras por período, ventas por cliente, etc., para apoyar la toma de decisiones y la planificación de compras. |
| **Seguridad y Respaldo**  | Respaldo periódico de la base de datos, protección de la información ante fallos, restricciones de acceso por roles para evitar manipulaciones indebidas. |

