package com.ef.login.services;


import com.ef.entity.Studentuser;
import com.ef.login.Dao.LoginDaoImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;



@Service
@Transactional
public class LoginServiceImpl {

    @Resource
    private LoginDaoImpl loginDao;


    @Transactional(readOnly = false)
    public void  saveStudentUser(Studentuser studentuser){
        this.loginDao.saveSyudentUser(studentuser);
    }

    public List<Studentuser> findAllStudentuser(){
        return this.loginDao.findAllStudentuser();
    }
}
