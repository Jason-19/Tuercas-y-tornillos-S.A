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
@Table(name = "EMPLEADO")
public class EmployeeModel {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "IDEMPLOYEE")
    @Schema(example = "1")
    private Long id;
    
    @Column(name = "NOMBRE")
    @Schema(example = "John Doe")
    private String name;

    @Column(name = "PUESTO")
    @Schema(example = "admin")
    private String role;

    @Column(name = "SALARIO")
    @Schema(example = "1000")
    private Double salary;

    @Column(name = "FECHAINGRESO")
    @Schema(example = "2022-01-01")
    private String date_of_entry;
    
    @Column(name = "IDSUCURSAL")
    @Schema(example = "1")
    private Long idBranch;

    @Column(name = "IDUSUARIO")
    @Schema(example = "1")
    private Long idUser;
}
