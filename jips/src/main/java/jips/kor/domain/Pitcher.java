package jips.kor.domain;

/*
*   투수데이터 산출
*
*   W와 L / 2개만을 우선 출력확인해 봄.
*
* */

public class Pitcher {

    private int w;
    private int l;

    public int getL() { return l; }

    public void setL(int l) { this.l = l; }

    public int getW() { return w; }

    public void setW(int w) { this.w = w; }

    @Override
    public String toString() {
        return "Pitcher{" +
                "w=" + w +
                ", l=" + l +
                '}';
    }
}