
/* 
* Entregale II 
* Grupo 15
* Base de datos para una Ferreteria
* Tuercas y Tornillos S.A
* Oracle 19c 
* @version 1.0
*/

CREATE TABLE TORNILLOS.TORNILLOS.Pais (
    idPais NUMBER PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL
);
INSERT INTO Pais (idPais, nombre) VALUES (1, 'PANAMA');


CREATE TABLE TORNILLOS.Provincia (
    idProvincia NUMBER PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    idPais NUMBER REFERENCES Pais(idPais)
);

CREATE TABLE TORNILLOS.Distrito (
    idDistrito NUMBER PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    idProvincia NUMBER REFERENCES Provincia(idProvincia)
);

CREATE TABLE TORNILLOS.Cliente (
    idCliente NUMBER PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    telefono VARCHAR2(20),
    email VARCHAR2(100)
);

CREATE TABLE TORNILLOS.DireccionCliente (
    idDireccion NUMBER PRIMARY KEY,
    idCliente NUMBER REFERENCES Cliente(idCliente),
    descripcion VARCHAR2(150),
    idDistrito NUMBER REFERENCES Distrito(idDistrito),
    calle VARCHAR2(100),
    referencia VARCHAR2(150),
    codigoPostal VARCHAR2(10)
);

CREATE TABLE TORNILLOS.Proveedor (
    idProveedor NUMBER PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    contacto VARCHAR2(100),
    idDireccion NUMBER
);

CREATE TABLE TORNILLOS.DireccionProveedor (
    idDireccion NUMBER PRIMARY KEY,
    idProveedor NUMBER REFERENCES Proveedor(idProveedor),
    descripcion VARCHAR2(150),
    idDistrito NUMBER REFERENCES Distrito(idDistrito),
    calle VARCHAR2(100),
    referencia VARCHAR2(150),
    codigoPostal VARCHAR2(10)
);

CREATE TABLE TORNILLOS.RolUsuario (
    idRol NUMBER PRIMARY KEY,
    nombre VARCHAR2(50) NOT NULL
);

CREATE TABLE TORNILLOS.Usuario (
    idUsuario NUMBER PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    idRol NUMBER REFERENCES RolUsuario(idRol),
    email VARCHAR2(100),
    contrasena VARCHAR2(100)
);

CREATE TABLE TORNILLOS.PermisoUsuario (
    idPermiso NUMBER PRIMARY KEY,
    idRol NUMBER REFERENCES RolUsuario(idRol),
    permiso VARCHAR2(100)
);

CREATE TABLE TORNILLOS.CategoriaProducto (
    idCategoria NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    descripcion VARCHAR2(150)
);

CREATE TABLE TORNILLOS.SubcategoriaProducto (
    idSubcategoria NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    idCategoria NUMBER REFERENCES CategoriaProducto(idCategoria)
);

CREATE TABLE TORNILLOS.MarcaProducto (
    idMarca NUMBER PRIMARY KEY,
    nombre VARCHAR2(100)
);

CREATE TABLE TORNILLOS.UnidadMedida (
    idUnidad NUMBER PRIMARY KEY,
    nombre VARCHAR2(50)
);

CREATE TABLE TORNILLOS.Producto (
    idProducto NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    descripcion VARCHAR2(150),
    precioUnitario NUMBER(10,2),
    cantidadStock NUMBER,
    idProveedor NUMBER REFERENCES Proveedor(idProveedor),
    idCategoria NUMBER REFERENCES CategoriaProducto(idCategoria),
    idSubcategoria NUMBER REFERENCES SubcategoriaProducto(idSubcategoria),
    idMarca NUMBER REFERENCES MarcaProducto(idMarca),
    idUnidad NUMBER REFERENCES UnidadMedida(idUnidad)
);

CREATE TABLE TORNILLOS.PrecioProducto (
    idPrecio NUMBER PRIMARY KEY,
    idProducto NUMBER REFERENCES Producto(idProducto),
    fechaInicio DATE,
    fechaFin DATE,
    precio NUMBER(10,2)
);

CREATE TABLE TORNILLOS.PrecioProductoHistorial (
    idHistorial NUMBER PRIMARY KEY,
    idProducto NUMBER REFERENCES Producto(idProducto),
    precioAnterior NUMBER(10,2),
    precioNuevo NUMBER(10,2),
    fechaCambio DATE
);

