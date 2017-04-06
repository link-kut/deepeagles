package jips.kor.domain;

/**
 * Created by hyunkyo on 2015. 11. 10..
 */
public class DigitalPaper {
    private int year;
    private int volume;
    private int number;

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

    @Override
    public String toString() {
        return "DigitalPaper{" +
                "year=" + year +
                ", volume=" + volume +
                ", number=" + number +
                '}';
    }
}
