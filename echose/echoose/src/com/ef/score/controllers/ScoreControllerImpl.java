package com.ef.score.controllers;

import com.ef.entity.School;
import com.ef.entity.Score;
import com.ef.score.services.ScoreServieImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.ServletRegistration;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @program: eschool
 * @description: scoreController
 * @author: EnergyFiled
 */
@Controller
@RequestMapping("score")
public class ScoreControllerImpl {

    @Resource
    private ScoreServieImpl scoreServie;

    @RequestMapping("/list")
    public String findScore(HttpSession session, @RequestParam("csscore") String csscore){
        List<School> subschoolList = this.scoreServie.findByScore(csscore);
        session.setAttribute("subSchoolList",subschoolList);
        return "list1";
    }
}