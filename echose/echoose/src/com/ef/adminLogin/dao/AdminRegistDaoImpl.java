package com.ef.adminLogin.dao;

import com.ef.entity.Administor;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * @program: eschool
 * @description: adminRegist
 * @author: EnergyFiled
 */

@Repository
public class AdminRegistDaoImpl {

    @Resource
    private SessionFactory sessionFactory;

    public List<Administor> findAllAdmin(){
        Query q = this.sessionFactory.getCurrentSession().createQuery("from Administor");
        System.out.println(q.list());
        return q.list();
    }

    public void saveAdmin(Administor administor){
        this.sessionFactory.getCurrentSession().save(administor);
    }
}