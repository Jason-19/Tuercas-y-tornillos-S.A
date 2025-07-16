package com.ferreteria.tuercasytornillos.model;
import org.springframework.beans.factory.annotation.Value;

public interface StokeFull {

    @Value("#{target.STOCK}")
    Long getStock();
}

