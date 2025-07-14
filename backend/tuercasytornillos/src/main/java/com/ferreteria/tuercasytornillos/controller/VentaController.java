package com.ferreteria.tuercasytornillos.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import com.ferreteria.tuercasytornillos.service.VentasService;
import com.ferreteria.tuercasytornillos.model.VentaResumen;
import com.ferreteria.tuercasytornillos.model.VentasDiariaHoy;
import com.ferreteria.tuercasytornillos.model.VentasModel;
import io.swagger.v3.oas.annotations.tags.Tag;
import java.util.List;
import org.springframework.web.bind.annotation.PostMapping;


@RestController
@RequestMapping("/sales")
@Tag(name = "Ventas", description = "Operaciones relacionadas con las ventas")
public class VentaController {
    
    @Autowired
    private VentasService ventaService;
    
   @GetMapping("/list")
    public List<VentasModel> listarVentas() {
        List<VentasModel> ventas = ventaService.obtenerTodasVentas();
        return ventas;
    }
   @GetMapping("/details")
    public List<VentaResumen> listarVentasConDetalles() {
        List<VentaResumen> ventas = ventaService.obtenerTodasVentasConDetalles();
        return ventas;
    }

    @PostMapping("/daily/report")
    public VentasDiariaHoy obtenerReporteDiario() {
        return ventaService.obtenerReporteDiario();
    }
    
}