package com.ferreteria.tuercasytornillos.controller;

import java.util.List;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.ferreteria.tuercasytornillos.dto.IdResponse;
import com.ferreteria.tuercasytornillos.model.UserModel;
import com.ferreteria.tuercasytornillos.service.UserService;
import org.springframework.web.bind.annotation.RequestBody;




@RestController
@RequestMapping("/user")
@Tag(name = "User")
public class UserController {
    
    @Autowired
    private UserService userService;

    @PostMapping("/all")
    public List<UserModel> getAll() {
        try {
            return userService.getAllUsers();
        } catch (Exception e) {
            return null;
        }
    }
    @PostMapping("/find")
    public UserModel findByPath(@RequestBody IdResponse id) {
        try {
            return userService.findById(id.getId());
        } catch (Exception e) {
            return null;
        }
    }

     @PostMapping("/add")
    public UserModel createUser(@RequestBody UserModel data) {
        userService.saveUser(data);
        return data;
    }
    
}
