package com.ferreteria.tuercasytornillos.controller;

import java.util.List;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import com.ferreteria.tuercasytornillos.dto.IdResponse;
import com.ferreteria.tuercasytornillos.model.EmployeeModel;
import com.ferreteria.tuercasytornillos.service.EmployeeService;

import io.swagger.v3.oas.annotations.tags.Tag;


@RestController
@RequestMapping("/employee")
@Tag(name = "Employee")
public class EmployeeController {
    
    @Autowired
    private EmployeeService employeeService;
    
    @PostMapping("/all")
    public List<EmployeeModel> getEmployees() {
        return employeeService.getAll();
        
    }
    
    @PostMapping("/add")
    public EmployeeModel createEmployee(@RequestBody EmployeeModel data) {
        employeeService.insert_employee(data);
        return data;
    }

    @PostMapping("/find")
    public EmployeeModel postMethodName(@RequestBody IdResponse body) {
        return employeeService.getbyId(body.getId());
        
    }
    @DeleteMapping("/delete")
    public void delete(@RequestBody IdResponse id) {
        employeeService.delete_employee(id.getId());
    }
}






















