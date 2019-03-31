package com.ef.adminLogin.services;

import com.ef.adminLogin.dao.AdminRegistDaoImpl;
import com.ef.entity.Administor;
import org.hibernate.annotations.Source;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @program: eschool
 * @description: AdminService
 * @author: EnergyFiled
 */

@Service
@Transactional
public class AdminRegistServiceImpl {

    @Source
    private AdminRegistDaoImpl adminRegistDao;

    public List<Administor> listAllAdmin(){
        return this.adminRegistDao.findAllAdmin();
    }

    @Transactional(readOnly = false)
    public void saveAdmin(Administor administor){
        this.adminRegistDao.saveAdmin(administor);
    }
}