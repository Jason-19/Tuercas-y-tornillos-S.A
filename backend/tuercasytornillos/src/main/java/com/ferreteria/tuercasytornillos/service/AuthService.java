package com.ferreteria.tuercasytornillos.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ferreteria.tuercasytornillos.model.UserModel;
import com.ferreteria.tuercasytornillos.repository.UsersRespository;

@Service
public class AuthService {

    @Autowired
    private UsersRespository userRepository;


    public Optional<UserModel> authenticate(String username, String password) {
        Optional<UserModel> userOpt = userRepository.findByUsername(username);
        if (userOpt.isPresent()) {
            UserModel user = userOpt.get();
            if (user.getPassword().equals(password)) {
                return Optional.of(user);
            }
        }
        return Optional.empty();
    }

}
