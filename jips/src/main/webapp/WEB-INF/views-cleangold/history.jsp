<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page pageEncoding="utf-8" %>
<%@ page contentType="text/html;charset=utf-8" language="java" %>

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

        .hhrate_table thead tr th{
            width:auto;
            background-color: #d3702a;
            text-align: center;
        }
        .hhrate_table tbody tr td{
            text-align: center;
        }
        .hhrate_table tbody tr td:nth-child(odd){
            background-color: #ffce4c !important;
        }

        .win_box, .lose_box, .none_box {
            width: 50px;
            height: 50px;
            background-color: #ffffff;
            margin: 5px;
            float: left;
        }
        .game_lose {
            font-size: 5px;
            background-color: yellow;
        }
        .game_win {
            font-size: 5px;
            background-color: #00ff00;

        }
        .game_none{
            font-size: 9px;
            background-color: white;
        }

        /*말풍선디자인*/


        .arrow_box {
            display: none;
            position: absolute;
            padding: 10px;
            -webkit-border-radius: 8px;
            -moz-border-radius: 8px;
            border-radius: 8px;
            background: #333;
            color: #fff;
        }

        .arrow_box:after {
            position: absolute;
            bottom: 100%;
            left: 30%;
            width: 0;
            height: 0;
            margin-left: -10px;
            border: solid transparent;
            border-color: rgba(51, 51, 51, 0);
            border-bottom-color: #333;
            border-width: 10px;
            pointer-events: none;
            content: " ";
        }

        span:hover + p.arrow_box {
            display: block;
        }
    </style>

    <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
    <script src="https://www.amcharts.com/lib/3/pie.js"></script>       <!-- 그래프 : 파이 -->
    <script src="https://www.amcharts.com/lib/3/serial.js"></script>    <!-- 그래프 : 직선 -->
    <script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
    <script src="https://www.amcharts.com/lib/3/plugins/animate/animate.min.js"></script>
    <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
    <script src="http://www.amcharts.com/lib/3/plugins/dataloader/dataloader.min.js" type="text/javascript"></script>

    <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>

    <%@ include file="/WEB-INF/views-cleangold/include/head.jsp" %>
    <link rel="stylesheet" href="webapp/resources-cleangold/css/custom.css?ver=1">
    <link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css">
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
</head>

<body>
<div class="row" style="height:160px;"><!--상단 메뉴창 출력 -->
    <%@ include file="/WEB-INF/views-cleangold/include/header.jsp" %>
</div>




<section class="container">
    <h1 style="padding-left: 30px;"><i class="fa fa-area-chart" aria-hidden="true"></i> <strong>History</strong></h1>
    <br/>

    <div class ="col sep sep-big"></div>
    <h4><strong style="padding-left: 20px;"><i class="fa fa-check-circle" aria-hidden="true"></i>  HISTORY LIST</strong></h4><br/><h6 style="padding-left:20px; "><strong>[2017-08-01 ~ <fmt:formatDate value="${test_hhr.get(0).date}" pattern="yyyy-MM-dd"/>]</strong>  </h6><br/>
    <div  class="row" style="padding-left: 15px;">
        <button class ='win_box'><strong>예측<br/>성공</strong></button> <button class ='lose_box'><strong>예측<br/>실패</strong></button>
    </div>
    <br/>

    <div class="test_field" style="padding-left: 0px; height: 150px; overflow: auto;" >
        <script>
            <c:forEach var="hhr_corr" items = "${hhr_corr}" varStatus = "status">
            console.log("<fmt:formatDate value="${hhr_corr.date}" pattern="yy-MM-dd"/>");
            <c:if test="${hhr_corr.corrM == 1}">
            var win_day;
            $(".test_field").prepend("<button class ='win_box'><a><span><fmt:formatDate value="${hhr_corr.date}" pattern="MM-dd"/></span><p class='arrow_box'>승 : ${hhr_corr.mWinrate}<br/>무 : ${hhr_corr.mDrawrate}<br/>패 : ${hhr_corr.mLoserate}<br/>한화 ${hhr_corr.HHscore} : ${hhr_corr.OPPscore} </p></a> </button>");
            $(".win_box").addClass('game_win');
            <c:set var="doneLoop" value="true"/>
            </c:if>
            <c:if test="${hhr_corr.corrM == 0}">
            $(".test_field").prepend("<button class ='lose_box'><a><span><fmt:formatDate value="${hhr_corr.date}" pattern="MM-dd"/></span><p class='arrow_box'>승 : ${hhr_corr.mWinrate}<br/>무 : ${hhr_corr.mDrawrate}<br/>패 : ${hhr_corr.mLoserate}<br/>한화 ${hhr_corr.HHscore} : ${hhr_corr.OPPscore}</p></a> </button>");
            $(".lose_box").addClass('game_lose');
            <c:set var="doneLoop" value="true"/>
            </c:if>
            <c:if test="${hhr_corr.corrM == 3}">
            $(".test_field").prepend("<button class ='none_box'><a><span><fmt:formatDate value="${hhr_corr.date}" pattern="MM-dd"/></span><p class='arrow_box'>승 : ${hhr_corr.mWinrate}<br/>무 : ${hhr_corr.mDrawrate}<br/>패 : ${hhr_corr.mLoserate}<br/>한화 ${hhr_corr.HHscore} : ${hhr_corr.OPPscore}</p></a> </button>");
            $(".none_box").addClass('game_none');
            <c:set var="doneLoop" value="true"/>
            </c:if>
            </c:forEach>
        </script>
    </div>
