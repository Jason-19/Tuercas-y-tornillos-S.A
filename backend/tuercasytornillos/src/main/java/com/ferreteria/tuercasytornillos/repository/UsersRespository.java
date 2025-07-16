package com.ferreteria.tuercasytornillos.repository;


import java.util.Optional;
import com.ferreteria.tuercasytornillos.model.UserModel;

import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;
@Repository
public interface UsersRespository extends JpaRepository<UserModel, Long> {
    Optional<UserModel> findByUsername(String username);
}
