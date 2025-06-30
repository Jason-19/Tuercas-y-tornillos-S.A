package com.ferreteria.tuercasytornillos.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Column;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;


@Data
@Entity
@Table(name = "PRODUCTS")
public class ProductsModel {
    @Id
    @Column(name = "IDPRODUCT")
    private Long id;

    @Column(name = "name")
    private String name;
    @Column(name = "price")
    private Double price;
    @Column(name = "stock")
    private Integer stock;
  
    
}
