package com.ferreteria.tuercasytornillos.model;

import org.springframework.beans.factory.annotation.Value;
public interface BuyResumen {
     @Value("#{target.COMPRA}")
    Long getIdCompra();
    
    @Value("#{target.FECHA}")
    String getFecha();
    
    @Value("#{target.PROVEEDOR}")
    String getProveedor();
    
    @Value("#{target.TOTAL}")
    Double getTotal();
    
    @Value("#{target.RESPONSABLE}")
    String getResponsable();
    
    @Value("#{target.METODOPAGO}")
    String getMetodoPago();
}