CREATE TABLE TORNILLOS.HistorialStock (
    idHistorial NUMBER PRIMARY KEY,
    idProducto NUMBER REFERENCES Producto(idProducto),
    fecha DATE,
    cantidad NUMBER,
    tipoMovimiento VARCHAR2(50),
    motivo VARCHAR2(150)
);

CREATE TABLE TORNILLOS.Venta (
    idVenta NUMBER PRIMARY KEY,
    fecha DATE,
    total NUMBER(10,2),
    idCliente NUMBER REFERENCES Cliente(idCliente),
    idUsuario NUMBER REFERENCES Usuario(idUsuario)
);

CREATE TABLE TORNILLOS.DetalleVenta (
    idDetalleVenta NUMBER PRIMARY KEY,
    idVenta NUMBER REFERENCES Venta(idVenta),
    idProducto NUMBER REFERENCES Producto(idProducto),
    cantidad NUMBER,
    precioUnitario NUMBER(10,2)
);

CREATE TABLE TORNILLOS.Compra (
    idCompra NUMBER PRIMARY KEY,
    fecha DATE,
    total NUMBER(10,2),
    idProveedor NUMBER REFERENCES Proveedor(idProveedor),
    idUsuario NUMBER REFERENCES Usuario(idUsuario)
);

CREATE TABLE TORNILLOS.DetalleCompra (
    idDetalleCompra NUMBER PRIMARY KEY,
    idCompra NUMBER REFERENCES Compra(idCompra),
    idProducto NUMBER REFERENCES Producto(idProducto),
    cantidad NUMBER,
    costoUnitario NUMBER(10,2)
);

CREATE TABLE TORNILLOS.MetodoPago (
    idMetodo NUMBER PRIMARY KEY,
    nombre VARCHAR2(100)
);

CREATE TABLE TORNILLOS.PagoVenta (
    idPago NUMBER PRIMARY KEY,
    idVenta NUMBER REFERENCES Venta(idVenta),
    idMetodoPago NUMBER REFERENCES MetodoPago(idMetodo),
    monto NUMBER(10,2),
    fecha DATE
);

CREATE TABLE TORNILLOS.PagoCompra (
    idPago NUMBER PRIMARY KEY,
    idCompra NUMBER REFERENCES Compra(idCompra),
    idMetodoPago NUMBER REFERENCES MetodoPago(idMetodo),
    monto NUMBER(10,2),
    fecha DATE
);

CREATE TABLE TORNILLOS.DevolucionVenta (
    idDevolucion NUMBER PRIMARY KEY,
    idVenta NUMBER REFERENCES Venta(idVenta),
    fecha DATE,
    motivo VARCHAR2(150)
);

CREATE TABLE TORNILLOS.DetalleDevolucionVenta (
    idDetalle NUMBER PRIMARY KEY,
    idDevolucion NUMBER REFERENCES DevolucionVenta(idDevolucion),
    idProducto NUMBER REFERENCES Producto(idProducto),
    cantidad NUMBER,
    motivo VARCHAR2(150)
);

CREATE TABLE TORNILLOS.DevolucionCompra (
    idDevolucion NUMBER PRIMARY KEY,
    idCompra NUMBER REFERENCES Compra(idCompra),
    fecha DATE,
    motivo VARCHAR2(150)
);

CREATE TABLE TORNILLOS.DetalleDevolucionCompra (
    idDetalle NUMBER PRIMARY KEY,
    idDevolucion NUMBER REFERENCES DevolucionCompra(idDevolucion),
    idProducto NUMBER REFERENCES Producto(idProducto),
    cantidad NUMBER,
    motivo VARCHAR2(150)
);

CREATE TABLE TORNILLOS.HistorialCliente (
    idHistorial NUMBER PRIMARY KEY,
    idCliente NUMBER REFERENCES Cliente(idCliente),
    fecha DATE,
    actividad VARCHAR2(150)
);

CREATE TABLE TORNILLOS.Sucursal (
    idSucursal NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    idDireccion NUMBER
);

CREATE TABLE TORNILLOS.DireccionSucursal (
    idDireccion NUMBER PRIMARY KEY,
    idSucursal NUMBER REFERENCES Sucursal(idSucursal),
    descripcion VARCHAR2(150),
    idDistrito NUMBER REFERENCES Distrito(idDistrito),
    calle VARCHAR2(100),
    referencia VARCHAR2(150),
    codigoPostal VARCHAR2(10)
);

