package com.ef.news.services;

import com.ef.entity.News;
import com.ef.news.dao.NewsDaoImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * @program: eschool
 * @description: newsService
 * @author: EnergyFiled
 */
@Service
@Transactional
public class NewsServiceImpl {
    @Resource
    private NewsDaoImpl newsDao;

    public List<News> listNewsById(int nid){
        return this.newsDao.findNewById(nid);
    }
}