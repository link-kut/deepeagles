package jips.kor.domain.statistics;

/**
 * Created by yhhan on 2016. 4. 16..
 */
public class NumOfAcceptsRejects {
    private String date;
    private String accepts;
    private String rejects;

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getAccepts() {
        return accepts;
    }

    public void setAccepts(String accepts) {
        this.accepts = accepts;
    }

    public String getRejects() {
        return rejects;
    }

    public void setRejects(String rejects) {
        this.rejects = rejects;
    }

    @Override
    public String toString() {
        return "NumOfAcceptsRejects{" +
                "date=" + date +
                ", accepts=" + accepts +
                ", rejects=" + rejects +
                '}';
    }
}
