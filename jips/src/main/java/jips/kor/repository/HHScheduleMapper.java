package jips.kor.repository;

import jips.kor.domain.HHSchedule;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by kyeongseokjeong on 2017. 9. 18..
 */

@Repository
public interface HHScheduleMapper {

    @Select("SELECT prevdate,prevawayid,prevawayscore,prevhomeid,todaydate,todayawayid,todayawayscore,todayhomescore, todayhomeid,nextdate,nextawayid,nexthomeid FROM HHSchedule ORDER BY id DESC limit 1")
    List<HHSchedule> findrecent_hhschedule();
}
