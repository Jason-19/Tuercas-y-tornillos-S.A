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
@Table(name = "VENTA")
public class SalesModel {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "IDVENTA")
    private Long id;
    @Column(name = "FECHA")
    private String date;
    
    @Column(name = "TOTAL")
    private Double total;

    @Column(name = "IDCLIENTE")
    private Long idCustomer;
    
    @Column(name = "IDEMPLEADO")
    private Long idEmployee;



}
