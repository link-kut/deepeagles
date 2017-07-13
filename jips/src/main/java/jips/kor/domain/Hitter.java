package jips.kor.domain;

public class Hitter {
    private int tpa;

    public int getTpa() {
        return tpa;
    }

    public void setTpa(int tpa) {
        this.tpa = tpa;
    }

    @Override
    public String toString() {
        return "Hitter{" +
                "tpa=" + tpa +
                '}';
    }
}
