-- Active: 1751788651100@@127.0.0.1@1521@ORCL@TORNILLOS
INSERT INTO
    TORNILLOS.CLIENTE (IDCLIENTE,NOMBRE,EMAIL,TELEFONO)
VALUES (1,'John Doe','john@example.com','1234567890');

-- Pais
INSERT INTO TORNILLOS.Pais (idPais, nombre) VALUES (1, 'Costa Rica');
INSERT INTO TORNILLOS.Pais (idPais, nombre) VALUES (2, 'Nicaragua');
INSERT INTO TORNILLOS.Pais (idPais, nombre) VALUES (3, 'Panamá');
INSERT INTO TORNILLOS.Pais (idPais, nombre) VALUES (4, 'Estados Unidos');
INSERT INTO TORNILLOS.Pais (idPais, nombre) VALUES (5, 'China');
INSERT INTO TORNILLOS.Pais (idPais, nombre) VALUES (6, 'Alemania');
INSERT INTO TORNILLOS.Pais (idPais, nombre) VALUES (7, 'México');
INSERT INTO TORNILLOS.Pais (idPais, nombre) VALUES (8, 'Colombia');
INSERT INTO TORNILLOS.Pais (idPais, nombre) VALUES (9, 'Brasil');
INSERT INTO TORNILLOS.Pais (idPais, nombre) VALUES (10, 'España');

-- Provincias de Panamá
INSERT INTO TORNILLOS.Provincia (idProvincia, nombre, idPais) VALUES (1, 'Bocas del Toro', 3);
INSERT INTO TORNILLOS.Provincia (idProvincia, nombre, idPais) VALUES (2, 'Coclé', 3);
INSERT INTO TORNILLOS.Provincia (idProvincia, nombre, idPais) VALUES (3, 'Colón', 3);
INSERT INTO TORNILLOS.Provincia (idProvincia, nombre, idPais) VALUES (4, 'Chiriquí', 3);
INSERT INTO TORNILLOS.Provincia (idProvincia, nombre, idPais) VALUES (5, 'Darién', 3);
INSERT INTO TORNILLOS.Provincia (idProvincia, nombre, idPais) VALUES (6, 'Herrera', 3);
INSERT INTO TORNILLOS.Provincia (idProvincia, nombre, idPais) VALUES (7, 'Los Santos', 3);
INSERT INTO TORNILLOS.Provincia (idProvincia, nombre, idPais) VALUES (8, 'Panamá', 3);
INSERT INTO TORNILLOS.Provincia (idProvincia, nombre, idPais) VALUES (9, 'Panamá Oeste', 3);
INSERT INTO TORNILLOS.Provincia (idProvincia, nombre, idPais) VALUES (10, 'Veraguas', 3);
INSERT INTO TORNILLOS.Provincia (idProvincia, nombre, idPais) VALUES (11, 'Emberá-Wounaan', 3);
INSERT INTO TORNILLOS.Provincia (idProvincia, nombre, idPais) VALUES (12, 'Guna Yala', 3);
INSERT INTO TORNILLOS.Provincia (idProvincia, nombre, idPais) VALUES (13, 'Ngäbe-Buglé', 3);


-- Distrito
INSERT INTO TORNILLOS.Distrito (idDistrito, nombre, idProvincia) VALUES (1, 'Panamá', 9);
INSERT INTO TORNILLOS.Distrito (idDistrito, nombre, idProvincia) VALUES (2, 'San Miguelito', 9);
INSERT INTO TORNILLOS.Distrito (idDistrito, nombre, idProvincia) VALUES (3, 'Taboga', 9);
INSERT INTO TORNILLOS.Distrito (idDistrito, nombre, idProvincia) VALUES (4, 'Chepo', 9);
INSERT INTO TORNILLOS.Distrito (idDistrito, nombre, idProvincia) VALUES (5, 'Chimán', 9);
INSERT INTO TORNILLOS.Distrito (idDistrito, nombre, idProvincia) VALUES (6, 'Balboa', 9);
INSERT INTO TORNILLOS.Distrito (idDistrito, nombre, idProvincia) VALUES (7, 'Brujas', 9);

