package jips.kor.repository;

import jips.kor.domain.*;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface HistoryMapper {
    @Select("SELECT * FROM historydb where num=#{pn} ORDER BY hit DESC LIMIT 1;")
    History findRecentHistoryByPn(@Param("pn") int pn);

 //날짜 데이터를 나타내기 위해 데이터를 받아옴.

    @Select("SELECT * FROM basicpitcher")
    List<PlayDay> findAll_palyday();


 //투수데이터를 나타내기 위해 데이터를 받아옴.
    @Select("SELECT * FROM basicpitcher")
    List<Pitcher> findAll_pitcher();


 //타자데이터를 나타내기 위해 데이터를 받아옴.
    @Select("SELECT * FROM basichitter")
    List<Hitter> findAll_hitter();


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
