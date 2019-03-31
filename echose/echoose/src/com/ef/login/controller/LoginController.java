package com.ef.login.controller;

import com.ef.entity.Studentuser;
import com.ef.login.services.LoginServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @program: eschool
 * @description: loginController
 * @author: EnergyFiled
 */
@Controller
public class LoginController {
    @Resource
    private LoginServiceImpl loginService;

    @RequestMapping("studentuserlogin")
    public String loginUser(@RequestParam("sname") String name, HttpSession session, @RequestParam("spassword") String pwd){
        List<Studentuser> userlist = this.loginService.findAllStudentuser();
        for(int i = 0; i < userlist.size(); i++){
            if( (userlist.get(i).getSname().equals(name)) && userlist.get(i).getSpassword().equals(pwd)){
                session.setAttribute("sname",name);
                session.setAttribute("spassword",pwd);
                session.setAttribute("user",userlist.get(i));
                return "redirect:school/list";
            }
        }
        session.setAttribute("error","您还未注册，请先注册!");
        return "/regist";
    }

}