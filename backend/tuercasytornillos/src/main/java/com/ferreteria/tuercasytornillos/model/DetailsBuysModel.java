package com.ferreteria.tuercasytornillos.model;

import javax.persistence.Entity;
import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

import lombok.Data;

@Entity
@Table(name = "details_buys")
@Data
public class DetailsBuysModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idDetailBuy")
    private Long id;
    
    @Column(name = "idBuy")
    private Long idBuy;

    @Column(name = "idProduct")
    private Long idProduct;

    @Column(name = "quantity")
    private Integer quantity;

    @Column(name = "price")
    private Double price;

    @Column(name = "created_at")
    private String created_at;

    @Column(name = "updated_at")
    private String updated_at;
    
}