-- Insertar distritos de otras provincias (ejemplo con Panamá Oeste)
INSERT INTO TORNILLOS.Distrito (idDistrito, nombre, idProvincia) VALUES (8, 'Arraiján', 8);
INSERT INTO TORNILLOS.Distrito (idDistrito, nombre, idProvincia) VALUES (9, 'Capira', 8);
INSERT INTO TORNILLOS.Distrito (idDistrito, nombre, idProvincia) VALUES (10, 'Chame', 8);
INSERT INTO TORNILLOS.Distrito (idDistrito, nombre, idProvincia) VALUES (11, 'La Chorrera', 8);
INSERT INTO TORNILLOS.Distrito (idDistrito, nombre, idProvincia) VALUES (12, 'San Carlos', 8);


-- Cliente
INSERT INTO TORNILLOS.Cliente (idCliente, nombre, telefono, email,status) VALUES (1, 'Constructora Solís S.A.', '2222-5555', 'ventas@constructorasolis.com','A');
INSERT INTO TORNILLOS.Cliente (idCliente, nombre, telefono, email) VALUES (2, 'Carpintería Madera Fina', '2233-4455', 'pedidos@maderafina.com','A');
INSERT INTO TORNILLOS.Cliente (idCliente, nombre, telefono, email) VALUES (3, 'Electricidad Total', '2244-5566', 'compras@electricidadtotal.cr','A');
INSERT INTO TORNILLOS.Cliente (idCliente, nombre, telefono, email) VALUES (4, 'Herrería El Yunque', '2255-6677', 'contacto@elyunque.com','A');
INSERT INTO TORNILLOS.Cliente (idCliente, nombre, telefono, email) VALUES (5, 'Plomería Rápida', '2266-7788', 'info@plomeriarapida.cr','A');
INSERT INTO TORNILLOS.Cliente (idCliente, nombre, telefono, email) VALUES (6, 'Decoraciones Hogar Feliz', '2277-8899', 'ventas@hogarfeliz.com','A');
INSERT INTO TORNILLOS.Cliente (idCliente, nombre, telefono, email) VALUES (7, 'Ingeniería y Construcción CR', '2288-9900', 'proyectos@ingconcr.com','A');
INSERT INTO TORNILLOS.Cliente (idCliente, nombre, telefono, email) VALUES (8, 'Taller Mecánico El Motor', '2299-0011', 'taller@elmotor.cr','A');
INSERT INTO TORNILLOS.Cliente (idCliente, nombre, telefono, email) VALUES (9, 'Jardinería y Más', '2200-1122', 'jardineria@jardineriaymas.com','A');
INSERT INTO TORNILLOS.Cliente (idCliente, nombre, telefono, email) VALUES (10, 'María Fernández (Cliente frecuente)', '7010-2030', 'mariaf@gmail.com','A');

