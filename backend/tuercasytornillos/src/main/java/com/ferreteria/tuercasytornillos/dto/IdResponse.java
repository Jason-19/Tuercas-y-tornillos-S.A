package com.ferreteria.tuercasytornillos.dto;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Data
public class IdResponse { 

    @Schema(example = "1")
    private Long id; 
}