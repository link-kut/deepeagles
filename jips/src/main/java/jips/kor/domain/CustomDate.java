package jips.kor.domain;

/**
 * Created by yhhan on 2016. 3. 22..
 */
public class CustomDate {
    private int year;
    private int month;
    private int date;

    public CustomDate(int year, int month, int date) {
        this.year = year;
        this.month = month;
        this.date = date;
    }

    public int getYear() {
        return year;
    }

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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CustomDate that = (CustomDate) o;

        if (year != that.year) return false;
        if (month != that.month) return false;
        return date == that.date;

    }

    @Override
    public int hashCode() {
        int result = year;
        result = 31 * result + month;
        result = 31 * result + date;
        return result;
    }

    @Override
    public String toString() {
        return "CustomDate{" +
                "year=" + year +
                ", month=" + month +
                ", date=" + date +
                '}';
    }
}
