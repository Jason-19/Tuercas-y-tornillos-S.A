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
@Table(name = "ROLUSUARIO")
public class RolesModel {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "IDROL")
    private Long id;

    @Column(name = "NOMBRE")
    private String name;
}
