// package com.ferreteria.tuercasytornillos.model;
// import javax.persistence.Entity;
// import javax.persistence.Column;
// import javax.persistence.Id;
// import javax.persistence.Table;
// import javax.persistence.GeneratedValue;
// import javax.persistence.GenerationType;

// import lombok.Data; 

// @Data
// @Entity
// @Table(name = "DETALLEVENTA")
// public class DetailSalesModel {
    
//     @Id
//     @GeneratedValue(strategy = GenerationType.IDENTITY)
//     @Column(name = "IDDETALLEVENTA")
//     private Long id;

//     @Column(name = "IDVENTA")
//     private Long idSales;

//     @Column(name = "IDPRODUCTO")
//     private Long idProduct;

//     @Column(name = "CANTIDAD")
//     private Integer quantity;

//     @Column(name = "PRECIOUNITARIO")
//     private Double price;
// }

package com.ferreteria.tuercasytornillos.model;
import org.springframework.beans.factory.annotation.Value;

public interface VentaResumen {
    
    @Value("#{target.VENTA}")
    Long getIdVenta();
    
    @Value("#{target.FECHA}")
    String getFecha();
    
    @Value("#{target.CLIENTE}")
    String getCliente();
    
    @Value("#{target.TOTAL}")
    Double getTotal();
    
    @Value("#{target.VENDEDOR}")
    String getVendedor();
    
    @Value("#{target.METODOPAGO}")
    String getMetodoPago();
}