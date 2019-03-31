package com.ef.adminSchool.controllers;

import com.ef.adminSchool.services.AdminSchoolServiceImpl;
import com.ef.entity.School;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @program: eschool
 * @description: adminSchoolController
 * @author: EnergyFiled
 */

@Controller
@RequestMapping("adminschool")
public class AdminSchoolControllerImpl {

    @Resource
    private AdminSchoolServiceImpl adminSchoolService;

    @RequestMapping("/list")
    public String findAll(HttpSession session, HttpServletRequest request, HttpServletResponse response){
        List<School> adminschoolList = this.adminSchoolService.listAll();
        session.setAttribute("adminschoolList",adminschoolList);
        return "adminIndex";
    }

    @RequestMapping("/list2")
    public String findSchoolById(HttpSession session, @RequestParam("id") int scid){
        School school = this.adminSchoolService.findSchoolById(scid);
        session.setAttribute("school",school);
        return "adminUpdate";
    }

    @RequestMapping("/addschool")
    public String addSchool(HttpSession session,@RequestParam("name") String sname,@RequestParam("img") String simg,
                            @RequestParam("net") String snet, @RequestParam("belong") String sbelong,@RequestParam("score") String sscore){
        School school = new School();
        school.setSname(sname);
        school.setSimg(simg);
        school.setSbelong(sbelong);
        school.setSscore(sscore);
        school.setSnet(snet);
        this.adminSchoolService.saveSchool(school);
        session.setAttribute("school",school);
        List<School> adminschoolList = this.adminSchoolService.listAll();
        session.setAttribute("adminschoolList",adminschoolList);
        return "adminIndex2";
    }

    @RequestMapping("/removeschool")
    public String removeSchool(HttpSession session, @RequestParam("id") int id){
        this.adminSchoolService.deleteSchool(id);
        List<School> adminschoolList = this.adminSchoolService.listAll();
        session.setAttribute("adminschoolList",adminschoolList);
        return "adminIndex2";
    }

    @RequestMapping("/alterschool")
    public String alterSchool(HttpSession session,@RequestParam("schoolName") String sname,@RequestParam("schoolImg") String simg,
                              @RequestParam("schoolNet") String snet,@RequestParam("schoolBelong") String sbelong,@RequestParam("schoolScore") String sscore,
                              @RequestParam("id") int id){
        School school = (School) session.getAttribute("school");
        school.setSname(sname);
        school.setSimg(simg);
        school.setSnet(snet);
        school.setSbelong(sbelong);
        school.setSscore(sscore);
        this.adminSchoolService.updateSchool(school,id);
        session.setAttribute("school",school);
        List<School> adminschoolList = this.adminSchoolService.listAll();
        session.setAttribute("adminschoolList",adminschoolList);
        return "adminIndex2";
    }


}