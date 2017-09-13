package jips.kor.domain;

import java.util.Date;

public class Hitter {

    private int id;

    private Date date;
    private int TPA;
    private int AB;
    private int H;
    private int ONEB;

    private int TWOB;
    private int THREEB;
    private int HR;
    private int R;
    private int RBI;

    private int BB;
    private int IBB;
    private int HPB;
    private int SO;
    private int SF;

    private int SH;
    private int GDP;
    private int SB;
    private int CS;
    private double AVG;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getTPA() {
        return TPA;
    }

    public void setTPA(int TPA) {
        this.TPA = TPA;
    }

    public int getAB() {
        return AB;
    }

    public void setAB(int AB) {
        this.AB = AB;
    }

    public int getH() {
        return H;
    }

    public void setH(int h) {
        H = h;
    }

    public int getONEB() {
        return ONEB;
    }

    public void setONEB(int ONEB) {
        this.ONEB = ONEB;
    }

    public int getTWOB() {
        return TWOB;
    }

    public void setTWOB(int TWOB) {
        this.TWOB = TWOB;
    }

    public int getTHREEB() {
        return THREEB;
    }

    public void setTHREEB(int THREEB) {
        this.THREEB = THREEB;
    }

    public int getHR() {
        return HR;
    }

    public void setHR(int HR) {
        this.HR = HR;
    }

    public int getR() {
        return R;
    }

    public void setR(int r) {
        R = r;
    }

    public int getRBI() {
        return RBI;
    }

    public void setRBI(int RBI) {
        this.RBI = RBI;
    }

    public int getBB() {
        return BB;
    }

    public void setBB(int BB) {
        this.BB = BB;
    }

    public int getIBB() {
        return IBB;
    }

    public void setIBB(int IBB) {
        this.IBB = IBB;
    }

    public int getHPB() {
        return HPB;
    }

    public void setHPB(int HPB) {
        this.HPB = HPB;
    }

    public int getSO() {
        return SO;
    }

    public void setSO(int SO) {
        this.SO = SO;
    }

    public int getSF() {
        return SF;
    }

    public void setSF(int SF) {
        this.SF = SF;
    }

    public int getSH() {
        return SH;
    }

    public void setSH(int SH) {
        this.SH = SH;
    }

    public int getGDP() {
        return GDP;
    }

    public void setGDP(int GDP) {
        this.GDP = GDP;
    }

    public int getSB() {
        return SB;
    }

    public void setSB(int SB) {
        this.SB = SB;
    }

    public int getCS() {
        return CS;
    }

    public void setCS(int CS) {
        this.CS = CS;
    }

    public double getAVG() {
        return AVG;
    }

    public void setAVG(double AVG) {
        this.AVG = AVG;
    }

    @Override
    public String toString() {
        return "Hitter{" +
                "id=" + id +
                ", date=" + date +
                ", TPA=" + TPA +
                ", AB=" + AB +
                ", H=" + H +
                ", ONEB=" + ONEB +
                ", TWOB=" + TWOB +
                ", THREEB=" + THREEB +
                ", HR=" + HR +
                ", R=" + R +
                ", RBI=" + RBI +
                ", BB=" + BB +
                ", IBB=" + IBB +
                ", HPB=" + HPB +
                ", SO=" + SO +
                ", SF=" + SF +
                ", SH=" + SH +
                ", GDP=" + GDP +
                ", SB=" + SB +
                ", CS=" + CS +
                ", AVG=" + AVG +
                '}';
    }
}
