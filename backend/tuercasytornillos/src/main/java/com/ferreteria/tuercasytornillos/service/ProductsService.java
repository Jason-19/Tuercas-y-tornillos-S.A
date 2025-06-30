package com.ferreteria.tuercasytornillos.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ferreteria.tuercasytornillos.model.ProductsModel;
import com.ferreteria.tuercasytornillos.repository.ProductsRepository;

@Service
public class ProductsService {
    @Autowired
    private ProductsRepository Rep;
    public List<ProductsModel> getAll(){
        return Rep.findAll();
    }
}
