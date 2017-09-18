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
     .result_box {
         width: 20px;
         height: 20px;
         background-color: #20e900;
         margin: 10px;
         float: left;
     }
    .game_lose {
        width: 20px;
        height: 20px;
        background-color: yellow;
        margin: 10px;
        float: left;
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
                    <h6>한화 이글스</h6>
                </div>
                <div class="col-md-2 align_center">
                    <img src="/resources2/img/jips/UI/h_game_vs.png"/>
                </div>
                <div id = prevhometeamimg class="col-md-5 align_left">
                    <%--<img src="/resources2/img/jips/team_initial/initials_dinos.png"/>--%>
                    <h6>NC 다이노스</h6>
                </div>
            </div><br/>
            <div class="row text_white align_center" style="padding-top:50px;"><!-- 각 팀 (예상)점수 -->
                <h5>예상결과 : 한화이글스 64%로 승리</h5>
                <h5>결과 : NC 다이노스의 승리</h5><br/>
            </div>
        </div>
        <div class="row bottompart text_white align_center"><!-- 좌측 하단 -->
            <h6>[대전], 2017-09-10(일) , [14:00]</h6>
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
                    <h3>한화 이글스</h3>
                </div>
                <div class="col-md-2 align_center" style="padding-top:50px;">
                    <img src="resources2/img/jips/UI/h_game_live_vs.png"/>
                </div>
                <div id = todayhometeamimg class="col-md-5 align_center" style="padding-right:30px; padding-bottom:30px;">
                    <%--<img src="/resources2/img/jips/team_head/ss.png"/>--%>
                    <h3>삼성 라이온즈</h3>
                </div>
            </div>
            <div class="row text_white align_center"><!-- 각 팀 (예상)점수 -->
                <h3>한화이글스가 64% 확률로 승리!!</h3><br/>
                <h5>[ 표본채집기간 2017-07-15 ~ 2017-08-29 ] </h5>
            </div>
        </div>
        <div class="row bottompart align_center text_white" style="padding-top:20px"><!-- 가운데 하단 -->
            <!-- 경기날짜 및 경지장 위치 -->
            <h5>[대구], 2017-09-12(화) , [18:30]</h5>
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
                    <h6>한화 이글스</h6>
                </div>
                <div class="col-md-2 align_center">
                    <img src="/resources2/img/jips/UI/h_game_vs.png"/>
                </div>
                <div id=nexthometeamimg class="col-md-5 align_left">
                    <%--<img src="/resources2/img/jips/team_initial/initials_lions.png"/>--%>
                    <h6>삼성 라이온즈</h6>
                </div>
            </div>
        </div>
        <div class="row bottompart text_white align_center"><!-- 우측 하단 -->
            <!-- 특별이벤트 존재시 기재 -->
            <h6>[대구], 2017-09-13(수) , [18:30]</h6>
        </div>
    </div>
</section>
    <br/>
<section class="container">
    <div>
        <div class="col-md-6" style="height:auto; margin-bottom: 20px">
            <h4><strong style="padding-left: 20px;">[불꽃 REC.]</strong></h4>
            <!-- 재생목록재생 -->
            <object width="560" height="315" data ="https://www.youtube.com/embed?n-NyIEHpIhM&index=0&list=PLH13Vc2FtHHikliELagq_vqFhL1DGkiOQ"frameborder ="0" allowFullScreen> </object>
        </div>
        <div class="col-md-6" style="height:auto;">
            <h4><strong style="padding-left: 20px;">[불꽃 MOMENT]</strong></h4>
            <!-- 단일영상재생 -->
            <object width="560" height="315" data ="https://www.youtube.com/embed/SHCCFYOPHBY"frameborder ="0" allowFullScreen> </object>
            <%--<object width="560" height="315" data="https://www.youtube.com/embed/Gs069dndIYk" frameborder="0" allowfullscreen></object>--%>
        </div>
    </div>
</section>
<%--
<section class="container">
    <div class="test_field">
        <script>
            <c:forEach var="home_hhr" items = "${home_hhr}" varStatus = "status">
                $(".test_field").prepend("<button class ='result_box'></button>");
                console.log(${home_hhr.corrM});

                <c:if test="${home_hhr.corrM != 1}">
                    addClass('game_lose');
                </c:if>
            </c:forEach>
        </script>
        <script>

            var width = 960,
                height = 136,
                cellSize = 17;

            var formatPercent = d3.format(".1%");

            var color = d3.scaleQuantize()
                .domain([-1, 1])
                .range(["#a50026", "#d73027", "#f46d43", "#fdae61", "#fee08b", "#ffffbf", "#d9ef8b", "#a6d96a", "#66bd63", "#1a9850", "#006837"]);

            var svg = d3.select("body")
                .selectAll("svg")
                .data(d3.range(2017, 2018))
                .enter().append("svg")
                .attr("width", width)
                .attr("height", height)
                .append("g")
                .attr("transform", "translate(" + ((width - cellSize * 53) / 2) + "," + (height - cellSize * 7 - 1) + ")");

            svg.append("text")
                .attr("transform", "translate(-6," + cellSize * 3.5 + ")rotate(-90)")
                .attr("font-family", "sans-serif")
                .attr("font-size", 10)
                .attr("text-anchor", "middle")
                .text(function(d) { return d; });

            var rect = svg.append("g")
                .attr("fill", "none")
                .attr("stroke", "#ccc")
                .selectAll("rect")
                .data(function(d) { return d3.timeDays(new Date(d, 0, 1), new Date(d + 1, 0, 1)); })
                .enter().append("rect")
                .attr("width", cellSize)
                .attr("height", cellSize)
                .attr("x", function(d) { return d3.timeWeek.count(d3.timeYear(d), d) * cellSize; })
                .attr("y", function(d) { return d.getDay() * cellSize; })
                .datum(d3.timeFormat("%Y-%m-%d"));

            svg.append("g")
                .attr("fill", "none")
                .attr("stroke", "#000")
                .selectAll("path")
                .data(function(d) { return d3.timeMonths(new Date(d, 0, 1), new Date(d + 1, 0, 1)); })
                .enter().append("path")
                .attr("d", pathMonth);

            d3.csv("dji.csv", function(error, csv) {
                if (error) throw error;

                var data = d3.nest()
                    .key(function(d) { return d.Date; })
                    .rollup(function(d) { return (d[0].Close - d[0].Open) / d[0].Open; })
                    .object(csv);

                rect.filter(function(d) { return d in data; })
                    .attr("fill", function(d) { return color(data[d]); })
                    .append("title")
                    .text(function(d) { return d + ": " + formatPercent(data[d]); });
            });

            function pathMonth(t0) {
                var t1 = new Date(t0.getFullYear(), t0.getMonth() + 1, 0),
                    d0 = t0.getDay(), w0 = d3.timeWeek.count(d3.timeYear(t0), t0),
                    d1 = t1.getDay(), w1 = d3.timeWeek.count(d3.timeYear(t1), t1);
                return "M" + (w0 + 1) * cellSize + "," + d0 * cellSize
                    + "H" + w0 * cellSize + "V" + 7 * cellSize
                    + "H" + w1 * cellSize + "V" + (d1 + 1) * cellSize
                    + "H" + (w1 + 1) * cellSize + "V" + 0
                    + "H" + (w0 + 1) * cellSize + "Z";
            }

        </script>
    </div>
</section>
--%>
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


    if(a3==1) {document.getElementById('prevawayteamimg').appendChild(s_img_1);}
    else if(a3==2){document.getElementById('prevawayteamimg').appendChild(s_img_2);}
    else if(a3==3){document.getElementById('prevawayteamimg').appendChild(s_img_3);}
    else if(a3==4){document.getElementById('prevawayteamimg').appendChild(s_img_4);}
    else if(a3==5){document.getElementById('prevawayteamimg').appendChild(s_img_5);}
    else if(a3==6){document.getElementById('prevawayteamimg').appendChild(s_img_6);}
    else if(a3==7){document.getElementById('prevawayteamimg').appendChild(s_img_7);}
    else if(a3==8){document.getElementById('prevawayteamimg').appendChild(s_img_8); }
    else if(a3==9){document.getElementById('prevawayteamimg').appendChild(s_img_9);}
    else {document.getElementById('prevawayteamimg').appendChild(s_img_10);}

    if(b3==1) {document.getElementById('prevhometeamimg').appendChild(s_img_1);}
    else if(b3==2){document.getElementById('prevhometeamimg').appendChild(s_img_2);}
    else if(b3==3){document.getElementById('prevhometeamimg').appendChild(s_img_3);}
    else if(b3==4){document.getElementById('prevhometeamimg').appendChild(s_img_4);}
    else if(b3==5){document.getElementById('prevhometeamimg').appendChild(s_img_5);}
    else if(b3==6){document.getElementById('prevhometeamimg').appendChild(s_img_6);}
    else if(b3==7){document.getElementById('prevhometeamimg').appendChild(s_img_7);}
    else if(b3==8){document.getElementById('prevhometeamimg').appendChild(s_img_8);}
    else if(b3==9){document.getElementById('prevhometeamimg').appendChild(s_img_9);}
    else {document.getElementById('prevhometeamimg').appendChild(s_img_10);}


    if(a1==1){document.getElementById('todayawayteamimg').appendChild(b_img_1);}
    else if(a1==2){document.getElementById('todayawayteamimg').appendChild(b_img_2);}
    else if(a1==3){document.getElementById('todayawayteamimg').appendChild(b_img_3);}
    else if(a1==4){document.getElementById('todayawayteamimg').appendChild(b_img_4);}
    else if(a1==5){document.getElementById('todayawayteamimg').appendChild(b_img_5);}
    else if(a1==6){document.getElementById('todayawayteamimg').appendChild(b_img_6);}
    else if(a1==7){document.getElementById('todayawayteamimg').appendChild(b_img_7);}
    else if(a1==8){document.getElementById('todayawayteamimg').appendChild(b_img_8);}
    else if(a1==9){document.getElementById('todayawayteamimg').appendChild(b_img_9);}
    else {document.getElementById('todayawayteamimg').appendChild(b_img_10);}

    if(b1==1){document.getElementById('todayhometeamimg').appendChild(b_img_1);}
    else if(b1==2){document.getElementById('todayhometeamimg').appendChild(b_img_2);}
    else if(b1==3){document.getElementById('todayhometeamimg').appendChild(b_img_3);}
    else if(b1==4){document.getElementById('todayhometeamimg').appendChild(b_img_4);}
    else if(b1==5){document.getElementById('todayhometeamimg').appendChild(b_img_5);}
    else if(b1==6){document.getElementById('todayhometeamimg').appendChild(b_img_6);}
    else if(b1==7){document.getElementById('todayhometeamimg').appendChild(b_img_7);}
    else if(b1==8){document.getElementById('todayhometeamimg').appendChild(b_img_8);}
    else if(b1==9){document.getElementById('todayhometeamimg').appendChild(b_img_9);}
    else {document.getElementById('todayhometeamimg').appendChild(b_img_10);}

    if(a2==1){document.getElementById('nextawayteamimg').appendChild(s1_img_1);}
    else if(a2==2){document.getElementById('nextawayteamimg').appendChild(s1_img_2);}
    else if(a2==3){document.getElementById('nextawayteamimg').appendChild(s1_img_3);}
    else if(a2==4){document.getElementById('nextawayteamimg').appendChild(s1_img_4);}
    else if(a2==5){document.getElementById('nextawayteamimg').appendChild(s1_img_5);}
    else if(a2==6){document.getElementById('nextawayteamimg').appendChild(s1_img_6);}
    else if(a2==7){document.getElementById('nextawayteamimg').appendChild(s1_img_7);}
    else if(a2==8){document.getElementById('nextawayteamimg').appendChild(s1_img_8);}
    else if(a2==9){document.getElementById('nextawayteamimg').appendChild(s1_img_9);}
    else {document.getElementById('nextawayteamimg').appendChild(s1_img_10);}

    if(b2==1){document.getElementById('nexthometeamimg').appendChild(s1_img_1);}
    else if(b2==2){document.getElementById('nexthometeamimg').appendChild(s1_img_2);}
    else if(b2==3){document.getElementById('nexthometeamimg').appendChild(s1_img_3);}
    else if(b2==4){document.getElementById('nexthometeamimg').appendChild(s1_img_4);}
    else if(b2==5){document.getElementById('nexthometeamimg').appendChild(s1_img_5);}
    else if(b2==6){document.getElementById('nexthometeamimg').appendChild(s1_img_6);}
    else if(b2==7){document.getElementById('nexthometeamimg').appendChild(s1_img_7);}
    else if(b2==8){document.getElementById('nexthometeamimg').appendChild(s1_img_8);}
    else if(b2==9){document.getElementById('nexthometeamimg').appendChild(s1_img_9);}
    else {document.getElementById('nexthometeamimg').appendChild(s1_img_10);}

</script>

<script>

</script>
</html>