package jips.kor.domain.statistics;

/**
 * Created by yhhan on 2016. 4. 16..
 */
public class NumOfOriginalSubmissions implements NumOfSubmissions{
    private String date;
    private String originalSubmissions;
    private String originalSubmissionConfirmed;

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getOriginalSubmissions() {
        return originalSubmissions;
    }

    public void setOriginalSubmissions(String originalSubmissions) {
        this.originalSubmissions = originalSubmissions;
    }

    public String getOriginalSubmissionConfirmed() {
        return originalSubmissionConfirmed;
    }

    public void setOriginalSubmissionConfirmed(String originalSubmissionConfirmed) {
        this.originalSubmissionConfirmed = originalSubmissionConfirmed;
    }
    @Override
    public String toString() {
        return "NumOfOriginalSubmissions{" +
                "date=" + date +
                ", originalSubmissions=" + originalSubmissions +
                ", originalSubmissionConfirmed=" + originalSubmissionConfirmed +
                '}';
    }
}
