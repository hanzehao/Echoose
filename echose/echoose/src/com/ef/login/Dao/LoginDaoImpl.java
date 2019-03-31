package com.ef.login.Dao;

import com.ef.entity.Studentuser;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository
public class LoginDaoImpl {

    @Resource
    private SessionFactory sessionFactory;

    public List<Studentuser> findAllStudentuser(){
        Query q = this.sessionFactory.getCurrentSession().createQuery("from Studentuser");
        return  q.list();
    }

    public void saveSyudentUser(Studentuser studentuser){
        this.sessionFactory.getCurrentSession().save(studentuser);
    }

}
