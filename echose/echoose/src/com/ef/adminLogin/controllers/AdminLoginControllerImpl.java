package com.ef.adminLogin.controllers;

import com.ef.adminLogin.services.AdminRegistServiceImpl;
import com.ef.entity.Administor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @program: eschool
 * @description: AdminLogin
 * @author: EnergyFiled
 */
@Controller

public class AdminLoginControllerImpl {

    @Resource
    private AdminRegistServiceImpl adminRegistService;

    @RequestMapping("administorlogin")
    public String loginUser(Model model, @RequestParam("aname") String name, @RequestParam("apassword") String pwd, HttpSession session){
        List<Administor> adminlist = this.adminRegistService.listAllAdmin();
        model.addAttribute("adminlist",adminlist);
        for (int i = 0; i < adminlist.size(); i++){
            if(adminlist.get(i).getAname().equals(name) && adminlist.get(i).getApassword().equals(pwd)){
                session.setAttribute("adminname",name);
                session.setAttribute("adminpasswprd",pwd);
                session.setAttribute("admin",adminlist.get(i));
                return "redirct:adminschool/list";
            }
        }
        return "adminlogin";
    }

    @RequestMapping("/adminoff")
    public String adminoff(HttpSession session){
        session.invalidate();
        return "login";
    }
}