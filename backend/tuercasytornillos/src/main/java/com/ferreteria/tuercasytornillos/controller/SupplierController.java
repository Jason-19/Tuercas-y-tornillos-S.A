package com.ferreteria.tuercasytornillos.controller;

import io.swagger.v3.oas.annotations.tags.Tag;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.ferreteria.tuercasytornillos.model.SupplierModel;
import com.ferreteria.tuercasytornillos.service.ProductsService;
import org.springframework.web.bind.annotation.RequestBody;


@Tag(name = "Supplier", description = "Supplier endpoints")
@RestController
@RequestMapping("/supplier")

public class SupplierController {
    @Autowired
    private ProductsService productsService;

    @PostMapping("/all")
    public List<SupplierModel> getSupplierModels() {
        return productsService.getSupplier();
    }

    @PostMapping("/add")
    public SupplierModel addSupplier(@RequestBody SupplierModel supplier) {
        return productsService.createSupplier(supplier);
    }
    

}
