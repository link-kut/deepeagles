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
    @Select("SELECT * FROM HHRate")
    List<HHRate> findAll_hhrate();
}
