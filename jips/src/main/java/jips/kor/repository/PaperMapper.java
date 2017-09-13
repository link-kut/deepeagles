/*
package jips.kor.repository;

import jips.kor.domain.*;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PaperMapper {

    //해당 num의 논문 검색
    @Select("SELECT * FROM jipsdb WHERE NUM = #{num}")
    Paper findByNum(@Param("num") int num);

    @Select("SELECT * FROM jipsdb")
    Paper findByList();

    //year 리스트 검색
    @Select("SELECT DISTINCT YEAR FROM jipsdb WHERE OF = 0 ORDER BY year DESC")
    List<Paper> findByYear();

    //volume 리스트 검색
    @Select("SELECT DISTINCT VOLUME FROM jipsdb WHERE OF = 0 ORDER BY volume DESC")
    List<Paper> findByVolume();

    //각 년도의 볼륨의 최신 number를 검색
    @Select("SELECT DISTINCT year, volume, (CASE WHEN year=(SELECT MAX(year) FROM jipsdb WHERE of=0) " +
            "THEN (SELECT MAX(number) FROM jipsdb WHERE of=0 AND year=(SELECT MAX(year) FROM jipsdb WHERE of=0)) " +
            "WHEN year=2005 THEN 1 WHEN year=2006 THEN 3 WHEN year=2007 THEN 2 ELSE 4 END)" +
            " AS number FROM jipsdb WHERE of=0 ORDER BY year DESC")
    List<Paper> findByLatestNumber();

    //featured 논문의 내용 검색
    @Select("SELECT DISTINCT year, num, volume, number, title, keyword, authors, page, endpage, epub, paperAbstract, doi FROM jipsdb WHERE fp>0 ORDER BY fp DESC;")
    List<Paper> findByFeatured();

    @Select("SELECT DISTINCT year, num, volume, number, title, keyword, authors, page, endpage, epub, paperAbstract, doi FROM jipsdb WHERE of=0 AND " +
            "year=(SELECT MAX(year) FROM jipsdb WHERE of=0) AND " +
            "number=(SELECT MAX(number) FROM jipsdb WHERE " +
            "year=(SELECT MAX(year) FROM jipsdb WHERE of=0)) ORDER BY page ASC")
    List<Paper> findByLatest();

    //온라인퍼스트 논문 검색
    @Select("SELECT num, title, keyword, authors, doi, paperAbstract, uploaddate, of FROM jipsdb WHERE of > 0 ORDER BY of DESC")
    List<Paper> findByOfPaper();

    @Select("SELECT MAX(number) FROM jipsdb WHERE of=0 AND year=(SELECT MAX(year) FROM jipsdb WHERE of=0)")
    int findByMaxNumber();

    //digital.lib를 위한 검색
    @Select("SELECT * FROM jipsdb WHERE of = 0 AND year = #{y} AND volume = #{v} AND number = #{n} ORDER BY page ASC")
    List<Paper> findByDigtalList(@Param("y") int y, @Param("v") int v, @Param("n") int n);

    //해동 논문의 번호에 따라 논문 검색
    @Select("SELECT * FROM jipsdb WHERE num = #{pn}")
    Paper findByPaperDetail(@Param("pn") int pn);

    //논문의 number와 volume으로 검색
    @Select("SELECT * FROM jipsdb WHERE of=0 AND volume=#{v} AND number=#{n} ORDER BY number DESC")
    List<Paper> findByPaperSummary(@Param("v") int v, @Param("n") int n);

    //논문의 number와 volume으로 검색
    @Select("SELECT * FROM jipsdb WHERE of = 0 AND volume = #{v} AND number = #{n}")
    List<Paper> findByVolumeList(@Param("v") int v, @Param("n") int n);

    //작가와 키워드 검색
    @Select("SELECT * FROM jipsdb WHERE authors LIKE CONCAT('%', #{author}, '%') " +
            "OR keyword LIKE CONCAT('%', #{keyword}, '%') ORDER BY year DESC")
    List<Paper> findBySearchSummary(@Param("author") String author, @Param("keyword") String keyword);

    @Select("SELECT * FROM jipsdb WHERE title LIKE CONCAT('%', #{s}, '%') OR keyword LIKE CONCAT('%', #{s}, '%') " +
            "OR paperAbstract LIKE CONCAT('%', #{s}, '%') OR authors LIKE CONCAT('%', #{s}, '%') ORDER BY year DESC")
    List<Paper> findBySearchResult(@Param("s") String s);

    @Select("SELECT * FROM historydb WHERE num = #{pn} ORDER BY year DESC, month DESC, date DESC")
    List<History> findByHistory(@Param("pn") int pn);
}
*/
