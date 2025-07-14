package com.ferreteria.tuercasytornillos.controller;
import com.ferreteria.tuercasytornillos.dto.RegisterDTO;
import com.ferreteria.tuercasytornillos.model.UserModel;
import com.ferreteria.tuercasytornillos.dto.LoginDTO;
import com.ferreteria.tuercasytornillos.dto.AuthResponse;
import com.ferreteria.tuercasytornillos.utils.JwtUtil;

import java.util.Optional;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.beans.factory.annotation.Autowired;
import com.ferreteria.tuercasytornillos.service.AuthService;


import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;

@RestController
@Tag(name = "Authentication", description = "Endpoints for authentication")
@RequestMapping("/auth")
public class Auth {
   
    @Autowired
    private AuthService userService;
    
    @PostMapping("/login")
    public ResponseEntity<? > login(@RequestBody @Valid LoginDTO data){
       Optional<UserModel> userOpt = userService.authenticate(data.getUsername(), data.getPassword());
    
        if (userOpt.isPresent()) {
            UserModel user = userOpt.get();
            System.out.println(user);
            JwtUtil.setToken(user.getId().toString(), user.getRole().getId().toString());
            return ResponseEntity.ok(new AuthResponse(JwtUtil.getToken()));
        } else {
            return ResponseEntity.status(401).body("Credenciales incorrectas");
        }
    }


    @PostMapping("/register")
    public ResponseEntity<?> register(@RequestBody @Valid RegisterDTO data){
        
       return ResponseEntity.ok( data);
    }
        
    
    

}

