package jips.kor.domain;

import java.util.Date;

/**
 * Created by hyunkyo on 2015. 11. 17..
 */
public class OnlineFirstPaper {
    private String title;
    private String authors;
    private String doi;
    private String paperAbstract;
    private Date uploaddate;
    private int of;
    private int num;

    @Override
    public String toString() {
        return "OnlineFirstPaper{" +
                "title='" + title + '\'' +
                ", authors='" + authors + '\'' +
                ", doi='" + doi + '\'' +
                ", paperabstract='" + paperAbstract + '\'' +
                ", uploaddate=" + uploaddate +
                ", of=" + of +
                ", num=" + num +
                '}';
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthors() {
        return authors;
    }

    public void setAuthors(String authors) {
        this.authors = authors;
    }

    public String getDoi() {
        return doi;
    }

    public void setDoi(String doi) {
        this.doi = doi;
    }

    public String getPaperAbstract() {
        return paperAbstract;
    }

    public void setPaperAbstract(String paperAbstract) {
        this.paperAbstract = paperAbstract;
    }

    public Date getUploaddate() {
        return uploaddate;
    }

    public void setUploaddate(Date uploaddate) {
        this.uploaddate = uploaddate;
    }

    public int getOf() {
        return of;
    }

    public void setOf(int of) {
        this.of = of;
    }
}
