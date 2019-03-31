package com.ef.list.dao;

import com.ef.entity.Collegetype;
import com.ef.entity.School;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * @program: eschool
 * @description: ListDao
 * @author: EnergyFiled
 */

@Repository
public class ListDapImpl {

    @Resource
    private SessionFactory sessionFactory;

    public List<School> findAll(){
        Query q = this.sessionFactory.getCurrentSession().createQuery("from School");
        return q.list();
    }

    public List<School> queryForPage(int offset, int length){
        Query q = sessionFactory.getCurrentSession().createQuery("from School");
        q.setFirstResult(offset);
        q.setMaxResults(length);
        return q.list();
    }

    public List<Collegetype> findType(){
        Query q = this.sessionFactory.getCurrentSession().createQuery("from Collegetype");
        return q.list();
    }

    public void save(School school){
        this.sessionFactory.getCurrentSession().save(school);
    }

    public void update(School school){
        this.sessionFactory.getCurrentSession().update(school);
    }

    public void delete(School school){
        this.sessionFactory.getCurrentSession().delete(school);
    }

    public int getAllRowCount(){
        Query q = this.sessionFactory.getCurrentSession().createQuery("select count(*) from School");
        int count = ((Long)q.iterate().next()).intValue();
        return count;
    }
}