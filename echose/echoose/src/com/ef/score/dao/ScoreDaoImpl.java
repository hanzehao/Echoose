package com.ef.score.dao;

import com.ef.entity.School;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * @program: eschool
 * @description: scoredao
 * @author: EnergyFiled
 */
@Repository
public class ScoreDaoImpl {

    @Resource
    private SessionFactory sessionFactory;

    public List<School> findByScore(String cscore){
            Query q = this.sessionFactory.getCurrentSession().createQuery("from School where sscore >= ?");
            q.setParameter(0,cscore);
            return q.list();
    }
}