CREATE TABLE TORNILLOS.Empleado (
    idEmpleado NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    puesto VARCHAR2(100),
    salario NUMBER(10,2),
    fechaIngreso DATE,
    idSucursal NUMBER REFERENCES Sucursal(idSucursal),
    idUsuario NUMBER REFERENCES Usuario(idUsuario)
);

CREATE TABLE TORNILLOS.HorarioEmpleado (
    idHorario NUMBER PRIMARY KEY,
    idEmpleado NUMBER REFERENCES Empleado(idEmpleado),
    diaSemana VARCHAR2(15),
    horaInicio VARCHAR2(5),
    horaFin VARCHAR2(5)
);

CREATE TABLE TORNILLOS.InventarioSucursal (
    idInventario NUMBER PRIMARY KEY,
    idSucursal NUMBER REFERENCES Sucursal(idSucursal),
    idProducto NUMBER REFERENCES Producto(idProducto),
    stock NUMBER
);

CREATE TABLE TORNILLOS.TransferenciaStock (
    idTransferencia NUMBER PRIMARY KEY,
    idSucursalOrigen NUMBER REFERENCES Sucursal(idSucursal),
    idSucursalDestino NUMBER REFERENCES Sucursal(idSucursal),
    fecha DATE
);

CREATE TABLE TORNILLOS.DetalleTransferencia (
    idDetalle NUMBER PRIMARY KEY,
    idTransferencia NUMBER REFERENCES TransferenciaStock(idTransferencia),
    idProducto NUMBER REFERENCES Producto(idProducto),
    cantidad NUMBER
);

CREATE TABLE TORNILLOS.CuentaPorCobrar (
    idCuenta NUMBER PRIMARY KEY,
    idCliente NUMBER REFERENCES Cliente(idCliente),
    monto NUMBER(10,2),
    fecha DATE,
    estado VARCHAR2(50)
);

CREATE TABLE TORNILLOS.CuentaPorPagar (
    idCuenta NUMBER PRIMARY KEY,
    idProveedor NUMBER REFERENCES Proveedor(idProveedor),
    monto NUMBER(10,2),
    fecha DATE,
    estado VARCHAR2(50)
);

CREATE TABLE TORNILLOS.Caja (
    idCaja NUMBER PRIMARY KEY,
    idSucursal NUMBER REFERENCES Sucursal(idSucursal),
    estado VARCHAR2(20),
    fondoInicial NUMBER(10,2)
);

CREATE TABLE TORNILLOS.MovimientoCaja (
    idMovimiento NUMBER PRIMARY KEY,
    idCaja NUMBER REFERENCES Caja(idCaja),
    tipo VARCHAR2(10),
    monto NUMBER(10,2),
    concepto VARCHAR2(100),
    fecha DATE
);

CREATE TABLE TORNILLOS.Promocion (
    idPromo NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    descripcion VARCHAR2(150),
    fechaInicio DATE,
    fechaFin DATE
);

CREATE TABLE TORNILLOS.ProductoPromocion (
    id NUMBER PRIMARY KEY,
    idPromocion NUMBER REFERENCES Promocion(idPromo),
    idProducto NUMBER REFERENCES Producto(idProducto),
    descuento NUMBER(5,2)
);

CREATE TABLE TORNILLOS.PuntosCliente (
    idPunto NUMBER PRIMARY KEY,
    idCliente NUMBER REFERENCES Cliente(idCliente),
    puntos NUMBER,
    fecha DATE
);

CREATE TABLE TORNILLOS.AuditoriaSistema (
    idAuditoria NUMBER PRIMARY KEY,
    tabla VARCHAR2(100),
    accion VARCHAR2(50),
    usuario VARCHAR2(100),
    fecha DATE
);

CREATE TABLE TORNILLOS.LogErrores (
    idError NUMBER PRIMARY KEY,
    mensaje VARCHAR2(300),
    fecha DATE,
    modulo VARCHAR2(100)
);

CREATE TABLE TORNILLOS.BitacoraAccesos (
    idAcceso NUMBER PRIMARY KEY,
    idUsuario NUMBER REFERENCES Usuario(idUsuario),
    fecha DATE,
    ip VARCHAR2(50),
    accion VARCHAR2(100)
);

CREATE TABLE TORNILLOS.TicketSoporte (
    idTicket NUMBER PRIMARY KEY,
    idUsuario NUMBER REFERENCES Usuario(idUsuario),
    asunto VARCHAR2(100),
    descripcion VARCHAR2(300),
    estado VARCHAR2(50),
    fecha DATE
);
