
-- PrecioProducto
INSERT INTO TORNILLOS.PrecioProducto (idPrecio, idProducto, fechaInicio, fechaFin, precio) VALUES (1, 1, TO_DATE('01-01-2023', 'DD-MM-YYYY'), TO_DATE('31-03-2023', 'DD-MM-YYYY'), 140);
INSERT INTO TORNILLOS.PrecioProducto (idPrecio, idProducto, fechaInicio, fechaFin, precio) VALUES (2, 1, TO_DATE('01-04-2023', 'DD-MM-YYYY'), NULL, 150);
INSERT INTO TORNILLOS.PrecioProducto (idPrecio, idProducto, fechaInicio, fechaFin, precio) VALUES (3, 2, TO_DATE('01-01-2023', 'DD-MM-YYYY'), NULL, 50);
INSERT INTO TORNILLOS.PrecioProducto (idPrecio, idProducto, fechaInicio, fechaFin, precio) VALUES (4, 3, TO_DATE('01-01-2023', 'DD-MM-YYYY'), TO_DATE('30-06-2023', 'DD-MM-YYYY'), 2400);
INSERT INTO TORNILLOS.PrecioProducto (idPrecio, idProducto, fechaInicio, fechaFin, precio) VALUES (5, 3, TO_DATE('01-07-2023', 'DD-MM-YYYY'), NULL, 2500);
INSERT INTO TORNILLOS.PrecioProducto (idPrecio, idProducto, fechaInicio, fechaFin, precio) VALUES (6, 4, TO_DATE('01-01-2023', 'DD-MM-YYYY'), NULL, 1200);
INSERT INTO TORNILLOS.PrecioProducto (idPrecio, idProducto, fechaInicio, fechaFin, precio) VALUES (7, 5, TO_DATE('01-01-2023', 'DD-MM-YYYY'), TO_DATE('31-05-2023', 'DD-MM-YYYY'), 1750);
INSERT INTO TORNILLOS.PrecioProducto (idPrecio, idProducto, fechaInicio, fechaFin, precio) VALUES (8, 5, TO_DATE('01-06-2023', 'DD-MM-YYYY'), NULL, 1800);
INSERT INTO TORNILLOS.PrecioProducto (idPrecio, idProducto, fechaInicio, fechaFin, precio) VALUES (9, 6, TO_DATE('01-01-2023', 'DD-MM-YYYY'), NULL, 4500);
INSERT INTO TORNILLOS.PrecioProducto (idPrecio, idProducto, fechaInicio, fechaFin, precio) VALUES (10, 7, TO_DATE('01-01-2023', 'DD-MM-YYYY'), NULL, 2200);

-- PrecioProductoHistorial
INSERT INTO TORNILLOS.PrecioProductoHistorial (idHistorial, idProducto, precioAnterior, precioNuevo, fechaCambio) VALUES (1, 1, 140, 150, TO_DATE('01-04-2023', 'DD-MM-YYYY'));
INSERT INTO TORNILLOS.PrecioProductoHistorial (idHistorial, idProducto, precioAnterior, precioNuevo, fechaCambio) VALUES (2, 3, 2400, 2500, TO_DATE('01-07-2023', 'DD-MM-YYYY'));
INSERT INTO TORNILLOS.PrecioProductoHistorial (idHistorial, idProducto, precioAnterior, precioNuevo, fechaCambio) VALUES (3, 5, 1750, 1800, TO_DATE('01-06-2023', 'DD-MM-YYYY'));
INSERT INTO TORNILLOS.PrecioProductoHistorial (idHistorial, idProducto, precioAnterior, precioNuevo, fechaCambio) VALUES (4, 8, 8300, 8500, TO_DATE('15-08-2023', 'DD-MM-YYYY'));
INSERT INTO TORNILLOS.PrecioProductoHistorial (idHistorial, idProducto, precioAnterior, precioNuevo, fechaCambio) VALUES (5, 9, 12000, 12500, TO_DATE('01-09-2023', 'DD-MM-YYYY'));
INSERT INTO TORNILLOS.PrecioProductoHistorial (idHistorial, idProducto, precioAnterior, precioNuevo, fechaCambio) VALUES (6, 10, 3200, 3500, TO_DATE('01-10-2023', 'DD-MM-YYYY'));
INSERT INTO TORNILLOS.PrecioProductoHistorial (idHistorial, idProducto, precioAnterior, precioNuevo, fechaCambio) VALUES (7, 2, 45, 50, TO_DATE('01-03-2023', 'DD-MM-YYYY'));
INSERT INTO TORNILLOS.PrecioProductoHistorial (idHistorial, idProducto, precioAnterior, precioNuevo, fechaCambio) VALUES (8, 4, 1100, 1200, TO_DATE('01-05-2023', 'DD-MM-YYYY'));
INSERT INTO TORNILLOS.PrecioProductoHistorial (idHistorial, idProducto, precioAnterior, precioNuevo, fechaCambio) VALUES (9, 6, 4300, 4500, TO_DATE('01-07-2023', 'DD-MM-YYYY'));
INSERT INTO TORNILLOS.PrecioProductoHistorial (idHistorial, idProducto, precioAnterior, precioNuevo, fechaCambio) VALUES (10, 7, 2100, 2200, TO_DATE('01-08-2023', 'DD-MM-YYYY'));