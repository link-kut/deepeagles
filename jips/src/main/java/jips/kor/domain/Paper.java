package jips.kor.domain;

import java.util.Date;

public class Paper {
    private int num;
    private int year;
    private int volume;
    private int number;
    private int page;
    private int endpage;
    private String title;
    private String keyword;
    private String authors;
    private String filesrc;
    private String paperAbstract;
    private String doi;
    private int hit;
    private int down;
    private int of;
    private int fp;
    private Date uploaddate;
    private String epub;

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getVolume() {
        return volume;
    }

    public void setVolume(int volume) {
        this.volume = volume;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getEndpage() {
        return endpage;
    }

    public void setEndpage(int endpage) {
        this.endpage = endpage;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getAuthors() {
        return authors;
    }

    public void setAuthors(String authors) {
        this.authors = authors;
    }

    public String getFilesrc() {
        return filesrc;
    }

    public void setFilesrc(String filesrc) {
        this.filesrc = filesrc;
    }

    public String getPaperAbstract() {
        return paperAbstract;
    }

    public void setPaperAbstract(String paperAbstract) {
        this.paperAbstract = paperAbstract;
    }

    public String getDoi() {
        return doi;
    }

    public void setDoi(String doi) {
        this.doi = doi;
    }

    public int getHit() {
        return hit;
    }

    public void setHit(int hit) {
        this.hit = hit;
    }

    public int getDown() {
        return down;
    }

    public void setDown(int down) {
        this.down = down;
    }

    public int getOf() {
        return of;
    }

    public void setOf(int of) {
        this.of = of;
    }

    public int getFp() {
        return fp;
    }

    public void setFp(int fp) {
        this.fp = fp;
    }

    public Date getUploaddate() {
        return uploaddate;
    }

    public void setUploaddate(Date uploaddate) {
        this.uploaddate = uploaddate;
    }

    public String getEpub() {
        return epub;
    }

    public void setEpub(String epub) {
        this.epub = epub;
    }

    @Override
    public String toString() {
        return "Paper{" +
                "num=" + num +
                ", year=" + year +
                ", volume=" + volume +
                ", number=" + number +
                ", page=" + page +
                ", endpage=" + endpage +
                ", title='" + title + '\'' +
                ", keyword='" + keyword + '\'' +
                ", authors='" + authors + '\'' +
                ", filesrc='" + filesrc + '\'' +
                ", paperAbstract='" + paperAbstract + '\'' +
                ", doi='" + doi + '\'' +
                ", hit=" + hit +
                ", down=" + down +
                ", of=" + of +
                ", fp=" + fp +
                ", uploaddate='" + uploaddate + '\'' +
                ", epub='" + epub + '\'' +
                '}';
    }
}


