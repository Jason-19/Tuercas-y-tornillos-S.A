package com.ferreteria.tuercasytornillos.service;
import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

// import com.ferreteria.tuercasytornillos.dto.ProductoVentaDTO;
// import com.ferreteria.tuercasytornillos.dto.VentaDTO;
import com.ferreteria.tuercasytornillos.model.VentasModel;
import com.ferreteria.tuercasytornillos.model.VentaResumen;
import com.ferreteria.tuercasytornillos.repository.VentaRepository;

@Service
public class VentasService {

    @Autowired
    private VentaRepository ventaRepository;

     public List<VentasModel> obtenerTodasVentas() {
        return ventaRepository.findAllByOrderByFechaDesc();
    }
    
    public List<VentaResumen> obtenerTodasVentasConDetalles() {
        return ventaRepository.findAllVentasResumen();
    }
}

