package com.ferreteria.tuercasytornillos.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIncludeProperties;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDate;

@Entity
@Data
@Table(name = "VENTA", schema = "TORNILLOS")
public class VentasModel {
    
    @Id
    @Column(name = "IDVENTA")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Schema(example = "1")
    private Long idVenta;
    
    @Column(name = "FECHA")
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Schema(example = "2023-10-15")
    private LocalDate fecha;
    
    @Column(name = "TOTAL")
    @Schema(example = "150.50")
    private Double total;
    
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "IDCLIENTE")
    @JsonIncludeProperties({"id", "first_name", "email", "phone"})
    private CustomerModel cliente;
}