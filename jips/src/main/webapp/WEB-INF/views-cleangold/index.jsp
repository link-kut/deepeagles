<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ page pageEncoding="utf-8" %>

<!doctype html>
<!--[if IE 8 ]> <html class="no-js loading ie8 oldie" dir="ltr" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html class="no-js loading" dir="ltr" lang="en-US"> <!--<![endif]-->

<head>
    <meta charset="utf-8">
    <style>
        html,body {
            font-family: "Nanum Gothic", sans-serif; !important;
        }
    </style>

    <%@ include file="/WEB-INF/views-cleangold/include/head.jsp" %>
    <link rel="stylesheet" href="webapp/resources-cleangold/css/custom.css?ver=1">
    <link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css">
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />

    <!-- D3.js 테스트 -->
    <script src="https://d3js.org/d3.v4.min.js"></script>
</head>

<body>
    <%@ include file="/WEB-INF/views-cleangold/include/header.jsp" %>

<section class="gameboard container">
    <div class="col-md-3 boardpart" style="background-color: rgba( 0, 0, 0, 0.1 );"><!-- 좌측 공간 -->
        <div class="row toppart text_white align_center" style="padding-top : 20px"><!-- 좌측 상단 -->
            <strong><h3>지난 경기</h3></strong>
        </div>
        <div class="row middlepart"><!-- 좌측 가운데 -->
            <div class="row text_white" style="height:120px; padding-top: 100px;"><!-- 각 팀 이름, 로고 -->
                <div id = prevawayteamimg class="col-md-5 align_right">
                    <%--<img src="/resources2/img/jips/team_initial/initials_eagles.png"/>--%>
                    <h6 id=prevawayteamtext></h6>
                </div>
                <div class="col-md-2 align_center">
                    <img src="/resources2/img/jips/UI/h_game_vs.png"/>
                </div>
                <div id = prevhometeamimg class="col-md-5 align_left">
                    <%--<img src="/resources2/img/jips/team_initial/initials_dinos.png"/>--%>
                    <h6 id="prevhometeamtext"></h6>
                </div>
            </div><br/><br/>
            <div class="row text_white align_center" style="padding-top:50px;"><!-- 각 팀 (예상)점수 -->
                <h1> <strong>${hhschedule.get(0).prevawayscore}  :  ${hhschedule.get(0).prevhomescore}</strong></h1>
            </div>
        </div>
        <div class="row bottompart text_white align_center"><!-- 좌측 하단 -->
            <h3><fmt:formatDate value="${hhschedule.get(0).prevdate}" pattern="yyyy-MM-dd"/></h3>
        </div>
    </div>
    <div class="col-md-6 boardpart" style="background-color: rgba( 0, 0, 0, 0.3 );"><!-- 가운데 공간 -->
        <div class="row toppart align_center text_white" style="padding-top : 20px"><!-- 가운데 상단 -->
            <h4>오늘의 경기</h4>
            <%--<img src="/resources2/img/jips/ico_game_before.png"/>--%>
        </div>
        <div class="row middlepart text_white"><!-- 가운데 중단 -->
            <div class="row"><!-- 각 팀 이름, 로고 -->
                <div id=todayawayteamimg class="col-md-5 align_center" style="padding-left:30px; padding-bottom:30px;">
                    <%--<img src="/resources2/img/jips/team_head/hh.png"/>--%>
                    <h3 id = todayawayteamtext></h3>
                </div>
                <div class="col-md-2 align_center" style="padding-top:50px;">
                    <img src="resources2/img/jips/UI/h_game_live_vs.png"/>
                </div>
                <div id = todayhometeamimg class="col-md-5 align_center" style="padding-right:30px; padding-bottom:30px;">
                    <%--<img src="/resources2/img/jips/team_head/ss.png"/>--%>
                    <h3 id = todayhometeamtext></h3>
                </div>
            </div>
            <div class="row text_white align_center"><!-- 각 팀 (예상)점수 -->
                <h1> <strong>${hhschedule.get(0).todayawayscore}  :  ${hhschedule.get(0).todayhomescore}</strong></h1>
                <h3>한화이글스가  <strong>${datarecent.get(0).mWinrate}%</strong>  확률로 승리!!</h3><br/>
            </div>
        </div>
        <div class="row bottompart align_center text_white" style="padding-top:20px"><!-- 가운데 하단 -->
            <!-- 경기날짜 및 경지장 위치 -->
            <h3><fmt:formatDate value="${hhschedule.get(0).todaydate}" pattern="yyyy-MM-dd"/></h3><%--날짜--%>
        </div>
    </div>
    <div class="col-md-3 boardpart" style="background-color: rgba( 0, 0, 0, 0.1 );"><!-- 우측 공간 -->
        <div class="row toppart text_white align_center" style="padding-top : 20px"><!-- 우측 상단 -->
            <strong><h3>다음 경기</h3></strong>
        </div>
        <div class="row middlepart"><!-- 우측 중단 -->
            <div class="row text_white" style="height:120px; padding-top: 100px;"><!-- 각 팀 이름, 로고 -->
                <div id = nextawayteamimg class="col-md-5 align_right" >
                    <%--<img src="/resources2/img/jips/team_initial/initials_eagles.png"/>--%>
                    <h6 id = nextawayteamtext></h6>
                </div>
                <div class="col-md-2 align_center">
                    <img src="/resources2/img/jips/UI/h_game_vs.png"/>
                </div>
                <div id=nexthometeamimg class="col-md-5 align_left">
                    <%--<img src="/resources2/img/jips/team_initial/initials_lions.png"/>--%>
                    <h6 id = nexthometeamtext></h6>
                </div>
                <br/><br/><br/>
                <div class="row text_white align_center" style="padding-top:50px;"><!-- 각 팀 (예상)점수 -->
                    <h1> <strong>${hhschedule.get(0).nextawayscore}  :  ${hhschedule.get(0).nexthomescore}</strong></h1>
                </div>
            </div>
        </div>
        <div class="row bottompart text_white align_center"><!-- 우측 하단 -->
            <!-- 특별이벤트 존재시 기재 -->

            <h3><fmt:formatDate value="${hhschedule.get(0).todaydate}" pattern="yyyy-MM-dd"/></h3>
        </div>
    </div>
