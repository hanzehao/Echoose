package com.ef.school.controllers;

import com.ef.entity.News;
import com.ef.entity.Question;
import com.ef.entity.School;
import com.ef.school.services.SchoolServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @program: eschool
 * @description: schoolController
 * @author: EnergyFiled
 */

@Controller
@RequestMapping("school")
public class SchoolControllerImpl {
    @Resource
    private SchoolServiceImpl schoolService;

    @RequestMapping("/list")
    public String findAll(HttpSession session, HttpServletRequest request, HttpServletResponse response){
        List<School> schoolList = this.schoolService.listAll();
        session.setAttribute("schoolList",schoolList);

        List<News> newsList = this.schoolService.listAllNews();
        session.setAttribute("newList",newsList);

        List<Question> questionList = this.schoolService.listAllQUestion();
        session.setAttribute("questionList",questionList);
        return "index";
    }
}