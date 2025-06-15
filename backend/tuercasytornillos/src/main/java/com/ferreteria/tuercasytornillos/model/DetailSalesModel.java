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
@Table(name = "detail_sales")
public class DetailSalesModel {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idDetailSales")
    private Long id;

    @Column(name = "idSales")
    private Long idSales;

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
