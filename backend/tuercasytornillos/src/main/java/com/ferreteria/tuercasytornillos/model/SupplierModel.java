package com.ferreteria.tuercasytornillos.model;

import jakarta.persistence.Entity;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.persistence.Column;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;

import lombok.Data;

@Entity
@Table(name = "PROVEEDOR")
@Data
public class SupplierModel {
    
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "provider_seq")
    @SequenceGenerator(name = "provider_seq", sequenceName = "provider_seq", allocationSize = 1)
    @Column(name = "IDPROVEEDOR")
    @Schema(example = "1")
    private Long id; 

    @Column(name = "NOMBRE")
    @Schema(example = "Ferreteria")
    private String name;

    @Column(name = "CONTACTO")
    @Schema(example = "John Doe")
    private String contact;

    @Column(name = "PHONE")
    @Schema(example = "1234567890")
    private String phone;

    @Column(name = "IDDIRECCION")
    @Schema(example = "1")
    private long iddireccion;

}



