package com.ferreteria.tuercasytornillos.model;

import javax.persistence.Entity;
import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

import lombok.Data;

@Entity
@Table(name = "DETALLECOMPRA")
@Data
public class DetailsBuysModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "IDDETALLECOMPRA")
    private Long id;
    
    @Column(name = "IDCOMPRA")
    private Long idBuy;

    @Column(name = "IDPRODUCTO")
    private Long idProduct;

    @Column(name = "CANTIDAD")
    private Integer quantity;

    @Column(name = "COSTOUNITARIO")
    private Double price;
    
}
