package jips.kor.domain;

/*
*   투수데이터 산출
*
*   W와 L / 2개만을 우선 출력확인해 봄.
*
* */

import java.util.Date;

public class Pitcher {

    private int id;
    private Date date;
    private int rank;
    private String teamname;
    private int game;

    private int w;  //승
    private int l;  //패
    private int sv; //무
    private int hld;
    private int bs;

    private int qs;
    private double ip;
    private int pa;
    private int h;
    private int TWOB;

    private int THREEB;
    private int hr;
    private int r;
    private int er;
    private int so;

    private int bb;
    private int ibb;
    private int hbp;
    private int wp;
    private int bk;

    private int pk;
    private int cs;
    private int sb;

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

    public int getRank() {
        return rank;
    }

    public void setRank(int rank) {
        this.rank = rank;
    }

    public String getTeamname() {
        return teamname;
    }

    public void setTeamname(String teamname) {
        this.teamname = teamname;
    }

    public int getGame() {
        return game;
    }

    public void setGame(int game) {
        this.game = game;
    }

    public int getW() {
        return w;
    }

    public void setW(int w) {
        this.w = w;
    }

    public int getL() {
        return l;
    }

    public void setL(int l) {
        this.l = l;
    }

    public int getSv() {
        return sv;
    }

    public void setSv(int sv) {
        this.sv = sv;
    }

    public int getHld() {
        return hld;
    }

    public void setHld(int hld) {
        this.hld = hld;
    }

    public int getBs() {
        return bs;
    }

    public void setBs(int bs) {
        this.bs = bs;
    }

    public int getQs() {
        return qs;
    }

    public void setQs(int qs) {
        this.qs = qs;
    }

    public double getIp() {
        return ip;
    }

    public void setIp(double ip) {
        this.ip = ip;
    }

    public int getPa() {
        return pa;
    }

    public void setPa(int pa) {
        this.pa = pa;
    }

    public int getH() {
        return h;
    }

    public void setH(int h) {
        this.h = h;
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

    public int getHr() {
        return hr;
    }

    public void setHr(int hr) {
        this.hr = hr;
    }

    public int getR() {
        return r;
    }

    public void setR(int r) {
        this.r = r;
    }

    public int getEr() {
        return er;
    }

    public void setEr(int er) {
        this.er = er;
    }

    public int getSo() {
        return so;
    }

    public void setSo(int so) {
        this.so = so;
    }

    public int getBb() {
        return bb;
    }

    public void setBb(int bb) {
        this.bb = bb;
    }

    public int getIbb() {
        return ibb;
    }

    public void setIbb(int ibb) {
        this.ibb = ibb;
    }

    public int getHbp() {
        return hbp;
    }

    public void setHbp(int hbp) {
        this.hbp = hbp;
    }

    public int getWp() {
        return wp;
    }

    public void setWp(int wp) {
        this.wp = wp;
    }

    public int getBk() {
        return bk;
    }

    public void setBk(int bk) {
        this.bk = bk;
    }

    public int getPk() {
        return pk;
    }

    public void setPk(int pk) {
        this.pk = pk;
    }

    public int getCs() {
        return cs;
    }

    public void setCs(int cs) {
        this.cs = cs;
    }

    public int getSb() {
        return sb;
    }

    public void setSb(int sb) {
        this.sb = sb;
    }

    @Override
    public String toString() {
        return "Pitcher{" +
                "id=" + id +
                ", date=" + date +
                ", rank=" + rank +
                ", teamname='" + teamname + '\'' +
                ", game=" + game +
                ", w=" + w +
                ", l=" + l +
                ", sv=" + sv +
                ", hld=" + hld +
                ", bs=" + bs +
                ", qs=" + qs +
                ", ip=" + ip +
                ", pa=" + pa +
                ", h=" + h +
                ", TWOB=" + TWOB +
                ", THREEB=" + THREEB +
                ", hr=" + hr +
                ", r=" + r +
                ", er=" + er +
                ", so=" + so +
                ", bb=" + bb +
                ", ibb=" + ibb +
                ", hbp=" + hbp +
                ", wp=" + wp +
                ", bk=" + bk +
                ", pk=" + pk +
                ", cs=" + cs +
                ", sb=" + sb +
                '}';
    }
}