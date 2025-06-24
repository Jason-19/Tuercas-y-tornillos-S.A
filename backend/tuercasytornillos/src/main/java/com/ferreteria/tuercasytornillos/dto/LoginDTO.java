
package com.ferreteria.tuercasytornillos.dto;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;

@Data
public class LoginDTO {

    @NotBlank(message = "El usuario es obligatorio")
    @Schema(example = "admin")
    private String username;

    @NotBlank(message = "La contraseña es obligatoria")
    @Schema(example = "admin")
    private String password;
}