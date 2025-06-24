package com.ferreteria.tuercasytornillos.dto;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Data
public class RegisterDTO {
    
    
    @Schema(example = "John Doe")    
    private String name;
    @Schema(example = "john@example.com")
    private String email;
    @Schema(example = "admin")
    private String password;
}