</section>
<br/><br/>
<section class="container">
    <br/>
    <div class ="col sep sep-big"></div>
    <h4><strong style="padding-left: 20px;"><i class="fa fa-list" aria-hidden="true"></i> PREDICT LIST</strong></h4><br/><h6 style="padding-left:20px; "><strong>[2017-08-01 ~ <fmt:formatDate value="${test_hhr.get(0).date}" pattern="yyyy-MM-dd"/>]</strong></h6><br/>
    <div  class="row" style="padding-left: 15px">
        <button class ='win_box game_win'>예측<br/>성공</button>
        <button class ='lose_box game_lose'>예측<br/>실패</button>
    </div>
    <br/>
    <div class="row" style="padding-left: 50px; width:100%; height:200px;overflow:auto;">
        <table  summary = "목록">
            <thead>
            <tr>
                <th> ID</th>
                <th> 날짜</th>
                <th> 완료시간</th>
                <th> Back-Test 정확도</th>
                <th> 승률</th>

                <th> 무승부율</th>
                <th> 패율</th>
                <th> 예측일치여부</th>
                <th> 한화 점수</th>

                <th> 상대 점수</th>
            </tr>
            </thead>
            <tbody class="tbody_field">
            <script>

                <c:forEach var="hhr_corr" items = "${hhr_corr}" varStatus = "status">
                <c:if test="${hhr_corr.corrM == 1}">
                <%--<c:if test="${hhr_corr.corrM == 1}">--%>
                $(".tbody_field").prepend("<tr class = 'table_${hhr_corr.id}'></tr>")
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: #00ff00;'><c:out value = "${hhr_corr.OPPscore}"/></td>");
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: #00ff00;'><c:out value = "${hhr_corr.HHscore}"/></td>");
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: #00ff00;'><c:out value = "${hhr_corr.corrM}"/></td>")
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: #00ff00;'><c:out value = "${hhr_corr.mLoserate}"/></td>");
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: #00ff00;'><c:out value = "${hhr_corr.mDrawrate}"/></td>");
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: #00ff00;'><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${hhr_corr.mWinrate}"/></td>");
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: #00ff00;'><fmt:formatNumber value = "${hhr_corr.mAcc}" pattern=".0000"/></td>");
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: #00ff00;'><fmt:formatDate value="${hhr_corr.starttime}" pattern="yyyy-MM-dd HH:MM:SS"/></td>");
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: #00ff00;'><fmt:formatDate value="${hhr_corr.date}" pattern="yyyy-MM-dd"/></td>");
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: #00ff00;'><c:out value = "${hhr_corr.id}"/></td>");
                </c:if>

                <c:if test="${hhr_corr.corrM == 0}">
                <%--<c:if test="${hhr_corr.corrM == 1}">--%>
                $(".tbody_field").prepend("<tr class = 'table_${hhr_corr.id}'></tr>")
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: yellow; '><c:out value = "${hhr_corr.OPPscore}"/></td>");
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: yellow; '><c:out value = "${hhr_corr.HHscore}"/></td>");
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: yellow; ' ><c:out value = "${hhr_corr.corrM}"/></td>")
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: yellow; '><c:out value = "${hhr_corr.mLoserate}"/></td>");
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: yellow; '><c:out value = "${hhr_corr.mDrawrate}"/></td>");
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: yellow; '><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${hhr_corr.mWinrate}"/></td>");
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: yellow; '><fmt:formatNumber value = "${hhr_corr.mAcc}" pattern=".0000"/></td>");
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: yellow; '><fmt:formatDate value="${hhr_corr.starttime}" pattern="yyyy-MM-dd HH:MM:SS"/></td>");
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: yellow; '><fmt:formatDate value="${hhr_corr.date}" pattern="yyyy-MM-dd"/></td>");
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: yellow; '><c:out value = "${hhr_corr.id}"/></td>");
                </c:if>
                <c:if test="${hhr_corr.corrM == 3}">
                <%--<c:if test="${hhr_corr.corrM == 1}">--%>
                $(".tbody_field").prepend("<tr class = 'table_${hhr_corr.id}'></tr>")
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: white; '><c:out value = "${hhr_corr.OPPscore}"/></td>");
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: white; '><c:out value = "${hhr_corr.HHscore}"/></td>");
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: white; ' ><c:out value = "${hhr_corr.corrM}"/></td>")
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: white; '><c:out value = "${hhr_corr.mLoserate}"/></td>");
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: white; '><c:out value = "${hhr_corr.mDrawrate}"/></td>");
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: white; '><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${hhr_corr.mWinrate}"/></td>");
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: white; '><fmt:formatNumber value = "${hhr_corr.mAcc}" pattern=".0000"/></td>");
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: white; '><fmt:formatDate value="${hhr_corr.starttime}" pattern="yyyy-MM-dd HH:MM:SS"/></td>");
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: white; '><fmt:formatDate value="${hhr_corr.date}" pattern="yyyy-MM-dd"/></td>");
                $(".table_${hhr_corr.id}").prepend("<td style='background-color: white; '><c:out value = "${hhr_corr.id}"/></td>");
                </c:if>


                <c:set var="doneLoop" value="true"/>
                <%--</c:if>--%>

                </c:forEach>
            </script>
            </tbody>
        </table>

    </div>

    <br/><br/>
    <div class ="col sep sep-big"></div>
    <br/>
    <!-- 경기 테이블-->
    <h4><strong style="padding-left: 20px;">
        <i class="fa fa-line-chart" aria-hidden="true"></i> PREDICT GRAPH</strong></h4><br/><h6 style="padding-left:20px; "><strong>[2017-08-01 ~ <fmt:formatDate value="${test_hhr.get(0).date}" pattern="yyyy-MM-dd"/>]</strong></h6><br/>
    <div class="row">
        <div id="chartDiv3" style="width: 1200px;height: 300px;"></div>
    </div>

    <br/><br/>

    <div class ="col sep sep-big"></div>

    <br/><br/><br/>
    <!-- HTML -->


        <div id="myDiv" style="display: none;"><!-- Plotly chart will be drawn inside this DIV --></div>
