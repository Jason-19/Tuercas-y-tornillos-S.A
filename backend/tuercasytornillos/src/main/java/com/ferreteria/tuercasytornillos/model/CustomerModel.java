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
@Table(name = "CUSTOMERS")
public class CustomerModel {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "IDCUSTOMER")
    @Schema(example = "1")
    private Long id;
    
    @Column(name = "name")
    @Schema(example = "John Doe")
    private String first_name;

    @Column(name = "email")
    @Schema(example = "jason@example.com")
    private String email;

    @Column(name = "phone")
    @Schema(example = "1234567890")
    private String phone;

    @Column(name = "address")
    @Schema(example = "Calle 123")
    private String address;

    @Column(name = "created_at")
    @Schema(example = "2023-01-01")
    private String created_at;

    @Column(name = "updated_at")
    @Schema(example = "2023-01-01")
    private String updated_at;

    public long getId() {
        return id;
    }
}
