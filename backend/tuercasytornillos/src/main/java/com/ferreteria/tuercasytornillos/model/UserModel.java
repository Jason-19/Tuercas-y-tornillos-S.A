package com.ferreteria.tuercasytornillos.model;


import jakarta.persistence.Entity;
import jakarta.persistence.Column;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;   
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import com.ferreteria.tuercasytornillos.model.RolesModel;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Data
@Entity
@Table(name = "USUARIO")
public class UserModel {
    
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "user_seq")
    @SequenceGenerator(name = "user_seq", sequenceName = "user_seq", allocationSize = 1)
    @Schema(example = "1")
    @Column(name = "IDUSUARIO")
    private Long id;

    @Column(name = "NOMBRE")
    @Schema(example = "John Doe")
    private String name;
    
    @ManyToOne
    @JoinColumn(name = "IDROL", referencedColumnName = "IDROL")
    private RolesModel role;

    @Column(name = "EMAIL")
    @Schema(example = "j@example.com")
    private String email;

    @Column(name = "USERNAME")
    @Schema(example = "jdnoe")
    private String username;

    @Column(name = "CONTRASENA")
    @Schema(example = "1234")
    private String password;

    public Long getId() {
        return id;
    }
    public String getName() {
        return name;
    }
    public RolesModel getRole() {
        return role;
    }
    public String getEmail() {
        return email;
    }
    public String getUsername() {
        return username;
    }
    public String getPassword() {
        return password;
    }
}
