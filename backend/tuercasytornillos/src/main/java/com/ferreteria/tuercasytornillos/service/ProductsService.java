package com.ferreteria.tuercasytornillos.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ferreteria.tuercasytornillos.model.ProductsModel;
import com.ferreteria.tuercasytornillos.model.SupplierModel;
import com.ferreteria.tuercasytornillos.model.StokeFull;
import com.ferreteria.tuercasytornillos.repository.ProductsRepository;
import com.ferreteria.tuercasytornillos.repository.SupplierRepository;

@Service
public class ProductsService {
    @Autowired
    private ProductsRepository rProd;
    @Autowired
    private SupplierRepository rSup;
    
    public List<ProductsModel> getAll(){
        return rProd.findAll();
    }
    public void insert_product(ProductsModel product){
        rProd.save(product);
    }

    public ProductsModel getbyId(Long id){
        return rProd.findById(id).orElse(null);
    }
    
    public ProductsModel update_product(ProductsModel product){
        return rProd.save(product);
    }
    public void delete_product(Long id){
        rProd.delete(id);
    }
    public  StokeFull stockFull(){
        return rProd.stockFull();
    }
  // supplier

    // supplier
    public List<SupplierModel> getSupplier(){
        return rSup.findAll();
    }

    public SupplierModel createSupplier( SupplierModel supplier) {
        return rSup.save(supplier);   
     }
}
