package com.ef.adminLogin.controllers;

import com.ef.adminLogin.services.AdminRegistServiceImpl;
import com.ef.entity.Administor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

/**
 * @program: eschool
 * @description: adminRegist
 * @author: EnergyFiled
 */

@Controller
@RequestMapping("administor")
public class AdminRegistControllerImpl {

    @Resource
    private AdminRegistServiceImpl adminRegistService;

    @RequestMapping("saveadministor")
    public String addAdministor(Model model, @RequestParam("aname") String name,@RequestParam("apassword") String pwd){
        List<Administor> adminList = this.adminRegistService.listAllAdmin();
        model.addAttribute("adminList",adminList);
        for (int i = 0; i < adminList.size(); i++){
            if(adminList.get(i).getAname().equals(name)){
                return "adminlogin";
            }
        }
        Administor administor = new Administor();
        administor.setAname(name);
        administor.setApassword(pwd);
        this.adminRegistService.saveAdmin(administor);
        model.addAttribute("admin",administor);
        return "adminLogin";
    }
}