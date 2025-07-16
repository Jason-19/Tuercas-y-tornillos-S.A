package com.ferreteria.tuercasytornillos.repository;

import com.ferreteria.tuercasytornillos.model.CustomerModel;

import jakarta.transaction.Transactional;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepository extends JpaRepository<CustomerModel, Long> {
    @Query(value = "SELECT * FROM CLIENTE WHERE STATUS = 'A'", nativeQuery = true)
    List<CustomerModel> getAllProducts();
    
    @Modifying
    @Transactional
    @Query(value = "UPDATE TORNILLOS.CLIENTE SET STATUS = 'I' WHERE IDCLIENTE = ?1", nativeQuery = true)
    void deleteCustomer(Long id);
}