</section>
    <br/>

<section class="container">

    <div class ="col sep sep-big"></div>


    <div>
        <div class="col-md-6" style="height:auto; margin-bottom: 20px">
            <h4><i class="fa fa-film" aria-hidden="true"></i><strong style="padding-left: 20px;">[불꽃 REC.]</strong></h4>
            <br/>
            <!-- 재생목록재생 -->
            <object width="560" height="315" data ="https://www.youtube.com/embed?n-NyIEHpIhM&index=0&list=PLH13Vc2FtHHikliELagq_vqFhL1DGkiOQ" frameborder ="0" allowFullScreen> </object>
        </div>
        <div class="col-md-6" style="height:auto;">
            <h4><i class="fa fa-film" aria-hidden="true"></i><strong style="padding-left: 20px;">[불꽃 MOMENT]</strong></h4>
            <br/>
            <!-- 단일영상재생 -->
            <object width="560" height="315" data ="https://www.youtube.com/embed/SHCCFYOPHBY" frameborder ="0" allowFullScreen> </object>
            <%--<object width="560" height="315" data="https://www.youtube.com/embed/Gs069dndIYk" frameborder="0" allowfullscreen></object>--%>
        </div>
    </div>
</section>
<!-- footer -->
<%@ include file="/WEB-INF/views-cleangold/include/footer.jsp" %>
</body>

