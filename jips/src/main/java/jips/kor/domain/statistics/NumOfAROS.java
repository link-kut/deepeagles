package jips.kor.domain.statistics;

/**
 * Created by zoostar on 2016. 4. 22..
 */
public class NumOfAROS {
    private int id;
    private String date;
    private String accepts;
    private String rejects;
    private String originalSubmissionConfirmed;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
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

    public String getOriginalSubmissionConfirmed() {
        return originalSubmissionConfirmed;
    }

    public void setOriginalSubmissionConfirmed(String originalSubmissionConfirmed) {
        this.originalSubmissionConfirmed = originalSubmissionConfirmed;
    }
}