-- DireccionCliente
INSERT INTO TORNILLOS.DireccionCliente (idDireccion, idCliente, descripcion, idDistrito, calle, referencia, codigoPostal) VALUES (1, 1, 'Oficinas centrales', 1, 'Av. Central, Calle 5', 'Frente al Banco Nacional', '10101');
INSERT INTO TORNILLOS.DireccionCliente (idDireccion, idCliente, descripcion, idDistrito, calle, referencia, codigoPostal) VALUES (2, 2, 'Taller principal', 4, 'Calle 12, Avenida 8', '200 metros norte del parque', '20101');
INSERT INTO TORNILLOS.DireccionCliente (idDireccion, idCliente, descripcion, idDistrito, calle, referencia, codigoPostal) VALUES (3, 3, 'Bodega de materiales', 2, 'Calle Los Laureles', 'Contiguo a la clínica', '10202');
INSERT INTO TORNILLOS.DireccionCliente (idDireccion, idCliente, descripcion, idDistrito, calle, referencia, codigoPostal) VALUES (4, 4, 'Taller de herrería', 7, 'Av. 10, Calle 15', 'Frente a la escuela', '40101');
INSERT INTO TORNILLOS.DireccionCliente (idDireccion, idCliente, descripcion, idDistrito, calle, referencia, codigoPostal) VALUES (5, 5, 'Oficina administrativa', 3, 'Calle 33, Av. Central', 'Diagonal al supermercado', '10301');
INSERT INTO TORNILLOS.DireccionCliente (idDireccion, idCliente, descripcion, idDistrito, calle, referencia, codigoPostal) VALUES (6, 6, 'Showroom', 2, 'Paseo Colón', 'Local #25 en mall', '10201');
INSERT INTO TORNILLOS.DireccionCliente (idDireccion, idCliente, descripcion, idDistrito, calle, referencia, codigoPostal) VALUES (7, 7, 'Sitio de construcción', 5, 'Carretera a Grecia', 'Km 12, mano derecha', '20501');
INSERT INTO TORNILLOS.DireccionCliente (idDireccion, idCliente, descripcion, idDistrito, calle, referencia, codigoPostal) VALUES (8, 8, 'Taller mecánico', 6, 'Av. 5, Calle 8', 'Frente al parqueo del estadio', '30101');
INSERT INTO TORNILLOS.DireccionCliente (idDireccion, idCliente, descripcion, idDistrito, calle, referencia, codigoPostal) VALUES (9, 9, 'Vivero principal', 4, 'Calle Los Bambúes', '500 metros este del cementerio', '20103');
INSERT INTO TORNILLOS.DireccionCliente (idDireccion, idCliente, descripcion, idDistrito, calle, referencia, codigoPostal) VALUES (10, 10, 'Casa residencial', 3, 'Calle 42, Av. 8', 'Casa verde portón negro', '10302');





-- Proveedor
INSERT INTO TORNILLOS.Proveedor (idProveedor, nombre, contacto, idDireccion,phone) VALUES (1, 'Aceros Industriales S.A.', 'Juan Pérez', 1, '2266-7788');
INSERT INTO TORNILLOS.Proveedor (idProveedor, nombre, contacto, idDireccion,phone) VALUES (2, 'Tornillería Nacional', 'María Rodríguez', 2, '2266-7788');
INSERT INTO TORNILLOS.Proveedor (idProveedor, nombre, contacto, idDireccion,phone) VALUES (3, 'Materiales Eléctricos Internacionales', 'Carlos Jiménez', 3, '2266-7788');
INSERT INTO TORNILLOS.Proveedor (idProveedor, nombre, contacto, idDireccion,phone) VALUES (4, 'Ferretería Mayorista', 'Ana Gómez', 4, '2266-7788');
INSERT INTO TORNILLOS.Proveedor (idProveedor, nombre, contacto, idDireccion,phone) VALUES (5, 'Plomería y Más', 'Luis Fernández', 5, '2266-7788');
INSERT INTO TORNILLOS.Proveedor (idProveedor, nombre, contacto, idDireccion,phone) VALUES (6, 'Herramientas Profesionales', 'Sofía Chaves', 6, '2266-7788');
INSERT INTO TORNILLOS.Proveedor (idProveedor, nombre, contacto, idDireccion,phone) VALUES (7, 'Pinturas y Barnices Costa Rica', 'Pedro Castro', 7, '2266-7788');
INSERT INTO TORNILLOS.Proveedor (idProveedor, nombre, contacto, idDireccion,phone) VALUES (8, 'Maderas Preciosas S.A.', 'Laura Méndez', 8, '2266-7788');
INSERT INTO TORNILLOS.Proveedor (idProveedor, nombre, contacto, idDireccion,phone) VALUES (9, 'Ferretería Industrial', 'Roberto Vargas', 9, '2266-7788');
INSERT INTO TORNILLOS.Proveedor (idProveedor, nombre, contacto, idDireccion,phone) VALUES (10, 'Equipos de Seguridad', 'Elena Ruiz', 10);

