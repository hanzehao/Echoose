package com.ef.regist.services;

import com.ef.entity.Studentuser;
import com.ef.regist.dao.RegistDaoImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * @program: eschool
 * @description: registservice
 * @author: EnergyFiled
 */
@Service
@Transactional
public class RegistServicesImpl {
    @Resource
    private RegistDaoImpl registDao;

    @Transactional(readOnly = false)
    public void saveStudentUser(Studentuser studentuser){
        this.registDao.saveStudentUser(studentuser);
    }

    public List<Studentuser> findAllStudentuser(){
        return this.registDao.findAllDtudentuser();
    }

}