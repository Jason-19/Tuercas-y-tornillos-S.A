package com.ferreteria.tuercasytornillos.controller;

import java.util.List;

import io.swagger.v3.oas.annotations.tags.Tag;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.ferreteria.tuercasytornillos.dto.IdResponse;
import com.ferreteria.tuercasytornillos.model.ProductsModel;
import com.ferreteria.tuercasytornillos.model.StokeFull;
import com.ferreteria.tuercasytornillos.service.ProductsService;
import org.springframework.web.bind.annotation.PutMapping;

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

    @PostMapping("/add")
    public String addProduct(@RequestBody ProductsModel entity) {
        try {
            productsService.insert_product(entity);
            return entity.toString();
        } catch (Exception e) {
            return e.toString();
        }

    }

    @PostMapping("/find")
    public ProductsModel findProducts(@RequestBody IdResponse entity) {

        return productsService.getbyId(entity.getId());
    }

    @PutMapping("/update")
    public ResponseEntity<?> update_product(@RequestBody ProductsModel product) {
        try {
            productsService.update_product(product);
            return ResponseEntity.ok().body(product);
        } catch (Exception e) {
            return ResponseEntity
                    .status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("Error al actualizar producto: " + e.getMessage());
        }
    }

    @PostMapping("/delete/{id}")
    public Long delete(@Param("id") Long id) {
        productsService.delete_product(id);
        return id;
    }

    @PostMapping("/stock/full")
    public StokeFull stockFull() {
        return productsService.stockFull();

    }

}
