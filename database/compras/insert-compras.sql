
INSERT INTO TORNILLOS.Compra (idCompra, fecha, total, idProveedor, idUsuario) 
VALUES (1, TO_DATE('05-01-2023', 'DD-MM-YYYY'), 250000, 1, 5);

INSERT INTO TORNILLOS.Compra (idCompra, fecha, total, idProveedor, idUsuario) 
VALUES (2, TO_DATE('10-01-2023', 'DD-MM-YYYY'), 120000, 2, 5);

INSERT INTO TORNILLOS.Compra (idCompra, fecha, total, idProveedor, idUsuario) 
VALUES (3, TO_DATE('15-01-2023', 'DD-MM-YYYY'), 85000, 3, 5);

INSERT INTO TORNILLOS.Compra (idCompra, fecha, total, idProveedor, idUsuario) 
VALUES (4, TO_DATE('20-01-2023', 'DD-MM-YYYY'), 150000, 4, 5);

INSERT INTO TORNILLOS.Compra (idCompra, fecha, total, idProveedor, idUsuario) 
VALUES (5, TO_DATE('25-01-2023', 'DD-MM-YYYY'), 90000, 5, 5);

INSERT INTO TORNILLOS.Compra (idCompra, fecha, total, idProveedor, idUsuario) 
VALUES (6, TO_DATE('01-02-2023', 'DD-MM-YYYY'), 110000, 6, 5);

INSERT INTO TORNILLOS.Compra (idCompra, fecha, total, idProveedor, idUsuario) 
VALUES (7, TO_DATE('05-02-2023', 'DD-MM-YYYY'), 75000, 7, 5);

INSERT INTO TORNILLOS.Compra (idCompra, fecha, total, idProveedor, idUsuario) 
VALUES (8, TO_DATE('10-02-2023', 'DD-MM-YYYY'), 180000, 8, 5);

INSERT INTO TORNILLOS.Compra (idCompra, fecha, total, idProveedor, idUsuario) 
VALUES (9, TO_DATE('15-02-2023', 'DD-MM-YYYY'), 95000, 9, 5);

INSERT INTO TORNILLOS.Compra (idCompra, fecha, total, idProveedor, idUsuario) 
VALUES (10, TO_DATE('20-02-2023', 'DD-MM-YYYY'), 60000, 10, 5);


--- DETALLES DE COMPRA 

INSERT INTO TORNILLOS.DetalleCompra (idDetalleCompra, idCompra, idProducto, cantidad, costoUnitario) 
VALUES (1, 1, 1, 1000, 120); -- 1000 tornillos a 120 c/u (costo)

INSERT INTO TORNILLOS.DetalleCompra (idDetalleCompra, idCompra, idProducto, cantidad, costoUnitario) 
VALUES (2, 1, 2, 1500, 30); -- 1500 tuercas a 30 c/u


INSERT INTO TORNILLOS.DetalleCompra (idDetalleCompra, idCompra, idProducto, cantidad, costoUnitario) 
VALUES (3, 2, 1, 500, 125); -- 500 tornillos

INSERT INTO TORNILLOS.DetalleCompra (idDetalleCompra, idCompra, idProducto, cantidad, costoUnitario) 
VALUES (4, 2, 2, 1000, 35); -- 1000 tuercas


