package com.ferreteria.tuercasytornillos.controller;
import com.ferreteria.tuercasytornillos.dto.RegisterDTO;
import com.ferreteria.tuercasytornillos.service.CustomerService;
import com.ferreteria.tuercasytornillos.dto.LoginDTO;
import com.ferreteria.tuercasytornillos.dto.AuthResponse;
import com.ferreteria.tuercasytornillos.utils.JwtUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;

@RestController
@Tag(name = "Authentication", description = "Endpoints for authentication")
@RequestMapping("/auth")
public class Auth {
   
    
    
    @PostMapping("/login")
    public ResponseEntity<? > login(@RequestBody @Valid LoginDTO data){
        JwtUtil.setToken(data);
        System.out.println(data);
        String user = data.getUsername();
        String password = data.getPassword();

         if (user.equals("admin") && password.equals("admin")) {
            return ResponseEntity.ok( new AuthResponse(JwtUtil.getToken()) );
        } else {
            return ResponseEntity.status(401).body("Credenciales incorrectas");
        }
    }


    @PostMapping("/register")
    public ResponseEntity<?> register(@RequestBody @Valid RegisterDTO data){
        
       return ResponseEntity.ok( data);
    }
        
    
    

}