<script>

    var a3 = ${hhschedule.get(0).prevawayid};
    var b3 = ${hhschedule.get(0).prevhomeid};

    var a1 = ${hhschedule.get(0).todayawayid};
    var b1 = ${hhschedule.get(0).todayhomeid};

    var a2 = ${hhschedule.get(0).nextawayid};
    var b2 = ${hhschedule.get(0).nexthomeid};



    var s_img_1 = document.createElement('img');
    s_img_1.src = "/resources2/img/jips/team_initial/initials_bears.png";

    var s_img_2 = document.createElement('img');
    s_img_2.src = "/resources2/img/jips/team_initial/initials_lions.png";

    var s_img_3 = document.createElement('img');
    s_img_3.src = "/resources2/img/jips/team_initial/initials_tigers.png";

    var s_img_4 = document.createElement('img');
    s_img_4.src = "/resources2/img/jips/team_initial/initials_heroes.png";

    var s_img_5 = document.createElement('img');
    s_img_5.src = "/resources2/img/jips/team_initial/initials_twins.png";

    var s_img_6 = document.createElement('img');
    s_img_6.src = "/resources2/img/jips/team_initial/initials_wyverns.png";

    var s_img_7 = document.createElement('img');
    s_img_7.src = "/resources2/img/jips/team_initial/initials_dinos.png";

    var s_img_8 = document.createElement('img');
    s_img_8.src = "/resources2/img/jips/team_initial/initials_eagles.png";

    var s_img_9 = document.createElement('img');
    s_img_9.src = "/resources2/img/jips/team_initial/initials_giants.png";

    var s_img_10 = document.createElement('img');
    s_img_10.src = "/resources2/img/jips/team_initial/initials_wiz.png";


    var s1_img_1 = document.createElement('img');
    s1_img_1.src = "/resources2/img/jips/team_initial/initials_bears.png";

    var s1_img_2 = document.createElement('img');
    s1_img_2.src = "/resources2/img/jips/team_initial/initials_lions.png";

    var s1_img_3 = document.createElement('img');
    s1_img_3.src = "/resources2/img/jips/team_initial/initials_tigers.png";

    var s1_img_4 = document.createElement('img');
    s1_img_4.src = "/resources2/img/jips/team_initial/initials_heroes.png";

    var s1_img_5 = document.createElement('img');
    s1_img_5.src = "/resources2/img/jips/team_initial/initials_twins.png";

    var s1_img_6 = document.createElement('img');
    s1_img_6.src = "/resources2/img/jips/team_initial/initials_wyverns.png";

    var s1_img_7 = document.createElement('img');
    s1_img_7.src = "/resources2/img/jips/team_initial/initials_dinos.png";

    var s1_img_8 = document.createElement('img');
    s1_img_8.src = "/resources2/img/jips/team_initial/initials_eagles.png";

    var s1_img_9 = document.createElement('img');
    s1_img_9.src = "/resources2/img/jips/team_initial/initials_giants.png";

    var s1_img_10 = document.createElement('img');
    s1_img_10.src = "/resources2/img/jips/team_initial/initials_wiz.png";




    var b_img_1 = document.createElement('img');
    b_img_1.src = "/resources2/img/jips/team_head/ds.png";

    var b_img_2 = document.createElement('img');
    b_img_2.src = "/resources2/img/jips/team_head/ss.png";

    var b_img_3 = document.createElement('img');
    b_img_3.src = "/resources2/img/jips/team_head/kia.png";

    var b_img_4 = document.createElement('img');
    b_img_4.src = "/resources2/img/jips/team_head/nx.png";

    var b_img_5 = document.createElement('img');
    b_img_5.src = "/resources2/img/jips/team_head/lg.png";

    var b_img_6 = document.createElement('img');
    b_img_6.src = "/resources2/img/jips/team_head/sk.png";

    var b_img_7 = document.createElement('img');
    b_img_7.src = "/resources2/img/jips/team_head/nc.png";

    var b_img_8 = document.createElement('img');
    b_img_8.src = "/resources2/img/jips/team_head/hh.png";

    var b_img_9 = document.createElement('img');
    b_img_9.src = "/resources2/img/jips/team_head/lt.png";

    var b_img_10 = document.createElement('img');
    b_img_10.src = "/resources2/img/jips/team_head/kt.png";


    if(a3==1) {document.getElementById('prevawayteamimg').appendChild(s_img_1); var pat_ds = document.getElementById('prevawayteamtext');  pat_ds.innerHTML = "두산베어스";}
    else if(a3==2){document.getElementById('prevawayteamimg').appendChild(s_img_2); var pat_ss = document.getElementById('prevawayteamtext');  pat_ss.innerHTML = "삼성라이온즈";}
    else if(a3==3){document.getElementById('prevawayteamimg').appendChild(s_img_3); var pat_kia = document.getElementById('prevawayteamtext');  pat_kia.innerHTML = "기아타이거즈";}
    else if(a3==4){document.getElementById('prevawayteamimg').appendChild(s_img_3); var pat_nx = document.getElementById('prevawayteamtext');  pat_nx.innerHTML = "넥센히어로즈";}
    else if(a3==5){document.getElementById('prevawayteamimg').appendChild(s_img_5); var pat_lg = document.getElementById('prevawayteamtext');  pat_lg.innerHTML = "LG트윈스";}
    else if(a3==6){document.getElementById('prevawayteamimg').appendChild(s_img_6); var pat_sk = document.getElementById('prevawayteamtext');  pat_sk.innerHTML = "SK와이번스";}
    else if(a3==7){document.getElementById('prevawayteamimg').appendChild(s_img_7); var pat_nc = document.getElementById('prevawayteamtext');  pat_nc.innerHTML = "NC다이노스";}
    else if(a3==8){document.getElementById('prevawayteamimg').appendChild(s_img_8); var pat_hh = document.getElementById('prevawayteamtext');  pat_hh.innerHTML = "한화이글스";}
    else if(a3==9){document.getElementById('prevawayteamimg').appendChild(s_img_9); var pat_rd = document.getElementById('prevawayteamtext');  pat_rd.innerHTML = "롯데자이언트";}
    else {document.getElementById('prevawayteamimg').appendChild(s_img_10);var pat_kt = document.getElementById('prevawayteamtext');  pat.innerHTML = "KT WIZ";}

    if(b3==1) {document.getElementById('prevhometeamimg').appendChild(s_img_1); var pht_ds = document.getElementById('prevhometeamtext');  pht_ds.innerHTML = "두산베어스";}
    else if(b3==2){document.getElementById('prevhometeamimg').appendChild(s_img_2); var pht_ss = document.getElementById('prevhometeamtext');  pht_ss.innerHTML = "삼성라이온즈";}
    else if(b3==3){document.getElementById('prevhometeamimg').appendChild(s_img_3); var pht_kia = document.getElementById('prevhometeamtext');  pht_kia.innerHTML = "기아타이거즈";}
    else if(b3==4){document.getElementById('prevhometeamimg').appendChild(s_img_4); var pht_nx = document.getElementById('prevhometeamtext');  pht_nx.innerHTML = "넥센히어로즈";}
    else if(b3==5){document.getElementById('prevhometeamimg').appendChild(s_img_5); var pht_lg = document.getElementById('prevhometeamtext');  pht_lg.innerHTML = "LG트윈스";}
    else if(b3==6){document.getElementById('prevhometeamimg').appendChild(s_img_6); var pht_sk = document.getElementById('prevhometeamtext');  pht_sk.innerHTML = "SK와이번스";}
    else if(b3==7){document.getElementById('prevhometeamimg').appendChild(s_img_7); var pht_nc = document.getElementById('prevhometeamtext');  pht_nc.innerHTML = "NC다이노스";}
    else if(b3==8){document.getElementById('prevhometeamimg').appendChild(s_img_8); var pht_hh = document.getElementById('prevhometeamtext');  pht_hh.innerHTML = "한화이글스";}
    else if(b3==9){document.getElementById('prevhometeamimg').appendChild(s_img_9); var pht_ld = document.getElementById('prevhometeamtext');  pht_ld.innerHTML = "롯데자이언트";}
    else {document.getElementById('prevhometeamimg').appendChild(s_img_10); var pht_kt = document.getElementById('prevhometeamtext');  pht_kt.innerHTML = "KT WIZ";}


    if(a1==1){document.getElementById('todayawayteamimg').appendChild(b_img_1); var tat_ds = document.getElementById('todayawayteamtext');  tat_ds.innerHTML = "두산베어스";}
    else if(a1==2){document.getElementById('todayawayteamimg').appendChild(b_img_2); var tat_ss = document.getElementById('todayawayteamtext');  tat_ss.innerHTML = "삼성라이온즈";}
    else if(a1==3){document.getElementById('todayawayteamimg').appendChild(b_img_3); var tat_kia = document.getElementById('todayawayteamtext');  tat_kia.innerHTML = "기아타이거즈";}
    else if(a1==4){document.getElementById('todayawayteamimg').appendChild(b_img_4); var tat_nx = document.getElementById('todayawayteamtext');  tat_nx.innerHTML = "넥센히어로즈";}
    else if(a1==5){document.getElementById('todayawayteamimg').appendChild(b_img_5); var tat_lg = document.getElementById('todayawayteamtext');  tat_lg.innerHTML = "LG트윈스";}
    else if(a1==6){document.getElementById('todayawayteamimg').appendChild(b_img_6); var tat_sk = document.getElementById('todayawayteamtext');  tat_sk.innerHTML = "SK와이번스";}
    else if(a1==7){document.getElementById('todayawayteamimg').appendChild(b_img_7); var tat_nc = document.getElementById('todayawayteamtext');  tat_nc.innerHTML = "NC다이노스";}
    else if(a1==8){document.getElementById('todayawayteamimg').appendChild(b_img_8); var tat_hh = document.getElementById('todayawayteamtext');  tat_hh.innerHTML = "한화이글스";}
    else if(a1==9){document.getElementById('todayawayteamimg').appendChild(b_img_9); var tat_ld = document.getElementById('todayawayteamtext');  tat_ld.innerHTML = "롯데자이언트";}
    else {document.getElementById('todayawayteamimg').appendChild(b_img_10); var tat_kt = document.getElementById('todayawayteamtext');  tat_kt.innerHTML = "KT WIZ";}

    if(b1==1){document.getElementById('todayhometeamimg').appendChild(b_img_1); var tht_ds = document.getElementById('todayhometeamtext');  tht_ds.innerHTML = "두산베어스";}
    else if(b1==2){document.getElementById('todayhometeamimg').appendChild(b_img_2); var tht_ss = document.getElementById('todayhometeamtext');  tht_ss.innerHTML = "삼성라이온즈";}
    else if(b1==3){document.getElementById('todayhometeamimg').appendChild(b_img_3);var tht_kia = document.getElementById('todayhometeamtext');  tht_kia.innerHTML = "기아타이거즈";}
    else if(b1==4){document.getElementById('todayhometeamimg').appendChild(b_img_4); var tht_nx = document.getElementById('todayhometeamtext');  tht_nx.innerHTML = "넥센히어로즈";}
    else if(b1==5){document.getElementById('todayhometeamimg').appendChild(b_img_5); var tht_lg = document.getElementById('todayhometeamtext');  tht_lg.innerHTML = "LG트윈스";}
    else if(b1==6){document.getElementById('todayhometeamimg').appendChild(b_img_6); var tht_sk = document.getElementById('todayhometeamtext');  tht_sk.innerHTML = "SK와이번스";}
    else if(b1==7){document.getElementById('todayhometeamimg').appendChild(b_img_7); var tht_nc = document.getElementById('todayhometeamtext');  tht_nc.innerHTML = "NC다이노스";}
    else if(b1==8){document.getElementById('todayhometeamimg').appendChild(b_img_8); var tht_hh = document.getElementById('todayhometeamtext');  tht_hh.innerHTML = "한화이글스";}
    else if(b1==9){document.getElementById('todayhometeamimg').appendChild(b_img_9); var tht_ld = document.getElementById('todayhometeamtext');  tht_ld.innerHTML = "롯데자이언트";}
    else {document.getElementById('todayhometeamimg').appendChild(b_img_10); var tht_kt = document.getElementById('todayhometeamtext');  tht_ds.innerHTML = "KT WIZ";}

    if(a2==1){document.getElementById('nextawayteamimg').appendChild(s1_img_1); var nat_ds = document.getElementById('nextawayteamtext');  nat_ds.innerHTML = "두산베어스";}
    else if(a2==2){document.getElementById('nextawayteamimg').appendChild(s1_img_2); var nat_ss = document.getElementById('nextawayteamtext');  nat_ss.innerHTML = "삼성라이온즈";}
    else if(a2==3){document.getElementById('nextawayteamimg').appendChild(s1_img_3); var nat_kia = document.getElementById('nextawayteamtext');  nat_kia.innerHTML = "기아타이거즈";}
    else if(a2==4){document.getElementById('nextawayteamimg').appendChild(s1_img_4); var nat_nx= document.getElementById('nextawayteamtext');  nat_nx.innerHTML = "넥센히어로즈";}
    else if(a2==5){document.getElementById('nextawayteamimg').appendChild(s1_img_5); var nat_lg = document.getElementById('nextawayteamtext');  nat_lg.innerHTML = "LG트윈스";}
    else if(a2==6){document.getElementById('nextawayteamimg').appendChild(s1_img_6); var nat_sk = document.getElementById('nextawayteamtext');  nat_sk.innerHTML = "SK와이번스";}
    else if(a2==7){document.getElementById('nextawayteamimg').appendChild(s1_img_7); var nat_nc = document.getElementById('nextawayteamtext');  nat_nc.innerHTML = "NC다이노스";}
    else if(a2==8){document.getElementById('nextawayteamimg').appendChild(s1_img_8); var nat_hh = document.getElementById('nextawayteamtext');  nat_hh.innerHTML = "한화이글스";}
    else if(a2==9){document.getElementById('nextawayteamimg').appendChild(s1_img_9); var nat_ld = document.getElementById('nextawayteamtext');  nat_ld.innerHTML = "롯데자이언트";}
    else {document.getElementById('nextawayteamimg').appendChild(s1_img_10); var nat_kt = document.getElementById('nextawayteamtext');  nat_kt.innerHTML = "KT WIZ";}

    if(b2==1){document.getElementById('nexthometeamimg').appendChild(s1_img_1); var nht_ds = document.getElementById('nexthometeamtext');  nht_ds.innerHTML = "두산베어스";}
    else if(b2==2){document.getElementById('nexthometeamimg').appendChild(s1_img_2); var nht_ss = document.getElementById('nexthometeamtext');  nht_ss.innerHTML = "삼성라이온즈";}
    else if(b2==3){document.getElementById('nexthometeamimg').appendChild(s1_img_3); var nht_kia = document.getElementById('nexthometeamtext');  nht_kia.innerHTML = "기아타이거즈";}
    else if(b2==4){document.getElementById('nexthometeamimg').appendChild(s1_img_4); var nht_nx = document.getElementById('nexthometeamtext');  nht_nx.innerHTML = "넥센히어로즈";}
    else if(b2==5){document.getElementById('nexthometeamimg').appendChild(s1_img_5); var nht_lg = document.getElementById('nexthometeamtext');  nht_lg.innerHTML = "LG트윈스";}
    else if(b2==6){document.getElementById('nexthometeamimg').appendChild(s1_img_6); var nht_sk = document.getElementById('nexthometeamtext');  nht_sk.innerHTML = "SK와이번스";}
    else if(b2==7){document.getElementById('nexthometeamimg').appendChild(s1_img_7); var nht_nc = document.getElementById('nexthometeamtext');  nht_nc.innerHTML = "NC다이노스";}
    else if(b2==8){document.getElementById('nexthometeamimg').appendChild(s1_img_8); var nht_hh = document.getElementById('nexthometeamtext');  nht_hh.innerHTML = "한화이글스";}
    else if(b2==9){document.getElementById('nexthometeamimg').appendChild(s1_img_9); var nht_ld = document.getElementById('nexthometeamtext');  nht_ld.innerHTML = "롯데자이언트";}
    else {document.getElementById('nexthometeamimg').appendChild(s1_img_10); var nht_kt = document.getElementById('nexthometeamtext');  nht_kt.innerHTML = "KT WIZ";}

</script>

<script>

</script>
</html>