-- DireccionProveedor
INSERT INTO TORNILLOS.DireccionProveedor (idDireccion, idProveedor, descripcion, idDistrito, calle, referencia, codigoPostal) VALUES (1, 1, 'Bodega principal', 1, 'Av. 3, Calle 10', 'Zona industrial', '10102');
INSERT INTO TORNILLOS.DireccionProveedor (idDireccion, idProveedor, descripcion, idDistrito, calle, referencia, codigoPostal) VALUES (2, 2, 'Oficinas y almacén', 2, 'Calle Blancos', 'Frente a la iglesia', '10203');
INSERT INTO TORNILLOS.DireccionProveedor (idDireccion, idProveedor, descripcion, idDistrito, calle, referencia, codigoPostal) VALUES (3, 3, 'Centro de distribución', 3, 'Av. Segunda', 'Local #15', '10303');
INSERT INTO TORNILLOS.DireccionProveedor (idDireccion, idProveedor, descripcion, idDistrito, calle, referencia, codigoPostal) VALUES (4, 4, 'Bodega mayorista', 4, 'Calle 5, Av. 12', 'Contiguo al taller', '20102');
INSERT INTO TORNILLOS.DireccionProveedor (idDireccion, idProveedor, descripcion, idDistrito, calle, referencia, codigoPostal) VALUES (5, 5, 'Almacén central', 5, 'Av. Central', 'Local #45', '20502');
INSERT INTO TORNILLOS.DireccionProveedor (idDireccion, idProveedor, descripcion, idDistrito, calle, referencia, codigoPostal) VALUES (6, 6, 'Oficinas corporativas', 6, 'Calle 15, Av. 6', 'Edificio azul', '30102');
INSERT INTO TORNILLOS.DireccionProveedor (idDireccion, idProveedor, descripcion, idDistrito, calle, referencia, codigoPostal) VALUES (7, 7, 'Planta de producción', 7, 'Carretera a Barva', 'Km 2.5', '40102');
INSERT INTO TORNILLOS.DireccionProveedor (idDireccion, idProveedor, descripcion, idDistrito, calle, referencia, codigoPostal) VALUES (8, 8, 'Aserradero principal', 8, 'Camino a Bagaces', 'Km 15', '50101');
INSERT INTO TORNILLOS.DireccionProveedor (idDireccion, idProveedor, descripcion, idDistrito, calle, referencia, codigoPostal) VALUES (9, 9, 'Centro logístico', 9, 'Av. Principal', 'Frente al muelle', '60101');
INSERT INTO TORNILLOS.DireccionProveedor (idDireccion, idProveedor, descripcion, idDistrito, calle, referencia, codigoPostal) VALUES (10, 10, 'Oficinas y showroom', 10, 'Calle del Comercio', 'Local #8', '70101');



-- RolUsuario
INSERT INTO TORNILLOS.RolUsuario (idRol, nombre) VALUES (1, 'Administrador');
INSERT INTO TORNILLOS.RolUsuario (idRol, nombre) VALUES (2, 'Gerente');
INSERT INTO TORNILLOS.RolUsuario (idRol, nombre) VALUES (3, 'Vendedor');
INSERT INTO TORNILLOS.RolUsuario (idRol, nombre) VALUES (4, 'Bodeguero');
INSERT INTO TORNILLOS.RolUsuario (idRol, nombre) VALUES (5, 'Cajero');
INSERT INTO TORNILLOS.RolUsuario (idRol, nombre) VALUES (6, 'Contador');
INSERT INTO TORNILLOS.RolUsuario (idRol, nombre) VALUES (7, 'Soporte Técnico');
INSERT INTO TORNILLOS.RolUsuario (idRol, nombre) VALUES (8, 'Auditor');
INSERT INTO TORNILLOS.RolUsuario (idRol, nombre) VALUES (9, 'Marketing');
INSERT INTO TORNILLOS.RolUsuario (idRol, nombre) VALUES (10, 'Recursos Humanos');

