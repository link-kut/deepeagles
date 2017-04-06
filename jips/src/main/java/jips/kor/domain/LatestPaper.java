package jips.kor.domain;


public class LatestPaper {
    private int num;
    private int year;
    private int volume;
    private int number;
    private String title;
    private String authors;
    private int page;
    private String doi;
    private String epub;
    private String paperAbstract;

    @Override
    public String toString() {
        return "LatestPaper{" +
                "year=" + year +
                ", volume=" + volume +
                ", number=" + number +
                ", title='" + title + '\'' +
                ", authors='" + authors + '\'' +
                ", page=" + page +
                ", doi='" + doi + '\'' +
                ", epub='" + epub + '\'' +
                ", paperAbstract='" + paperAbstract + '\'' +
                ", endpage=" + endpage + '\'' +
                ", num=" + num +
                '}';
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
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

    public String getEpub() {
        return epub;
    }

    public void setEpub(String epub) {
        this.epub = epub;
    }

    private int endpage;

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
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
}
