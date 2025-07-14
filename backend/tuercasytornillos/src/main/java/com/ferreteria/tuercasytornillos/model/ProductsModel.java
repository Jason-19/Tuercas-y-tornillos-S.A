package com.ferreteria.tuercasytornillos.model;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Column;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.Data;


@Data
@Entity
@Table(name = "PRODUCTO")
public class ProductsModel {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "producto_seq")
    @SequenceGenerator(name = "producto_seq", sequenceName = "producto_seq", allocationSize = 1)
    @Column(name = "IDPRODUCTO")
    @Schema(example = "1")
    private Long id;

    @Column(name = "NOMBRE")
    @Schema(example = "Tornillo")
    private String name;

    @Column(name = "DESCRIPCION")
    @Schema(example = "Tornillo de 1/2 pulgada")
    private String descripcion;

    @Column(name = "PRECIOUNITARIO")
    @Schema(example = "10.99")
    private Double price;

    @Column(name = "CANTIDADSTOCK")
    @Schema(example = "10")
    private Integer stock;

    @Column(name = "IDPROVEEDOR")
    @Schema(example = "1")  
    private Long idProveedor;

    @Column(name = "IDCATEGORIA")
    @Schema(example = "1")
    private Long idCategoria;

    @Column(name = "IDSUBCATEGORIA")
    @Schema(example = "1")
    private Long idSubcategoria;

    @Column(name = "IDMARCA")
    @Schema(example = "1")
    private Long idMarca;

    @Column(name = "IDUNIDAD")
    @Schema(example = "1")
    private Long idUnidad;

    @Column(name = "IMAGE_URL")
    @Schema(example = "imagen.jpg")
    private String imageUrl;
  
    @Column(name = "STATUS")
    @Schema(example = "A")
    private String status;


    
}
