-- CategoriaProducto
INSERT INTO TORNILLOS.CategoriaProducto (idCategoria, nombre, descripcion) VALUES (1, 'Ferretería', 'Productos generales de ferretería');
INSERT INTO TORNILLOS.CategoriaProducto (idCategoria, nombre, descripcion) VALUES (2, 'Electricidad', 'Materiales y herramientas eléctricas');
INSERT INTO TORNILLOS.CategoriaProducto (idCategoria, nombre, descripcion) VALUES (3, 'Plomería', 'Tuberías, conexiones y accesorios');
INSERT INTO TORNILLOS.CategoriaProducto (idCategoria, nombre, descripcion) VALUES (4, 'Herramientas', 'Herramientas manuales y eléctricas');
INSERT INTO TORNILLOS.CategoriaProducto (idCategoria, nombre, descripcion) VALUES (5, 'Construcción', 'Materiales para construcción');
INSERT INTO TORNILLOS.CategoriaProducto (idCategoria, nombre, descripcion) VALUES (6, 'Pintura', 'Pinturas y accesorios');
INSERT INTO TORNILLOS.CategoriaProducto (idCategoria, nombre, descripcion) VALUES (7, 'Seguridad', 'Equipo de protección personal');
INSERT INTO TORNILLOS.CategoriaProducto (idCategoria, nombre, descripcion) VALUES (8, 'Jardinería', 'Herramientas y productos para jardín');
INSERT INTO TORNILLOS.CategoriaProducto (idCategoria, nombre, descripcion) VALUES (9, 'Herrería', 'Materiales para herrería');
INSERT INTO TORNILLOS.CategoriaProducto (idCategoria, nombre, descripcion) VALUES (10, 'Tornillería', 'Tornillos, tuercas y pernos');

-- SubcategoriaProducto
INSERT INTO TORNILLOS.SubcategoriaProducto (idSubcategoria, nombre, idCategoria) VALUES (1, 'Tornillos', 10);
INSERT INTO TORNILLOS.SubcategoriaProducto (idSubcategoria, nombre, idCategoria) VALUES (2, 'Tuercas', 10);
INSERT INTO TORNILLOS.SubcategoriaProducto (idSubcategoria, nombre, idCategoria) VALUES (3, 'Cables', 2);
INSERT INTO TORNILLOS.SubcategoriaProducto (idSubcategoria, nombre, idCategoria) VALUES (4, 'Interruptores', 2);
INSERT INTO TORNILLOS.SubcategoriaProducto (idSubcategoria, nombre, idCategoria) VALUES (5, 'Tuberías PVC', 3);
INSERT INTO TORNILLOS.SubcategoriaProducto (idSubcategoria, nombre, idCategoria) VALUES (6, 'Llaves', 4);
INSERT INTO TORNILLOS.SubcategoriaProducto (idSubcategoria, nombre, idCategoria) VALUES (7, 'Destornilladores', 4);
INSERT INTO TORNILLOS.SubcategoriaProducto (idSubcategoria, nombre, idCategoria) VALUES (8, 'Cemento', 5);
INSERT INTO TORNILLOS.SubcategoriaProducto (idSubcategoria, nombre, idCategoria) VALUES (9, 'Pintura látex', 6);
INSERT INTO TORNILLOS.SubcategoriaProducto (idSubcategoria, nombre, idCategoria) VALUES (10, 'Guantes', 7);

-- MarcaProducto
INSERT INTO TORNILLOS.MarcaProducto (idMarca, nombre) VALUES (1, 'Tornillos CR');
INSERT INTO TORNILLOS.MarcaProducto (idMarca, nombre) VALUES (2, 'ElectroMax');
INSERT INTO TORNILLOS.MarcaProducto (idMarca, nombre) VALUES (3, 'PlomEasy');
INSERT INTO TORNILLOS.MarcaProducto (idMarca, nombre) VALUES (4, 'HerraTool');
INSERT INTO TORNILLOS.MarcaProducto (idMarca, nombre) VALUES (5, 'ConstruFácil');
INSERT INTO TORNILLOS.MarcaProducto (idMarca, nombre) VALUES (6, 'ColorPlus');
INSERT INTO TORNILLOS.MarcaProducto (idMarca, nombre) VALUES (7, 'SafeWork');
INSERT INTO TORNILLOS.MarcaProducto (idMarca, nombre) VALUES (8, 'GardenPro');
INSERT INTO TORNILLOS.MarcaProducto (idMarca, nombre) VALUES (9, 'AceroForte');
INSERT INTO TORNILLOS.MarcaProducto (idMarca, nombre) VALUES (10, 'FixMaster');

