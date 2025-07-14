package com.ferreteria.tuercasytornillos.repository;

import org.springframework.stereotype.Repository;
import com.ferreteria.tuercasytornillos.model.ProductsModel;
import com.ferreteria.tuercasytornillos.model.StokeFull;
import jakarta.transaction.Transactional;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

@Repository
public interface ProductsRepository extends JpaRepository<ProductsModel, Long> {

     @Query(value = "SELECT * FROM TORNILLOS.PRODUCTO WHERE STATUS = 'A'",
           nativeQuery = true)
    List<ProductsModel> findAll();

    @Modifying
    @Transactional
     @Query(value = "UPDATE TORNILLOS.PRODUCTO SET STATUS = 'I' WHERE IDPRODUCTO = ?1",
           nativeQuery = true)
    void delete(Long id);

      
    @Query(value = "SELECT SUM(CANTIDADSTOCK) AS STOCK FROM PRODUCTO",nativeQuery = true)
      StokeFull stockFull();
}
