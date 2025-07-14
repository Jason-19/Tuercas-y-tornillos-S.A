package com.ferreteria.tuercasytornillos.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ferreteria.tuercasytornillos.model.BuyResumen;
import com.ferreteria.tuercasytornillos.repository.BuysRepository;

@Service
public class BuysService {
    
    @Autowired
    private BuysRepository Rep;

    public List<BuyResumen> getBuys() {
        return Rep.resumenCompras();
    }
}