</section>

<%@ include file="/WEB-INF/views-cleangold/include/footer.jsp" %>
</body>

<!-- Chart code -->
<script>
    var data = [{
        x: ['승', '무', '패'],
        y: [${datarecent.get(0).mWinrate}, ${datarecent.get(0).mDrawrate}, ${datarecent.get(0).mLoserate}],
        type: 'bar'
    }];
    Plotly.newPlot('myDiv', data);

    var chartData = generateChartData();
    var chart = AmCharts.makeChart("chartDiv3", {
        "type": "serial",
        "theme": "light",
        "legend": {
            "useGraphSettings": true
        },
        "dataProvider": chartData,
        "synchronizeGrid":true,
        "valueAxes": [{
            "id":"v1",      // 승리확률
            "axisColor": "#FF6600",
            "axisThickness": 2,
            "axisAlpha": 1,
            "position": "left",
            "autoGridCount" : "false"
        }, {
            "id":"v2",      // 무승부확률
            "axisColor": "#FCD202",
            "axisThickness": 2,
            "offset": 80,
            "axisAlpha": 1,
            "position": "left",
            "autoGridCount" : "false"
        }, {
            "id":"v3",      // 패배확률
            "axisColor": "#B0DE09",
            "axisThickness": 2,
            "gridAlpha": 0,
            "offset": 40,
            "axisAlpha": 1,
            "position": "left",
            "autoGridCount" : "false"
        }],
        "graphs": [{
            "valueAxis": "v1",
            "lineColor": "#01ff00",
            "bullet": "round",
            "bulletBorderThickness": 1,
            "hideBulletsCount": 30,
            "title": "승리할 확률 : ",
            "valueField": "mWinrate",
            "fillAlphas": 0
        }, {
            "valueAxis": "v2",
            "lineColor": "#FCD202",
            "bullet": "square",
            "bulletBorderThickness": 1,
            "hideBulletsCount": 30,
            "title": "무승부 확률 : ",
            "valueField": "mDrawrate",
            "fillAlphas": 0,
            "autoGridCount" : "false"
        }, {
            "valueAxis": "v3",
            "lineColor": "#de0c16",
            "bullet": "triangleUp",
            "bulletBorderThickness": 1,
            "hideBulletsCount": 30,
            "title": "패배할 확률 : ",
            "valueField": "mLoserate",
            "fillAlphas": 0,
            "autoGridCount" : "false"
        }],
        "chartScrollbar": {},
        "chartCursor": {
            "cursorPosition": "mouse"
        },
        "categoryField": "date",
        "categoryAxis": {
            "parseDates": true,
            "axisColor": "#DADADA",
            "minorGridEnabled": true
        },
        "export": {
            "enabled": true,
            "position": "bottom-right"
        }
    });
    chart.addListener("dataUpdated", zoomChart);
    zoomChart();
    // generate some random data, quite different range
    function generateChartData() {
        var chartData = [];
        var a = 0;
        var firstDate = new Date();
        firstDate.setDate(a);

        <c:forEach items="${graphdata}" var="graphdata" varStatus="i">
        var newDate = new Date(firstDate);
        newDate.setDate(${graphdata.datenum});

        chartData.push({
            date: newDate,
            mWinrate : ${graphdata.mWinrate},
            mDrawrate : ${graphdata.mDrawrate},
            mLoserate : ${graphdata.mLoserate}
        });
        </c:forEach>

        return chartData;
    }
    function zoomChart(){
        chart.zoomToIndexes(chart.dataProvider.length - 20, chart.dataProvider.length - 1);
    }
</script>

</html>
