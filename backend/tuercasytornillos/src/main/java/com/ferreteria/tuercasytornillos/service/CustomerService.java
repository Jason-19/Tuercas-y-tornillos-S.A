package com.ferreteria.tuercasytornillos.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import com.ferreteria.tuercasytornillos.model.CustomerModel;
import com.ferreteria.tuercasytornillos.repository.CustomerRepository;
import java.util.List;

@Service
public class CustomerService {

    @Autowired
    private CustomerRepository Rep; 

    public List<CustomerModel> getAll(){
        return Rep.findAll();
    }

    public String insert_customer(@RequestBody CustomerModel customer){
        try {
            Rep.save(customer);
        } catch (Exception e) {
            return e.toString();
        }
        return customer.toString();
    }

    public CustomerModel getbyId(Long id){
        return Rep.findById(id).orElse(null);
    }
}
