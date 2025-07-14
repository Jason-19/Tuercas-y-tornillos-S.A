package com.ferreteria.tuercasytornillos.repository;

import java.util.List;

import com.ferreteria.tuercasytornillos.model.VentaResumen;
import com.ferreteria.tuercasytornillos.model.VentasDiariaHoy;
import com.ferreteria.tuercasytornillos.model.VentasModel;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

@Repository
public interface VentaRepository extends JpaRepository<VentasModel, Long> {

    List<VentasModel> findAllByOrderByFechaDesc();

    @Query(value = "SELECT v.IDVENTA AS VENTA, " +
            "TO_CHAR(v.FECHA, 'DD/MM/YYYY') AS FECHA, " +
            "c.NOMBRE AS CLIENTE, " +
            "v.TOTAL AS TOTAL, " +
            "u.NOMBRE AS VENDEDOR, " +
            "COALESCE(m.NOMBRE, 'No pagado') AS METODOPAGO " +
            "FROM TORNILLOS.VENTA v " +
            "JOIN TORNILLOS.CLIENTE c ON v.IDCLIENTE = c.IDCLIENTE " +
            "JOIN TORNILLOS.USUARIO u ON v.IDUSUARIO = u.IDUSUARIO " +
            "LEFT JOIN ( " +
            "    SELECT p.IDVENTA, MIN(p.IDPAGO) AS PRIMERPAGO " +
            "    FROM TORNILLOS.PAGOVENTA p " +
            "    GROUP BY p.IDVENTA " +
            ") pp ON v.IDVENTA = pp.IDVENTA " +
            "LEFT JOIN TORNILLOS.PAGOVENTA p ON pp.PRIMERPAGO = p.IDPAGO " +
            "LEFT JOIN TORNILLOS.METODOPAGO m ON p.IDMETODOPAGO = m.IDMETODO " +
            "ORDER BY v.FECHA DESC", nativeQuery = true)
    List<VentaResumen> findAllVentasResumen();

    @Query(value = "SELECT SUM(v.TOTAL) AS TOTAL " +
            "FROM TORNILLOS.VENTA v " +
            "JOIN TORNILLOS.CLIENTE c ON v.IDCLIENTE = c.IDCLIENTE " +
            "JOIN TORNILLOS.USUARIO u ON v.IDUSUARIO = u.IDUSUARIO " +
            "LEFT JOIN ( " +
            "    SELECT p.IDVENTA, MIN(p.IDPAGO) AS PRIMERPAGO " +
            "    FROM TORNILLOS.PAGOVENTA p " +
            "    GROUP BY p.IDVENTA " +
            ") pp ON v.IDVENTA = pp.IDVENTA " +
            "LEFT JOIN TORNILLOS.PAGOVENTA p ON pp.PRIMERPAGO = p.IDPAGO " +
            "LEFT JOIN TORNILLOS.METODOPAGO m ON p.IDMETODOPAGO = m.IDMETODO " +
            "ORDER BY v.FECHA DESC", nativeQuery = true)
    VentasDiariaHoy obtenerReporteDiario();
}
