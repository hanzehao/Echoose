package com.ef.regist.controller;

import com.ef.entity.Studentuser;
import com.ef.regist.services.RegistServicesImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

/**
 * @program: eschool
 * @description: 注册实现
 * @author: EnergyFiled
 */
@Controller
@RequestMapping("studentuser")
public class RegistControllermpl {

    @Resource
    private RegistServicesImpl registService;

    @RequestMapping("saveuser")
    public String addUdrser(Model model, @RequestParam("username") String name, @RequestParam("password") String pwd, @RequestParam("tel") String tel,
                            @RequestParam("major") String major, @RequestParam("email") String email){
        List<Studentuser> userList = this.registService.findAllStudentuser();

        for (int i = 0; i < userList.size(); i++){
            if(userList.get(i).getSname().equals(name)){
                model.addAttribute("error","该用户已存在，请登录！");
                return "login";
            }
        }

        Studentuser studentuser = new Studentuser();
        studentuser.setSname(name);
        studentuser.setSpassword(pwd);
        studentuser.setSphone(tel);
        studentuser.setSemail(email);
        studentuser.setSmajor(major);

        this.registService.saveStudentUser(studentuser);
        model.addAttribute("studentuser",studentuser);
        return "login";
    }
}