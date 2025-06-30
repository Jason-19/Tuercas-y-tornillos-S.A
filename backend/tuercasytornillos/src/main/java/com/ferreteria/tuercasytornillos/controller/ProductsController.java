package com.ferreteria.tuercasytornillos.controller;

import java.util.List;

import io.swagger.v3.oas.annotations.tags.Tag;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.ferreteria.tuercasytornillos.model.ProductsModel;
import com.ferreteria.tuercasytornillos.service.ProductsService;


@RestController
@RequestMapping("/products")
@Tag(name = "Products")
public class ProductsController {

    @Autowired
    private ProductsService productsService;

    @PostMapping("/all")
    public List<ProductsModel> getAll() {
        try {
            return productsService.getAll();
        } catch (Exception e) {
            return null;
    }
    }
    
}
