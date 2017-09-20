package jips.kor.domain;

import java.util.Date;

/**
 * Created by kyeongseokjeong on 2017. 9. 18..
 */
public class HHSchedule {

    private int id;



    private Date prevdate;
    private int prevawayid;
    private int prevawayscore;
    private int prevhomeid;
    private int prevhomescore;

    private Date todaydate;
    private int todayawayid;
    private int todayawayscore;
    private int todayhomeid;
    private int todayhomescore;

    private Date nextdate;
    private int nextawayid;
    private int nextawayscore;
    private int nexthomeid;
    private int nexthomescore;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getPrevdate() {
        return prevdate;
    }

    public void setPrevdate(Date prevdate) {
        this.prevdate = prevdate;
    }

    public int getPrevawayid() {
        return prevawayid;
    }

    public void setPrevawayid(int prevawayid) {
        this.prevawayid = prevawayid;
    }

    public int getPrevawayscore() {
        return prevawayscore;
    }

    public void setPrevawayscore(int prevawayscore) {
        this.prevawayscore = prevawayscore;
    }

    public int getPrevhomeid() {
        return prevhomeid;
    }

    public void setPrevhomeid(int prevhomeid) {
        this.prevhomeid = prevhomeid;
    }

    public int getPrevhomescore() {
        return prevhomescore;
    }

    public void setPrevhomescore(int prevhomescore) {
        this.prevhomescore = prevhomescore;
    }

    public Date getTodaydate() {
        return todaydate;
    }

    public void setTodaydate(Date todaydate) {
        this.todaydate = todaydate;
    }

    public int getTodayawayid() {
        return todayawayid;
    }

    public void setTodayawayid(int todayawayid) {
        this.todayawayid = todayawayid;
    }

    public int getTodayawayscore() {
        return todayawayscore;
    }

    public void setTodayawayscore(int todayawayscore) {
        this.todayawayscore = todayawayscore;
    }

    public int getTodayhomeid() {
        return todayhomeid;
    }

    public void setTodayhomeid(int todayhomeid) {
        this.todayhomeid = todayhomeid;
    }

    public int getTodayhomescore() {
        return todayhomescore;
    }

    public void setTodayhomescore(int todayhomescore) {
        this.todayhomescore = todayhomescore;
    }

    public Date getNextdate() {
        return nextdate;
    }

    public void setNextdate(Date nextdate) {
        this.nextdate = nextdate;
    }

    public int getNextawayid() {
        return nextawayid;
    }

    public void setNextawayid(int nextawayid) {
        this.nextawayid = nextawayid;
    }

    public int getNextawayscore() {
        return nextawayscore;
    }

    public void setNextawayscore(int nextawayscore) {
        this.nextawayscore = nextawayscore;
    }

    public int getNexthomeid() {
        return nexthomeid;
    }

    @Override
    public String toString() {
        return "HHSchedule{" +
                "id=" + id +
                ", prevdate=" + prevdate +
                ", prevawayid=" + prevawayid +
                ", prevawayscore=" + prevawayscore +
                ", prevhomeid=" + prevhomeid +
                ", prevhomescore=" + prevhomescore +
                ", todaydate=" + todaydate +
                ", todayawayid=" + todayawayid +
                ", todayawayscore=" + todayawayscore +
                ", todayhomeid=" + todayhomeid +
                ", todayhomescore=" + todayhomescore +
                ", nextdate=" + nextdate +
                ", nextawayid=" + nextawayid +
                ", nextawayscore=" + nextawayscore +
                ", nexthomeid=" + nexthomeid +
                ", nexthomescore=" + nexthomescore +
                '}';
    }

    public void setNexthomeid(int nexthomeid) {
        this.nexthomeid = nexthomeid;
    }

    public int getNexthomescore() {
        return nexthomescore;
    }

    public void setNexthomescore(int nexthomescore) {
        this.nexthomescore = nexthomescore;
    }


}
