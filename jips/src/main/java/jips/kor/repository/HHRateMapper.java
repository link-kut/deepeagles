package jips.kor.repository;


import jips.kor.domain.HHRate;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by kyeongseokjeong on 2017. 9. 13..
 */
@Repository
public interface HHRateMapper {

     //* 타자수데이터를 나타내기 위해 데이터를 받아옴. *//*
    @Select("SELECT * FROM HHRate ORDER BY id DESC")
    List<HHRate> findAll_hhrate();

    @Select("SELECT * FROM HHRate")
    List<HHRate> findcorrect_hhrate();

    @Select("SELECT Datenum,M_winrate,M_drawrate,M_loserate FROM HHRate")
    List<HHRate> findgraph_hhrate();

    @Select("SELECT M_winrate,M_drawrate,M_loserate,corrM FROM HHRate ORDER BY id DESC")
    List<HHRate> findrecent_hhrate();
}
