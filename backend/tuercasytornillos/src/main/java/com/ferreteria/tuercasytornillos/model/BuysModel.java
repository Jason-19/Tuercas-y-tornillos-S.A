package com.ferreteria.tuercasytornillos.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Column;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;

import lombok.Data; 

@Data   
@Entity
@Table(name = "COMPRA")
public class BuysModel {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "IDCOMPRA")
    private Long id;

    @Column(name = "FECHA")
    private String date;

    @Column(name = "TOTAL")
    private Double total;

    @Column(name = "IDPROVEEDOR")
    private Long idSupplier;

    @Column(name = "IDUSUARIO")
    private Long idUser;
}