-- Usuario
INSERT INTO TORNILLOS.Usuario (idUsuario, nombre, idRol, email, contrasena) VALUES (1, 'Roberto Mendoza', 1, 'rmendoza@tuercasytornillos.com', 'admin123');
INSERT INTO TORNILLOS.Usuario (idUsuario, nombre, idRol, email, contrasena) VALUES (2, 'Laura Jiménez', 2, 'ljimenez@tuercasytornillos.com', 'gerente456');
INSERT INTO TORNILLOS.Usuario (idUsuario, nombre, idRol, email, contrasena) VALUES (3, 'Carlos Rojas', 3, 'crojas@tuercasytornillos.com', 'vendedor789');
INSERT INTO TORNILLOS.Usuario (idUsuario, nombre, idRol, email, contrasena) VALUES (4, 'María Castro', 3, 'mcastro@tuercasytornillos.com', 'vendedor321');
INSERT INTO TORNILLOS.Usuario (idUsuario, nombre, idRol, email, contrasena) VALUES (5, 'Pedro Vargas', 4, 'pvargas@tuercasytornillos.com', 'bodega654');
INSERT INTO TORNILLOS.Usuario (idUsuario, nombre, idRol, email, contrasena) VALUES (6, 'Ana Herrera', 5, 'aherrera@tuercasytornillos.com', 'cajero987');
INSERT INTO TORNILLOS.Usuario (idUsuario, nombre, idRol, email, contrasena) VALUES (7, 'Jorge Solís', 6, 'jsolis@tuercasytornillos.com', 'contador123');
INSERT INTO TORNILLOS.Usuario (idUsuario, nombre, idRol, email, contrasena) VALUES (8, 'Sofía Ramírez', 7, 'sramirez@tuercasytornillos.com', 'soporte456');
INSERT INTO TORNILLOS.Usuario (idUsuario, nombre, idRol, email, contrasena) VALUES (9, 'Miguel Ángel Fernández', 8, 'mfernandez@tuercasytornillos.com', 'auditor789');
INSERT INTO TORNILLOS.Usuario (idUsuario, nombre, idRol, email, contrasena) VALUES (10, 'Luisa González', 9, 'lgonzalez@tuercasytornillos.com', 'marketing123');

-- PermisoUsuario
INSERT INTO TORNILLOS.PermisoUsuario (idPermiso, idRol, permiso) VALUES (1, 1, 'Administrar sistema');
INSERT INTO TORNILLOS.PermisoUsuario (idPermiso, idRol, permiso) VALUES (2, 1, 'Gestionar usuarios');
INSERT INTO TORNILLOS.PermisoUsuario (idPermiso, idRol, permiso) VALUES (3, 2, 'Gestionar inventario');
INSERT INTO TORNILLOS.PermisoUsuario (idPermiso, idRol, permiso) VALUES (4, 2, 'Generar reportes');
INSERT INTO TORNILLOS.PermisoUsuario (idPermiso, idRol, permiso) VALUES (5, 3, 'Realizar ventas');
INSERT INTO TORNILLOS.PermisoUsuario (idPermiso, idRol, permiso) VALUES (6, 3, 'Consultar inventario');
INSERT INTO TORNILLOS.PermisoUsuario (idPermiso, idRol, permiso) VALUES (7, 4, 'Gestionar bodega');
INSERT INTO TORNILLOS.PermisoUsuario (idPermiso, idRol, permiso) VALUES (8, 4, 'Actualizar stock');
INSERT INTO TORNILLOS.PermisoUsuario (idPermiso, idRol, permiso) VALUES (9, 5, 'Procesar pagos');
INSERT INTO TORNILLOS.PermisoUsuario (idPermiso, idRol, permiso) VALUES (10, 5, 'Emitir facturas');