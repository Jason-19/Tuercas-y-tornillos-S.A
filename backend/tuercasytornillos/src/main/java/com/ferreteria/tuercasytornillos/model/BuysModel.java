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
