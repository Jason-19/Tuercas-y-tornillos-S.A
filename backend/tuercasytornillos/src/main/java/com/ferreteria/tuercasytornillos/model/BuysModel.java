package com.ferreteria.tuercasytornillos.model;

import javax.persistence.Entity;
import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

import lombok.Data; 

@Data   
@Entity
@Table(name = "buys")
public class BuysModel {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idBuy")
    private Long id;

    @Column(name = "date")
    private String date;

    @Column(name = "total")
    private Double total;

    @Column(name = "idSupplier")
    private Long idSupplier;

    @Column(name = "idEmployee")
    private Long idEmployee;

    @Column(name = "created_at")
    private String created_at;
    
    @Column(name = "updated_at")
    private String updated_at;
}
