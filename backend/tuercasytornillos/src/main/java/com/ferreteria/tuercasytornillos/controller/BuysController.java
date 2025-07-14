package com.ferreteria.tuercasytornillos.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.PostMapping;

import com.ferreteria.tuercasytornillos.model.BuyResumen;
import com.ferreteria.tuercasytornillos.model.BuysModel;
import com.ferreteria.tuercasytornillos.service.BuysService;
import io.swagger.v3.oas.annotations.tags.Tag;
import java.util.List;


@RestController
@RequestMapping("/buys")
@Tag(name = "Buys", description = "Buys")
public class BuysController {

    @Autowired
    private BuysService buyService;

    @PostMapping("/resumen")
    public List<BuyResumen> obtenerResumenCompras() {
        List<BuyResumen> compras = buyService.getBuys();
        return compras;
    }
}