INSERT INTO TORNILLOS.DetalleCompra (idDetalleCompra, idCompra, idProducto, cantidad, costoUnitario) 
VALUES (5, 3, 3, 30, 2000); -- 30 metros de cable
INSERT INTO TORNILLOS.DetalleCompra (idDetalleCompra, idCompra, idProducto, cantidad, costoUnitario) 
VALUES (6, 3, 4, 50, 900); -- 50 interruptores
INSERT INTO TORNILLOS.DetalleCompra (idDetalleCompra, idCompra, idProducto, cantidad, costoUnitario) 
VALUES (7, 4, 6, 20, 3800); -- 20 llaves ajustables
INSERT INTO TORNILLOS.DetalleCompra (idDetalleCompra, idCompra, idProducto, cantidad, costoUnitario) 
VALUES (8, 4, 7, 30, 1800); -- 30 destornilladores
INSERT INTO TORNILLOS.DetalleCompra (idDetalleCompra, idCompra, idProducto, cantidad, costoUnitario) 
VALUES (9, 5, 5, 50, 1500); -- 50 tuberías PVC
INSERT INTO TORNILLOS.DetalleCompra (idDetalleCompra, idCompra, idProducto, cantidad, costoUnitario) 
VALUES (10, 6, 6, 15, 4000); -- 15 llaves ajustables
INSERT INTO TORNILLOS.DetalleCompra (idDetalleCompra, idCompra, idProducto, cantidad, costoUnitario) 
VALUES (11, 6, 7, 20, 2000); -- 20 destornilladores
INSERT INTO TORNILLOS.DetalleCompra (idDetalleCompra, idCompra, idProducto, cantidad, costoUnitario) 
VALUES (12, 7, 9, 60, 10000); -- 60 galones de pintura
INSERT INTO TORNILLOS.DetalleCompra (idDetalleCompra, idCompra, idProducto, cantidad, costoUnitario) 
VALUES (13, 8, 8, 20, 8000); -- 20 sacos de cemento
INSERT INTO TORNILLOS.DetalleCompra (idDetalleCompra, idCompra, idProducto, cantidad, costoUnitario) 
VALUES (14, 9, 10, 50, 2800); -- 50 pares de guantes
INSERT INTO TORNILLOS.DetalleCompra (idDetalleCompra, idCompra, idProducto, cantidad, costoUnitario) 
VALUES (15, 10, 10, 20, 3000); -- 20 pares de guantes


--- pagos de compra 
-- Pago Compra 1 (Transferencia)
INSERT INTO TORNILLOS.PagoCompra (idPago, idCompra, idMetodoPago, monto, fecha) 
VALUES (1, 1, 4, 250000, TO_DATE('06-01-2023', 'DD-MM-YYYY'));

INSERT INTO TORNILLOS.PagoCompra (idPago, idCompra, idMetodoPago, monto, fecha) 
VALUES (2, 2, 5, 120000, TO_DATE('11-01-2023', 'DD-MM-YYYY'));

INSERT INTO TORNILLOS.PagoCompra (idPago, idCompra, idMetodoPago, monto, fecha) 
VALUES (3, 3, 4, 85000, TO_DATE('16-01-2023', 'DD-MM-YYYY'));

-- Pago Compra 4 (Crédito 30 días)
INSERT INTO TORNILLOS.PagoCompra (idPago, idCompra, idMetodoPago, monto, fecha) 
VALUES (4, 4, 5, 150000, TO_DATE('20-02-2023', 'DD-MM-YYYY'));

-- Pago Compra 5 (Efectivo)
INSERT INTO TORNILLOS.PagoCompra (idPago, idCompra, idMetodoPago, monto, fecha) 
VALUES (5, 5, 1, 90000, TO_DATE('26-01-2023', 'DD-MM-YYYY'));

-- Pago Compra 6 (Transferencia)
INSERT INTO TORNILLOS.PagoCompra (idPago, idCompra, idMetodoPago, monto, fecha) 
VALUES (6, 6, 4, 110000, TO_DATE('02-02-2023', 'DD-MM-YYYY'));

-- Pago Compra 7 (Cheque)
INSERT INTO TORNILLOS.PagoCompra (idPago, idCompra, idMetodoPago, monto, fecha) 
VALUES (7, 7, 5, 75000, TO_DATE('06-02-2023', 'DD-MM-YYYY'));

-- Pago Compra 8 (Crédito 15 días)
INSERT INTO TORNILLOS.PagoCompra (idPago, idCompra, idMetodoPago, monto, fecha) 
VALUES (8, 8, 5, 180000, TO_DATE('25-02-2023', 'DD-MM-YYYY'));

-- Pago Compra 9 (Transferencia)
INSERT INTO TORNILLOS.PagoCompra (idPago, idCompra, idMetodoPago, monto, fecha) 
VALUES (9, 9, 4, 95000, TO_DATE('16-02-2023', 'DD-MM-YYYY'));

-- Pago Compra 10 (Efectivo)
INSERT INTO TORNILLOS.PagoCompra (idPago, idCompra, idMetodoPago, monto, fecha) 
VALUES (10, 10, 1, 60000, TO_DATE('21-02-2023', 'DD-MM-YYYY'));