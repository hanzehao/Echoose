package com.ef.list.controllers;

import com.ef.entity.Collegetype;
import com.ef.entity.Page;
import com.ef.entity.School;
import com.ef.list.services.ListServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @program: eschool
 * @description: LisetController
 * @author: EnergyFiled
 */

@Controller
@RequestMapping("school")
public class ListControllerImpl {

    @Resource
    private ListServiceImpl listService;

    @RequestMapping("list1")
    public String fildAll(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
        String pageNo = request.getParameter("pageNo");
        if (pageNo == null) {
            pageNo = "1";
        }
        Page page = listService.queryForPage(Integer.valueOf(pageNo), 9);
        request.setAttribute("page", page);
        List<School> schoolList = page.getList();
        session.setAttribute("schoolList", schoolList);

        List<Collegetype> typeList = this.listService.findType();
        session.setAttribute("typeList", typeList);
        return "list";
    }
}