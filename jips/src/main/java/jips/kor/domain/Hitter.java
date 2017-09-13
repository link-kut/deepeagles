package jips.kor.domain;

import java.util.Date;

public class Hitter {

    private Date date;
    private int TPA;
    private int AB;
    private int H;
    private int one_B;
    private int two_B;
    private int three_B;
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
    private float AVG;

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

    public int getOne_B() {
        return one_B;
    }

    public void setOne_B(int one_B) {
        this.one_B = one_B;
    }

    public int getTwo_B() {
        return two_B;
    }

    public void setTwo_B(int two_B) {
        this.two_B = two_B;
    }

    public int getThree_B() {
        return three_B;
    }

    public void setThree_B(int three_B) {
        this.three_B = three_B;
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

    public float getAVG() {
        return AVG;
    }

    public void setAVG(float AVG) {
        this.AVG = AVG;
    }

    @Override
    public String toString() {
        return "Hitter{" +
                "date="+ date +
                "tpa=" + TPA +
                "AB=" + AB +
                "AB=" + H +
                "AB=" + one_B +
                "AB=" + two_B +
                "AB=" + three_B +
                "AB=" + HR +
                "AB=" + R +
                "AB=" + RBI +
                "AB=" + BB+
                "AB=" + IBB +
                "AB=" + HPB +
                "AB=" + SO +
                "AB=" + SF +
                "AB=" + SH +
                "AB=" + GDP +
                "AB=" + SB+
                "AB=" + CS+
                '}';
    }
}
