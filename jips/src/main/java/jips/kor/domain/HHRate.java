package jips.kor.domain;

import java.text.DecimalFormat;
import java.util.Date;

public class HHRate {
    private int id;
    private int Date;
    private Date starttime;
    private double M_acc;
    private double M_winrate;

    private double M_drawrate;
    private double M_loserate;
    private int corrM;
    private int corrL;
    private int HHscore;

    private int OPPscore;

    public int getId() { return id;}

    public void setId(int id) {
        this.id = id;
    }

    public int getDate() {
        return Date;
    }

    public void setDate(int date) {
        Date = date;
    }

    public Date getStarttime() {
        return starttime;
    }

    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }

    public double getM_acc() {
        return M_acc;
    }

    public void setM_acc(double m_acc) {
        M_acc = m_acc;
    }

    public double getM_winrate() {
        return M_winrate;
    }

    public void setM_winrate(double m_winrate) {
        M_winrate = m_winrate;
    }

    public double getM_drawrate() {
        return M_drawrate;
    }

    public void setM_drawrate(double m_drawrate) {
        M_drawrate = m_drawrate;
    }

    public double getM_loserate() {
        return M_loserate;
    }

    public void setM_loserate(double m_loserate) {
        M_loserate = m_loserate;
    }

    public int getCorrM() {
        return corrM;
    }

    public void setCorrM(int corrM) {
        this.corrM = corrM;
    }

    public int getCorrL() {
        return corrL;
    }

    public void setCorrL(int corrL) {
        this.corrL = corrL;
    }

    public int getHHscore() {
        return HHscore;
    }

    public void setHHscore(int HHscore) {
        this.HHscore = HHscore;
    }

    public int getOPPscore() {
        return OPPscore;
    }

    public void setOPPscore(int OPPscore) {
        this.OPPscore = OPPscore;
    }

//    @Override
//    public String toString() {
//        return "HHRate{" +
//                "id="+ id +
//                "Date=" + Date +
//                "starttime=" + starttime+
//                "M_acc=" + M_acc+
//                "M_winrate=" + M_winrate+
//                "M_drawrate=" + M_drawrate+
//                "M_loserate=" + M_loserate+
//                "corrM=" + corrM+
//                "corrL=" + corrL+
//                "HHscore=" + HHscore+
//                "OPPscore=" + OPPscore+
//                '}';
//    }
}