-- UnidadMedida
INSERT INTO TORNILLOS.UnidadMedida (idUnidad, nombre) VALUES (1, 'Unidad');
INSERT INTO TORNILLOS.UnidadMedida (idUnidad, nombre) VALUES (2, 'Paquete');
INSERT INTO TORNILLOS.UnidadMedida (idUnidad, nombre) VALUES (3, 'Metro');
INSERT INTO TORNILLOS.UnidadMedida (idUnidad, nombre) VALUES (4, 'Kilogramo');
INSERT INTO TORNILLOS.UnidadMedida (idUnidad, nombre) VALUES (5, 'Litro');
INSERT INTO TORNILLOS.UnidadMedida (idUnidad, nombre) VALUES (6, 'Galón');
INSERT INTO TORNILLOS.UnidadMedida (idUnidad, nombre) VALUES (7, 'Caja');
INSERT INTO TORNILLOS.UnidadMedida (idUnidad, nombre) VALUES (8, 'Rollo');
INSERT INTO TORNILLOS.UnidadMedida (idUnidad, nombre) VALUES (9, 'Pulgada');
INSERT INTO TORNILLOS.UnidadMedida (idUnidad, nombre) VALUES (10, 'Pulgada cúbica');

-- Producto
INSERT INTO TORNILLOS.Producto (idProducto, nombre, descripcion, precioUnitario, cantidadStock, idProveedor, idCategoria, idSubcategoria, idMarca, idUnidad,IMAGE_URL,STATUS) 
VALUES (1, 'Tornillo hexagonal 1/2"', 'Tornillo de acero galvanizado', 150, 500, 2, 10, 1, 1, 1,'',);

INSERT INTO TORNILLOS.Producto (idProducto, nombre, descripcion, precioUnitario, cantidadStock, idProveedor, idCategoria, idSubcategoria, idMarca, idUnidad) 
VALUES (2, 'Tuerca hexagonal 1/2"', 'Tuerca de acero galvanizado', 50, 800, 2, 10, 2, 1, 1);

INSERT INTO TORNILLOS.Producto (idProducto, nombre, descripcion, precioUnitario, cantidadStock, idProveedor, idCategoria, idSubcategoria, idMarca, idUnidad) 
VALUES (3, 'Cable eléctrico #12', 'Cable THHN calibre 12', 2500, 200, 3, 2, 3, 2, 3);

INSERT INTO TORNILLOS.Producto (idProducto, nombre, descripcion, precioUnitario, cantidadStock, idProveedor, idCategoria, idSubcategoria, idMarca, idUnidad) 
VALUES (4, 'Interruptor sencillo', 'Interruptor de pared 15A', 1200, 150, 3, 2, 4, 2, 1);

INSERT INTO TORNILLOS.Producto (idProducto, nombre, descripcion, precioUnitario, cantidadStock, idProveedor, idCategoria, idSubcategoria, idMarca, idUnidad) 
VALUES (5, 'Tubería PVC 1/2"', 'Tubería para agua 1/2" x 3m', 1800, 100, 5, 3, 5, 3, 3);

INSERT INTO TORNILLOS.Producto (idProducto, nombre, descripcion, precioUnitario, cantidadStock, idProveedor, idCategoria, idSubcategoria, idMarca, idUnidad) 
VALUES (6, 'Llave ajustable 8"', 'Llave ajustable de acero', 4500, 80, 6, 4, 6, 4, 1);

INSERT INTO TORNILLOS.Producto (idProducto, nombre, descripcion, precioUnitario, cantidadStock, idProveedor, idCategoria, idSubcategoria, idMarca, idUnidad) 
VALUES (7, 'Destornillador plano #2', 'Destornillador profesional', 2200, 120, 6, 4, 7, 4, 1);

INSERT INTO TORNILLOS.Producto (idProducto, nombre, descripcion, precioUnitario, cantidadStock, idProveedor, idCategoria, idSubcategoria, idMarca, idUnidad) 
VALUES (8, 'Cemento gris 50kg', 'Cemento para construcción', 8500, 50, 5, 5, 8, 5, 4);

INSERT INTO TORNILLOS.Producto (idProducto, nombre, descripcion, precioUnitario, cantidadStock, idProveedor, idCategoria, idSubcategoria, idMarca, idUnidad) 
VALUES (9, 'Pintura látex blanco 1gal', 'Pintura para interiores', 12500, 60, 7, 6, 9, 6, 6);

INSERT INTO TORNILLOS.Producto (idProducto, nombre, descripcion, precioUnitario, cantidadStock, idProveedor, idCategoria, idSubcategoria, idMarca, idUnidad) 
VALUES (10, 'Guantes de cuero', 'Guantes de protección', 3500, 90, 10, 7, 10, 7, 1);
INSERT INTO TORNILLOS.Producto (idProducto, nombre, descripcion, precioUnitario, cantidadStock, idProveedor, idCategoria, idSubcategoria, idMarca, idUnidad) 
VALUES (10, 'Guantes de cuero', 'Guantes de protección', 3500, 90, 10, 7, 10, 7, 1);
