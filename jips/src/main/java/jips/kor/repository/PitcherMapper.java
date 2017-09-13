package jips.kor.repository;

import jips.kor.domain.Pitcher;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by kyeongseokjeong on 2017. 9. 13..
 */
@Repository
public interface PitcherMapper {

    @Select("SELECT * FROM HH_P")
    List<Pitcher> findAll_pitcher();

}