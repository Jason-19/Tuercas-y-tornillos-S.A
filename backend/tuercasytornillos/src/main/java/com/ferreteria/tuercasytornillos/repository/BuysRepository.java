package com.ferreteria.tuercasytornillos.repository;
import com.ferreteria.tuercasytornillos.model.BuysModel;
import com.ferreteria.tuercasytornillos.model.BuyResumen;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import java.util.List;
@Repository
public interface BuysRepository extends JpaRepository<BuysModel, Long> {

@Query(value = "SELECT c.IDCOMPRA AS COMPRA, " +
                   "TO_CHAR(c.FECHA, 'DD/MM/YYYY') AS FECHA, " +
                   "p.NOMBRE AS PROVEEDOR, " +
                   "c.TOTAL AS TOTAL, " +
                   "u.NOMBRE AS RESPONSABLE, " +
                   "COALESCE(m.NOMBRE, 'No pagado') AS METODOPAGO " +
                   "FROM TORNILLOS.COMPRA c " +
                   "JOIN TORNILLOS.PROVEEDOR p ON c.IDPROVEEDOR = p.IDPROVEEDOR " +
                   "JOIN TORNILLOS.USUARIO u ON c.IDUSUARIO = u.IDUSUARIO " +
                   "LEFT JOIN ( " +
                   "    SELECT p.IDCOMPRA, MIN(p.IDPAGO) AS PRIMERPAGO " +
                   "    FROM TORNILLOS.PAGOCOMPRA p " +
                   "    GROUP BY p.IDCOMPRA " +
                   ") pp ON c.IDCOMPRA = pp.IDCOMPRA " +
                   "LEFT JOIN TORNILLOS.PAGOCOMPRA pc ON pp.PRIMERPAGO = pc.IDPAGO " +
                   "LEFT JOIN TORNILLOS.METODOPAGO m ON pc.IDMETODOPAGO = m.IDMETODO " +
                   "ORDER BY c.FECHA DESC",
           nativeQuery = true)
    List<BuyResumen> resumenCompras();


}
