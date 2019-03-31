package com.ef.adminSchool.dao;

import com.ef.entity.Collegetype;
import com.ef.entity.School;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * @program: eschool
 * @description: adminSchoolDao
 * @author: EnergyFiled
 */

@Repository
public class AdminSchoolDaoImpl {

    @Resource
    private SessionFactory sessionFactory;

    public List<School> findAll(){
        Query  q = this.sessionFactory.getCurrentSession().createQuery("from School");
        return q.list();
    }

    public School findSchoolById(int scid){
        Query q = this.sessionFactory.getCurrentSession().createQuery("from School where sid = ?");
        q.setParameter(0,scid);
        return (School) q.uniqueResult();
    }

    public Collegetype findByCtname(String name){
        Query query = this.sessionFactory.getCurrentSession().createQuery("from Collegetype where ctname=?");
        query.setParameter(0,name);
        return (Collegetype) query.uniqueResult();
    }

    public void saveSchool(School sc){
        Session session = this.sessionFactory.getCurrentSession();
        School school = new School();
        school.setSname(sc.getSname());
        school.setSimg(sc.getSimg());
        school.setSbelong(sc.getSbelong());
        school.setSscore(sc.getSscore());
        school.setSnet(sc.getSnet());
        session.save(school);
    }

    public void deleteSchool(int id){
        Session session = this.sessionFactory.getCurrentSession();
        Query query = session.createQuery("from School where sid = ?");
        query.setParameter(0,id);
        School school = (School) query.uniqueResult();
        session.delete(school);
    }

    public Collegetype findByCtid(int id){
        Query query = this.sessionFactory.getCurrentSession().createQuery("from School where stid = ?");
        query.setParameter(0,id);
        return (Collegetype) query.uniqueResult();
    }

    public void updateSchool(School sc, int id){
        Session session = this.sessionFactory.getCurrentSession();
        School school = this.findSchoolById(id);
        school.setSname(sc.getSname());
        school.setSimg(sc.getSimg());
        school.setSbelong(sc.getSbelong());
        school.setSscore(sc.getSscore());
        school.setSnet(sc.getSnet());
        session.update(school);
    }
}