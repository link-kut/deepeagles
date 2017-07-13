package jips.kor.domain;


public class History {
    private int id;
    private int year;
    private int month;
    private int date;
    private int num;
    private int hit;
    private int downhit;
    private int name;

    public int getName() {
        return name;
    }

    public void setName(int name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getYear() { return year; }

    public void setYear(int year) {
        this.year = year;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public int getDate() {
        return date;
    }

    public void setDate(int date) {
        this.date = date;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public int getHit() {
        return hit;
    }

    public void setHit(int hit) {
        this.hit = hit;
    }

    public int getDownhit() {
        return downhit;
    }

    public void setDownhit(int downhit) {
        this.downhit = downhit;
    }

    @Override
    public String toString() {
        return "History{" +
                "year=" + year +
                ", month=" + month +
                ", date=" + date +
                ", num=" + num +
                ", hit=" + hit +
                ", downhit=" + downhit +
                '}';
    }
}