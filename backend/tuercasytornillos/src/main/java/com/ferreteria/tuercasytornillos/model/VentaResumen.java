
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