/* 
Producto	
idProducto (PK), nombre, descripción, precioUnitario, cantidadStock, idProveedor (FK), idCategoria (FK), idSubcategoria (FK), idMarca (FK), idUnidad (FK)
Cliente	idCliente (PK), nombre, teléfono, email
DireccionCliente	idDireccion (PK), idCliente (FK), descripcion, idDistrito (FK), calle, referencia, codigoPostal
Proveedor	idProveedor (PK), nombre, contacto, idDireccion (FK)
DireccionProveedor	idDireccion (PK), idProveedor (FK), descripcion, idDistrito (FK), calle, referencia, codigoPostal
Usuario	idUsuario (PK), nombre, idRol (FK), email, contraseña
RolUsuario	idRol (PK), nombre
PermisoUsuario	idPermiso (PK), idRol (FK), permiso
Venta	idVenta (PK), fecha, total, idCliente (FK), idUsuario (FK)
DetalleVenta	idDetalleVenta (PK), idVenta (FK), idProducto (FK), cantidad, precioUnitario
Compra	idCompra (PK), fecha, total, idProveedor (FK), idUsuario (FK)
DetalleCompra	idDetalleCompra (PK), idCompra (FK), idProducto (FK), cantidad, costoUnitario
CategoriaProducto	idCategoria (PK), nombre, descripcion
SubcategoriaProducto	idSubcategoria (PK), nombre, idCategoria (FK)
MarcaProducto	idMarca (PK), nombre
UnidadMedida	idUnidad (PK), nombre
PrecioProducto	idPrecio (PK), idProducto (FK), fechaInicio, fechaFin, precio
HistorialStock	idHistorial (PK), idProducto (FK), fecha, cantidad, tipoMovimiento, motivo
MetodoPago	idMetodo (PK), nombre
PagoVenta	idPago (PK), idVenta (FK), idMetodoPago (FK), monto, fecha
PagoCompra	idPago (PK), idCompra (FK), idMetodoPago (FK), monto, fecha
DevolucionVenta	idDevolucion (PK), idVenta (FK), fecha, motivo
DetalleDevolucionVenta	idDetalle (PK), idDevolucion (FK), idProducto (FK), cantidad, motivo
DevolucionCompra	idDevolucion (PK), idCompra (FK), fecha, motivo
DetalleDevolucionCompra	idDetalle (PK), idDevolucion (FK), idProducto (FK), cantidad, motivo
HistorialCliente	idHistorial (PK), idCliente (FK), fecha, actividad
Empleado	idEmpleado (PK), nombre, puesto, salario, fechaIngreso, idSucursal (FK), idUsuario (FK)
HorarioEmpleado	idHorario (PK), idEmpleado (FK), diaSemana, horaInicio, horaFin
Sucursal	idSucursal (PK), nombre, idDireccion (FK)
DireccionSucursal	idDireccion (PK), idSucursal (FK), descripcion, idDistrito (FK), calle, referencia, codigoPostal
InventarioSucursal	idInventario (PK), idSucursal (FK), idProducto (FK), stock
TransferenciaStock	idTransferencia (PK), idSucursalOrigen (FK), idSucursalDestino (FK), fecha
DetalleTransferencia	idDetalle (PK), idTransferencia (FK), idProducto (FK), cantidad
CuentaPorCobrar	idCuenta (PK), idCliente (FK), monto, fecha, estado
CuentaPorPagar	idCuenta (PK), idProveedor (FK), monto, fecha, estado
Caja	idCaja (PK), idSucursal (FK), estado, fondoInicial
MovimientoCaja	idMovimiento (PK), idCaja (FK), tipo (ingreso/egreso), monto, concepto, fecha
Promocion	idPromo (PK), nombre, descripcion, fechaInicio, fechaFin
ProductoPromocion	id (PK), idPromocion (FK), idProducto (FK), descuento
PuntosCliente	idPunto (PK), idCliente (FK), puntos, fecha
PrecioProductoHistorial	idHistorial (PK), idProducto (FK), precioAnterior, precioNuevo, fechaCambio
AuditoriaSistema	idAuditoria (PK), tabla, accion, usuario, fecha
LogErrores	idError (PK), mensaje, fecha, modulo
BitacoraAccesos	idAcceso (PK), idUsuario (FK), fecha, ip, accion
TicketSoporte	idTicket (PK), idUsuario (FK), asunto, descripcion, estado, fecha
Pais	idPais (PK), nombre
Provincia	idProvincia (PK), nombre, idPais (FK)
Distrito	idDistrito (PK), nombre, idProvincia (FK)


 */


/* Table: PRODUCTS */
CREATE TABLE TORNILLOS.PRODUCTS (
    idProduct NUMBER PRIMARY KEY NOT NULL,
    name VARCHAR2(50) NOT NULL,
    price NUMBER NOT NULL,
    stock NUMBER NOT NULL,
    created_at VARCHAR2(20) DEFAULT SYSDATE NOT NULL,
    updated_at VARCHAR2(20) DEFAULT SYSDATE NOT NULL
) 

/* Table: CATEGORIES */
CREATE TABLE TORNILLOS.CATEGORIES (
    idCategory NUMBER PRIMARY KEY NOT NULL,
    name VARCHAR2(10) NOT NULL,
    created_at VARCHAR2(20) DEFAULT SYSDATE NOT NULL,
    updated_at VARCHAR2(20) DEFAULT SYSDATE NOT NULL
)
/*  Table: CUSTOMERS */
CREATE TABLE TORNILLOS.CUSTOMERS (
    idCustomer NUMBER PRIMARY KEY NOT NULL,
    name VARCHAR2(10) NOT NULL,
    email VARCHAR2(30) NOT NULL,
    phone VARCHAR2(10) NOT NULL,
    address VARCHAR2(30) NOT NULL,
    created_at VARCHAR2(20) DEFAULT SYSDATE NOT NULL,
    updated_at VARCHAR2(20) DEFAULT SYSDATE NOT NULL
)
/* Insert */


/*  Table: EMPLOYEES */
CREATE TABLE TORNILLOS.EMPLOYEES (
    idEmployee NUMBER NOT NULL PRIMARY KEY,
    name VARCHAR2(10) NOT NULL,
    passwor_hash VARCHAR2(10) NOT NULL,
    role VARCHAR2(10) NOT NULL,
    email VARCHAR2(30) NOT NULL,
    phone VARCHAR2(10) NOT NULL,
    created_at VARCHAR2(20) DEFAULT SYSDATE NOT NULL,
    updated_at VARCHAR2(20) DEFAULT SYSDATE NOT NULL
)


/*  Table: SALES */
CREATE TABLE TORNILLOS.SALES (
    idSales NUMBER NOT NULL PRIMARY KEY,
    saleDate VARCHAR2(20) NOT NULL,
    total NUMBER NOT NULL,
    idCustomer NUMBER NOT NULL,
    idEmployee NUMBER NOT NULL,
    created_at VARCHAR2(20) DEFAULT SYSDATE NOT NULL,
    updated_at VARCHAR2(20) DEFAULT SYSDATE NOT NULL,

   FOREIGN KEY (idCustomer) REFERENCES TORNILLOS.CUSTOMERS (idCustomer),
   FOREIGN KEY (idEmployee) REFERENCES TORNILLOS.EMPLOYEES (idEmployee)
);

