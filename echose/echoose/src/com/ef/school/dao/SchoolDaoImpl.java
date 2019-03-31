package com.ef.school.dao;

import com.ef.entity.News;
import com.ef.entity.Question;
import com.ef.entity.School;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * @program: eschool
 * @description: schoolDao
 * @author: EnergyFiled
 */
@Repository
public class SchoolDaoImpl {

    @Resource
    private SessionFactory sessionFactory;

    public List<School> findAll(){
        Query query = this.sessionFactory.getCurrentSession().createQuery("from School");
        return query.list();
    }

    public List<News> findAllNews(){
        Query query = this.sessionFactory.getCurrentSession().createQuery("from News");
        return query.list();
    }

    public List<Question> findAllQuesion(){
        Query query = this.sessionFactory.getCurrentSession().createQuery("from Question");
        return query.list();
    }

    public List<School> findSchol(String sname){
        Session session = this.sessionFactory.getCurrentSession();
        Query query = session.createQuery("from School where sname = ?");
        query.setParameter(0,sname);
        return query.list();
    }

}