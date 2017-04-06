package jips.kor.repository;

import jips.kor.domain.statistics.NumOfAROS;
import jips.kor.domain.statistics.NumOfAcceptsRejects;
import jips.kor.domain.statistics.NumOfOriginalSubmissions;
import jips.kor.domain.statistics.country.ARCountry;
import jips.kor.domain.statistics.country.RoleTypeCountry;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by zoostar on 2016. 4. 21..
 */
@Repository
public interface StatsMapper {
    @Select("SELECT * FROM jips.stats")
    List<NumOfAROS> findByList();

    @Select("SELECT stats.date FROM jips.stats ORDER BY id DESC LIMIT 1")
    String LastMonth();

    //NumOfAROS
    @Insert("INSERT INTO jips.stats (" +
            "date, " +
            "accepts, " +
            "rejects, " +
            "originalSubmissionConfirmed " +
            ") VALUES (" +
            "#{date}, " +
            "#{accepts}, " +
            "#{rejects}, " +
            "#{originalSubmissionConfirmed} " +
            ");")
    @SelectKey(statement = "select @@identity", keyProperty = "id", before = false, resultType = int.class)
    void insert(NumOfAROS numOfAROS);

    @Select("SELECT count FROM jips.country WHERE roleTypeCountry = #{roleTypeCountry}")
    int findByCount(@Param("roleTypeCountry") RoleTypeCountry roleTypeCountry);

    @Select("SELECT total FROM jips.country WHERE roleTypeCountry = #{roleTypeCountry}")
    int findByTotal(@Param("roleTypeCountry") RoleTypeCountry roleTypeCountry);

    @Select("SELECT countryCodeMapFiltered FROM jips.country WHERE roleTypeCountry = #{roleTypeCountry}")
    String findByType(@Param("roleTypeCountry") RoleTypeCountry roleTypeCountry);

    //Countries
    @Update("UPDATE country SET " +
            "total = #{total}," +
            "countryCodeMapFiltered = #{countryCodeMapFiltered}," +
            "count = #{count} "+
            "WHERE roleTypeCountry = #{roleTypeCountry} ")
    void update(ARCountry country);
}
