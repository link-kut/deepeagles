package jips.kor.domain;

public class Hitter {
    private int tpa;
    private int day;

    public int getTpa() {
        return tpa;
    }

    public void setTpa(int tpa) { this.tpa = tpa; }

    public int getDay() { return day; }

    public void setDay(int day) { this.day = day; }

    @Override
    public String toString() {
        return "Hitter{" +
                "tpa=" + tpa +
                "day=" + day +
                '}';
    }
}
