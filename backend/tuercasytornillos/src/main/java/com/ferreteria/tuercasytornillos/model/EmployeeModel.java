package com.ferreteria.tuercasytornillos.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Column;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import io.swagger.v3.oas.annotations.media.Schema;

import lombok.Data; 

@Data   
@Entity
@Table(name = "EMPLOYEES")
public class EmployeeModel {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "IDEMPLOYEE")
    @Schema(example = "1")
    private Long id;
    
    @Column(name = "name")
    @Schema(example = "John Doe")
    private String name;

    @Column(name = "role")
    @Schema(example = "admin")
    private String role;

    @Column(name = "password_hash")
    @Schema(example = "admin")
    private String password;
    
    @Column(name = "email")
    @Schema(example = "john@example.com")
    private String email;

    @Column(name = "phone")
    @Schema(example = "1234567890")
    private String phone;
   
    @Column(name = "created_at")
    @Schema(example = "2023-01-01")
    private String created_at;

    @Column(name = "updated_at")
    @Schema(example = "2023-01-01")
    private String updated_at;

}
