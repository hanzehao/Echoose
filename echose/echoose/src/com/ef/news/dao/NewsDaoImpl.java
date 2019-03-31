package com.ef.news.dao;

import com.ef.entity.News;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * @program: eschool
 * @description: newDao
 * @author: EnergyFiled
 */
@Repository
public class NewsDaoImpl {

    @Resource
    private SessionFactory sessionFactory;

    public List<News> findNewById(int nid){
        Query query = this.sessionFactory.getCurrentSession().createQuery("from News where nid = ?");
        query.setParameter(0,nid);
        return query.list();
    }
}