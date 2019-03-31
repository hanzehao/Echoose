package com.ef.regist.dao;

import com.ef.entity.Studentuser;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * @program: eschool
 * @description: 注册数据库底层
 * @author: EnergyFiled
 */
@Repository
public class RegistDaoImpl {
    @Resource
    private SessionFactory sessionFactory;

    public List<Studentuser> findAllDtudentuser(){
        Query q = this.sessionFactory.getCurrentSession().createQuery("from Studentuser");
        return q.list();
    }

    public void saveStudentUser(Studentuser studentuser){
        this.sessionFactory.getCurrentSession().save(studentuser);
    }

}