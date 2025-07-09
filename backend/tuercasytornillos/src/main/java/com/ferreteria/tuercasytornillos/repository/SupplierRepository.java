package com.ferreteria.tuercasytornillos.repository;

import org.springframework.stereotype.Repository;
import com.ferreteria.tuercasytornillos.model.SupplierModel;
import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface SupplierRepository extends JpaRepository<SupplierModel, Long> {
    
}
