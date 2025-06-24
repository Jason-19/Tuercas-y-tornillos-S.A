package com.ferreteria.tuercasytornillos.service;

import com.ferreteria.tuercasytornillos.model.EmployeeModel;
import com.ferreteria.tuercasytornillos.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeService {

    @Autowired
    private EmployeeRepository Rep;
    
    public List<EmployeeModel> getAll(){
        return Rep.findAll();
    }
    public EmployeeModel getbyId(Long id){
        return Rep.findById(id).orElse(null);
    }
    
    public EmployeeModel insert_employee(EmployeeModel employee){
        return Rep.save(employee);
    }

    public EmployeeModel update_employee(EmployeeModel employee){
        return Rep.save(employee);
    }

    public void delete_employee(Long id){
        Rep.deleteById(id);
    }
}


























