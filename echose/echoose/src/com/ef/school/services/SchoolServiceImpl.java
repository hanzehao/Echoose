package com.ef.school.services;

import com.ef.entity.News;
import com.ef.entity.Question;
import com.ef.entity.School;
import com.ef.school.dao.SchoolDaoImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * @program: eschool
 * @description: schoolService
 * @author: EnergyFiled
 */
@Service
@Transactional
public class SchoolServiceImpl {

    @Resource
    private SchoolDaoImpl schoolDao;

    public List<School> listAll(){
        return this.schoolDao.findAll();
    }

    public List<News> listAllNews(){
        return this.schoolDao.findAllNews();
    }

    public List<Question> listAllQUestion(){
        return this.schoolDao.findAllQuesion();
    }

    public List<School> findSchool(String sname){
        return this.schoolDao.findSchol(sname);
    }
}