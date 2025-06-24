package com.ferreteria.tuercasytornillos.controller;

import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.web.bind.annotation.GetMapping;
// import org.springframework.web.bind.annotation.RequestParam;

import com.ferreteria.tuercasytornillos.dto.IdResponse;
import com.ferreteria.tuercasytornillos.model.CustomerModel;
import com.ferreteria.tuercasytornillos.service.CustomerService;

import io.swagger.v3.oas.annotations.tags.Tag;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@RestController
@RequestMapping("/customer")
@Tag(name = "Customer")
public class CustomerController {
    
    @Autowired
    private CustomerService customerService;
    // @RequestParam String param
    @PostMapping("/all")
    public List<CustomerModel> getCustomers() {        
        return customerService.getAll();
    }
    @PostMapping("/add")
    public CustomerModel createCustomer(@RequestBody CustomerModel data) {
     
        customerService.insert_customer(data);
        System.out.println(customerService.insert_customer(data));
        return data;
    }
    @PostMapping("/find")
    public CustomerModel findById(@RequestBody IdResponse id) {
        
        return customerService.getbyId(id.getId());
    }
    
    
}
