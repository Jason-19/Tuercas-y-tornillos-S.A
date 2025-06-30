package com.ferreteria.tuercasytornillos.repository;

import org.springframework.stereotype.Repository;
import com.ferreteria.tuercasytornillos.model.ProductsModel;
import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface ProductsRepository extends JpaRepository<ProductsModel, Long> {
    
}
