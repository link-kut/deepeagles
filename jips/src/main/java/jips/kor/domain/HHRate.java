package jips.kor.domain;

import java.text.DecimalFormat;
import java.util.Date;

public class HHRate {
    private int id;
    private Date Date;
    private Date starttime;
    private double mAcc;
    private double mWinrate;

    private double mDrawrate;
    private double mLoserate;
    private int corrM;
    private int corrL;
    private int HHscore;

    private int OPPscore;
    private int Datenum;

    public int getId() {
        return id;
    }

    public void setId(int id) { this.id = id; }

    public Date getDate() { return Date; }

    public void setDate(Date date) {
        Date = date;
    }

    public java.util.Date getStarttime() {
        return starttime;
    }

    public void setStarttime(java.util.Date starttime) {
        this.starttime = starttime;
    }

    public double getmAcc() {
        return mAcc;
    }

    public void setmAcc(double mAcc) {
        this.mAcc = mAcc;
    }

    public double getmWinrate() {
        return mWinrate;
    }

    public void setmWinrate(double mWinrate) {
        this.mWinrate = mWinrate;
    }

    public double getmDrawrate() {
        return mDrawrate;
    }

    public void setmDrawrate(double mDrawrate) {
        this.mDrawrate = mDrawrate;
    }

    public double getmLoserate() {
        return mLoserate;
    }

    public void setmLoserate(double mLoserate) {
        this.mLoserate = mLoserate;
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

    public int getDatenum() {
        return Datenum;
    }

    public void setDatenum(int datenum) {
        Datenum = datenum;
    }

    @Override
    public String toString() {
        return "HHRate{" +
                "id=" + id +
                ", Date=" + Date +
                ", starttime=" + starttime +
                ", mAcc=" + mAcc +
                ", mWinrate=" + mWinrate +
                ", mDrawrate=" + mDrawrate +
                ", mLoserate=" + mLoserate +
                ", corrM=" + corrM +
                ", corrL=" + corrL +
                ", HHscore=" + HHscore +
                ", OPPscore=" + OPPscore +
                ", Datenum =" + Datenum +
                '}';
    }
}