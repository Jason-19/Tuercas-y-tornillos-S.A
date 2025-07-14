package com.ferreteria.tuercasytornillos.model;

import org.springframework.beans.factory.annotation.Value;
public interface VentasDiariaHoy {

    @Value("#{target.TOTAL}")
    Long getTotal();
}