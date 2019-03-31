package com.ef.adminSchool.services;

import com.ef.adminSchool.dao.AdminSchoolDaoImpl;
import com.ef.entity.Collegetype;
import com.ef.entity.School;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * @program: eschool
 * @description: adminSchoolServie
 * @author: EnergyFiled
 */

@Service
@Transactional
public class AdminSchoolServiceImpl {

    @Resource
    private AdminSchoolDaoImpl adminSchoolDao;

    public List<School> listAll(){
        return this.adminSchoolDao.findAll();
    }

    public School findSchoolById(int scid){
        return this.adminSchoolDao.findSchoolById(scid);
    }

    public Collegetype findByCtname(String name){
        return this.adminSchoolDao.findByCtname(name);
    }

    @Transactional(readOnly = false)
    public void saveSchool(School sc){
        this.adminSchoolDao.saveSchool(sc);
    }

    @Transactional(readOnly = false)
    public void deleteSchool(int id){
        this.adminSchoolDao.deleteSchool(id);
    }

    @Transactional(readOnly = false)
    public Collegetype findByCtid(int id){
        return this.adminSchoolDao.findByCtid(id);
    }

    @Transactional(readOnly = false)
    public void updateSchool(School school,int id){
        this.adminSchoolDao.updateSchool(school,id);
    }
}