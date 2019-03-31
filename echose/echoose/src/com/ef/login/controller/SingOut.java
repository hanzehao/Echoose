package com.ef.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * @program: eschool
 * @description: singout
 * @author: EnergyFiled
 */
@Controller

public class SingOut {

    @RequestMapping("singout")
    public String singout(HttpSession session){
        session.removeAttribute("user");
        return "index";
    }
}