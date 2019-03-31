package com.ef.list.services;

import com.ef.entity.Collegetype;
import com.ef.entity.Page;
import com.ef.entity.School;
import com.ef.list.dao.ListDapImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import javax.script.ScriptContext;
import java.util.List;

/**
 * @program: eschool
 * @description: ListService
 * @author: EnergyFiled
 */

@Service
@Transactional
public class ListServiceImpl {

    @Resource
    private ListDapImpl listDap;

    public List<School> listAll(){
        return this.listDap.findAll();
    }

    public Page queryForPage(int currentPage, int pageSize){
        Page page = new Page();
        int allRoe = this.listDap.getAllRowCount();
        int offset = page.countOffset(currentPage,pageSize);
        List<School> list = listDap.queryForPage(offset,pageSize);
        page.setPageNo(currentPage);
        page.setPageSize(pageSize);
        page.setTotalRecords(allRoe);
        page.setList(list);
        return page;
    }

    public List<Collegetype> findType(){
        return this.listDap.findType();
    }

    @Transactional(readOnly = false)
    public void SreviceSava(School school){
        this.listDap.save(school);
    }

    @Transactional(readOnly = false)
    public void ServiceUpdate(School school){
        this.listDap.update(school);
    }

    @Transactional(readOnly = false)
    public void ServiceDel(School school){
        this.listDap.delete(school);
    }

    public int ServiceGetCount(){
        return this.listDap.getAllRowCount();
    }


}