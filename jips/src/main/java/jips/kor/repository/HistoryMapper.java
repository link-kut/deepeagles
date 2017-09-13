package jips.kor.repository;

import jips.kor.domain.*;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface HistoryMapper {
    @Select("SELECT * FROM historydb where num=#{pn} ORDER BY hit DESC LIMIT 1;")
    History findRecentHistoryByPn(@Param("pn") int pn);


    @Insert("INSERT INTO historydb (" +
            "year, " +
            "month, " +
            "date, " +
            "num, " +
            "hit, " +
            "downhit " +
            ") VALUES (" +
            "#{year}, " +
            "#{month}, " +
            "#{date}, " +
            "#{num}, " +
            "#{hit}, " +
            "#{downhit}" +
            ");")
    @SelectKey(statement = "select @@identity", keyProperty = "id", before = false, resultType = int.class)
    void insert(History history);

    @Update("UPDATE historydb SET " +
            "year = #{year}, " +
            "month = #{month}, " +
            "date = #{date}, " +
            "num = #{num}, " +
            "hit = #{hit}, " +
            "downhit = #{downhit} " +
            "WHERE id = #{id}")
    void update(History history);
}