package jips.kor.repository;

import jips.kor.domain.History;
import jips.kor.domain.Hitter;
import jips.kor.domain.Paper;
import jips.kor.domain.Pitcher;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface HistoryMapper {
    @Select("SELECT * FROM historydb where num=#{pn} ORDER BY hit DESC LIMIT 1;")
    History findRecentHistoryByPn(@Param("pn") int pn);


    /* 투수데이터를 나타내기 위해 데이터를 받아옴. */
    @Select("SELECT * FROM basicpitcher")
    List<Pitcher> findAll_pitcher();

    /* 투수데이터를 나타내기 위해 데이터를 받아옴. */
    @Select("SELECT * FROM basichitter")
    List<Hitter> findAll_hitter();

    /* 주성형 데이터 예제 */
    @Select("SELECT * FROM jips")
    History findAll();

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