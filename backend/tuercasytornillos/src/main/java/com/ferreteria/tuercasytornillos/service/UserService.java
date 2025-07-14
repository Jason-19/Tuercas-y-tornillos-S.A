package com.ferreteria.tuercasytornillos.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ferreteria.tuercasytornillos.model.UserModel;
import com.ferreteria.tuercasytornillos.repository.UsersRespository;

@Service
public class UserService {
    
    @Autowired
    private UsersRespository usersRespository;

    public List<UserModel> getAllUsers(){
        return usersRespository.findAll();
    }

    public UserModel saveUser(UserModel userModel){
        return usersRespository.save(userModel);
    }

    public UserModel updateUser(UserModel userModel){
        return usersRespository.save(userModel);
    }

    public void deleteUser(Long id){
        usersRespository.deleteById(id);
    }

    public UserModel findById(Long id){
        return usersRespository.findById(id).orElse(null);
    }

}
