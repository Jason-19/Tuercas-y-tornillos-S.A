-- PRA LOS METODOS DE PAGO 
INSERT INTO TORNILLOS.MetodoPago (idMetodo, nombre) VALUES (1, 'Efectivo');
INSERT INTO TORNILLOS.MetodoPago (idMetodo, nombre) VALUES (2, 'Tarjeta de Credito');
INSERT INTO TORNILLOS.MetodoPago (idMetodo, nombre) VALUES (3, 'Tarjeta de Debito');
INSERT INTO TORNILLOS.MetodoPago (idMetodo, nombre) VALUES (4, 'Transferencia Bancaria');
INSERT INTO TORNILLOS.MetodoPago (idMetodo, nombre) VALUES (5, 'Cheque');

INSERT INTO TORNILLOS.Venta (idVenta, fecha, total, idCliente, idUsuario) 
VALUES (1, TO_DATE('10-01-2023', 'DD-MM-YYYY'), 38500, 1, 3);

INSERT INTO TORNILLOS.Venta (idVenta, fecha, total, idCliente, idUsuario) 
VALUES (2, TO_DATE('15-01-2023', 'DD-MM-YYYY'), 12700, 2, 4);

INSERT INTO TORNILLOS.Venta (idVenta, fecha, total, idCliente, idUsuario) 
VALUES (3, TO_DATE('20-01-2023', 'DD-MM-YYYY'), 6200, 3, 3);
INSERT INTO TORNILLOS.Venta (idVenta, fecha, total, idCliente, idUsuario) 
VALUES (4, TO_DATE('25-01-2023', 'DD-MM-YYYY'), 8500, 4, 4);

INSERT INTO TORNILLOS.Venta (idVenta, fecha, total, idCliente, idUsuario) 
VALUES (5, TO_DATE('05-02-2023', 'DD-MM-YYYY'), 4500, 10, 3);
INSERT INTO TORNILLOS.Venta (idVenta, fecha, total, idCliente, idUsuario) 
VALUES (6, TO_DATE('10-02-2023', 'DD-MM-YYYY'), 18000, 5, 4);

INSERT INTO TORNILLOS.Venta (idVenta, fecha, total, idCliente, idUsuario) 
VALUES (7, TO_DATE('15-02-2023', 'DD-MM-YYYY'), 6700, 8, 3);

INSERT INTO TORNILLOS.Venta (idVenta, fecha, total, idCliente, idUsuario) 
VALUES (8, TO_DATE('20-02-2023', 'DD-MM-YYYY'), 12500, 6, 4);

INSERT INTO TORNILLOS.Venta (idVenta, fecha, total, idCliente, idUsuario) 
VALUES (9, TO_DATE('25-02-2023', 'DD-MM-YYYY'), 3500, 9, 3);

INSERT INTO TORNILLOS.Venta (idVenta, fecha, total, idCliente, idUsuario) 
VALUES (10, TO_DATE('01-03-2023', 'DD-MM-YYYY'), 125000, 1, 4);




-- pafos de venta 
-- Pago Venta 1 (Efectivo)
INSERT INTO TORNILLOS.PagoVenta (idPago, idVenta, idMetodoPago, monto, fecha) 
VALUES (1, 1, 1, 38500, TO_DATE('10-01-2023', 'DD-MM-YYYY'));

-- Pago Venta 2 (Tarjeta Crédito)
INSERT INTO TORNILLOS.PagoVenta (idPago, idVenta, idMetodoPago, monto, fecha) 
VALUES (2, 2, 2, 12700, TO_DATE('15-01-2023', 'DD-MM-YYYY'));

-- Pago Venta 3 (Transferencia)
INSERT INTO TORNILLOS.PagoVenta (idPago, idVenta, idMetodoPago, monto, fecha) 
VALUES (3, 3, 4, 6200, TO_DATE('20-01-2023', 'DD-MM-YYYY'));

-- Pago Venta 4 (Efectivo)
INSERT INTO TORNILLOS.PagoVenta (idPago, idVenta, idMetodoPago, monto, fecha) 
VALUES (4, 4, 1, 8500, TO_DATE('25-01-2023', 'DD-MM-YYYY'));

-- Pago Venta 5 (Tarjeta Débito)
INSERT INTO TORNILLOS.PagoVenta (idPago, idVenta, idMetodoPago, monto, fecha) 
VALUES (5, 5, 3, 4500, TO_DATE('05-02-2023', 'DD-MM-YYYY'));

-- Pago Venta 6 (Cheque)
INSERT INTO TORNILLOS.PagoVenta (idPago, idVenta, idMetodoPago, monto, fecha) 
VALUES (6, 6, 5, 18000, TO_DATE('10-02-2023', 'DD-MM-YYYY'));

-- Pago Venta 7 (Efectivo)
INSERT INTO TORNILLOS.PagoVenta (idPago, idVenta, idMetodoPago, monto, fecha) 
VALUES (7, 7, 1, 6700, TO_DATE('15-02-2023', 'DD-MM-YYYY'));

-- Pago Venta 8 (Tarjeta Crédito)
INSERT INTO TORNILLOS.PagoVenta (idPago, idVenta, idMetodoPago, monto, fecha) 
VALUES (8, 8, 2, 12500, TO_DATE('20-02-2023', 'DD-MM-YYYY'));

-- Pago Venta 9 (Efectivo)
INSERT INTO TORNILLOS.PagoVenta (idPago, idVenta, idMetodoPago, monto, fecha) 
VALUES (9, 9, 1, 3500, TO_DATE('25-02-2023', 'DD-MM-YYYY'));

-- Pago Venta 10 (Transferencia)
INSERT INTO TORNILLOS.PagoVenta (idPago, idVenta, idMetodoPago, monto, fecha) 
VALUES (10, 10, 4, 125000, TO_DATE('01-03-2023', 'DD-MM-YYYY'));