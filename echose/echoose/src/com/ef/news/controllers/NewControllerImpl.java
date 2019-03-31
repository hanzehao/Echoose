package com.ef.news.controllers;

import com.ef.entity.News;
import com.ef.news.services.NewsServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestBindingException;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @program: eschool
 * @description: newsController
 * @author: EnergyFiled
 */
@Controller
@RequestMapping("news")
public class NewControllerImpl {

    @Resource
    private NewsServiceImpl newsService;

    public String findAff(HttpSession session, HttpServletRequest request, HttpServletResponse response, @RequestParam("nid") int nid){
        List<News> newsList = this.newsService.listNewsById(nid);
        session.setAttribute("newList1",newsList);
        return "news";
    }
}