package com.ferreteria.tuercasytornillos.repository;

import com.ferreteria.tuercasytornillos.model.CustomerModel;
import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepository extends JpaRepository<CustomerModel, Long> {

}
