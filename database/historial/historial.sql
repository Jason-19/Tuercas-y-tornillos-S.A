-- Historial por compras
INSERT INTO TORNILLOS.HistorialStock (idHistorial, idProducto, fecha, cantidad, tipoMovimiento, motivo) 
VALUES (1, 1, TO_DATE('05-01-2023', 'DD-MM-YYYY'), 1000, 'ENTRADA', 'Compra a Aceros Industriales');

INSERT INTO TORNILLOS.HistorialStock (idHistorial, idProducto, fecha, cantidad, tipoMovimiento, motivo) 
VALUES (2, 2, TO_DATE('05-01-2023', 'DD-MM-YYYY'), 1500, 'ENTRADA', 'Compra a Aceros Industriales');

INSERT INTO TORNILLOS.HistorialStock (idHistorial, idProducto, fecha, cantidad, tipoMovimiento, motivo) 
VALUES (3, 1, TO_DATE('10-01-2023', 'DD-MM-YYYY'), 500, 'ENTRADA', 'Compra a Tornillería Nacional');

INSERT INTO TORNILLOS.HistorialStock (idHistorial, idProducto, fecha, cantidad, tipoMovimiento, motivo) 
VALUES (4, 2, TO_DATE('10-01-2023', 'DD-MM-YYYY'), 1000, 'ENTRADA', 'Compra a Tornillería Nacional');

-- Historial por ventas
INSERT INTO TORNILLOS.HistorialStock (idHistorial, idProducto, fecha, cantidad, tipoMovimiento, motivo) 
VALUES (5, 8, TO_DATE('10-01-2023', 'DD-MM-YYYY'), -4, 'SALIDA', 'Venta a Constructora Solís');

INSERT INTO TORNILLOS.HistorialStock (idHistorial, idProducto, fecha, cantidad, tipoMovimiento, motivo) 
VALUES (6, 1, TO_DATE('10-01-2023', 'DD-MM-YYYY'), -100, 'SALIDA', 'Venta a Constructora Solís');

INSERT INTO TORNILLOS.HistorialStock (idHistorial, idProducto, fecha, cantidad, tipoMovimiento, motivo) 
VALUES (7, 2, TO_DATE('10-01-2023', 'DD-MM-YYYY'), -150, 'SALIDA', 'Venta a Constructora Solís');

INSERT INTO TORNILLOS.HistorialStock (idHistorial, idProducto, fecha, cantidad, tipoMovimiento, motivo) 
VALUES (8, 6, TO_DATE('15-01-2023', 'DD-MM-YYYY'), -2, 'SALIDA', 'Venta a Carpintería Madera Fina');

INSERT INTO TORNILLOS.HistorialStock (idHistorial, idProducto, fecha, cantidad, tipoMovimiento, motivo) 
VALUES (9, 7, TO_DATE('15-01-2023', 'DD-MM-YYYY'), -1, 'SALIDA', 'Venta a Carpintería Madera Fina');

INSERT INTO TORNILLOS.HistorialStock (idHistorial, idProducto, fecha, cantidad, tipoMovimiento, motivo) 
VALUES (10, 10, TO_DATE('15-01-2023', 'DD-MM-YYYY'), -2, 'SALIDA', 'Venta a Carpintería Madera Fina');