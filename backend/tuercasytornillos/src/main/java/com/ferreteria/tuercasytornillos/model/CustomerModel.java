package com.ferreteria.tuercasytornillos.model;

import jakarta.persistence.Entity;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.persistence.Column;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;

import lombok.Data;

@Entity
@Data
@Table(name = "CLIENTE")
public class CustomerModel {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "IDCLIENTE")
    @Schema(example = "1")
    private Long id;
    
    @Column(name = "NOMBRE")
    @Schema(example = "John Doe")
    private String first_name;

    @Column(name = "EMAIL")
    @Schema(example = "jason@example.com")
    private String email;

    @Column(name = "TELEFONO")
    @Schema(example = "1234567890")
    private String phone;

    public long getId() {
        return id;
    }
}