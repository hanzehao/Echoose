package com.ef.score.services;

import com.ef.entity.School;
import com.ef.entity.Score;
import com.ef.score.dao.ScoreDaoImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * @program: eschool
 * @description: scoreService
 * @author: EnergyFiled
 */

@Service
@Transactional
public class ScoreServieImpl {
    @Resource
    private ScoreDaoImpl scoreDao;

    public List<School> findByScore(String cscore){
        return this.scoreDao.findByScore(cscore);
    }
}