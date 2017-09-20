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
        .corrM_win_backgnd{
            background-color: #00ff00;
        }
        .corrM_lose_backgnd{
            background-color: yellow;
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
    <h4><strong style="padding-left: 20px;"><i class="fa fa-check-circle" aria-hidden="true"></i>  HISTORY LIST</strong></h4><p style="padding-left:20px; font-size: 2px;">[2017-08-01 ~ ]</p><br/>
    <div class="test_field" style="padding-left: 0px; height: 150px; overflow: auto;" >
        <script>
            <c:forEach var="hhr_corr" items = "${hhr_corr}" varStatus = "status">
            console.log("<fmt:formatDate value="${hhr_corr.date}" pattern="yy-MM-dd"/>");
            <c:if test="${hhr_corr.corrM == 1}">
            var win_day;
            $(".test_field").prepend("<button class ='win_box'><strong><fmt:formatDate value="${hhr_corr.date}" pattern="MM-dd"/></strong></button>");
            $(".win_box").addClass('game_win');
            <c:set var="doneLoop" value="true"/>
            </c:if>
            <c:if test="${hhr_corr.corrM == 0}">
            $(".test_field").prepend("<button class ='lose_box'><strong><fmt:formatDate value="${hhr_corr.date}" pattern="MM-dd"/></strong></button>");
            $(".lose_box").addClass('game_lose');
            <c:set var="doneLoop" value="true"/>
            </c:if>
            <c:if test="${hhr_corr.corrM == 3}">
            $(".test_field").prepend("<button class ='none_box'><strong><fmt:formatDate value="${hhr_corr.date}" pattern="MM-dd"/></strong></button>");
            $(".none_box").addClass('game_none');
            <c:set var="doneLoop" value="true"/>
            </c:if>
            </c:forEach>
        </script>
    </div>
</section>

<section class="container">
    <div class ="col sep sep-big"></div>
    <br/>
    <!-- 경기 테이블-->
    <h4><strong style="padding-left: 20px;">
        <i class="fa fa-line-chart" aria-hidden="true"></i> PREDICT GRAPH</strong></h4><p style="padding-left:20px; font-size: 2px;">[2017-08-01 ~ ]</p>
    <div class="row">
        <div id="chartDiv3" style="width: 1200px;height: 300px;"></div>
    </div>

    <br/>
    <div class ="col sep sep-big"></div>
    <h4><strong style="padding-left: 20px;"><i class="fa fa-list" aria-hidden="true"></i> PREDICT LIST</strong></h4><p style="padding-left:20px; font-size: 2px;">[2017-08-01 ~ ]</p>
    <br/>
    <div class="row" style="padding-left: 50px; width:100%; height:200px;overflow:auto;">

        <table class="hhrate_table" summary = "목록">
            <thead>
            <tr>
                <th> ID</th>
                <th> Date</th>
                <th> Start time</th>
                <th> Accuracy</th>
                <th> Win_rate</th>

                <th> Draw_rate</th>
                <th> Lose_rate</th>
                <th> Correct</th>
                <th> HHscore</th>

                <th> OPPscore</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="test_hhr" items = "${test_hhr}" varStatus = "status">
                <tr>
                    <td><c:out value = "${test_hhr.id}"/></td>
                    <td><fmt:formatDate value="${test_hhr.date}" pattern="yyyy-MM-dd"/></td>
                    <td><fmt:formatDate value="${test_hhr.starttime}" pattern="yyyy-MM-dd HH:MM:SS"/></td>
                    <td><fmt:formatNumber value = "${test_hhr.mAcc}" pattern=".0000"/></td>
                    <td><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${test_hhr.mWinrate}"/></td>

                    <td><c:out value = "${test_hhr.mDrawrate}"/></td>
                    <td><c:out value = "${test_hhr.mLoserate}"/></td>
                    <td class="corrM_backgnd">${test_hhr.corrM}</td>
                    <%--<td><c:out value = "${test_hhr.corrL}"/></td>--%>
                    <td><c:out value = "${test_hhr.HHscore}"/></td>
                    <td><c:out value = "${test_hhr.OPPscore}"/></td>
                </tr>
                <!-- corrM 배경색 조절 스크립트 -->
            </c:forEach>
            </tbody>
        </table>

    </div>

    <br/><br/>
    <div class ="col sep sep-big"></div>

    <br/><br/>
    <!-- HTML -->

    <h4><strong style="padding-left: 20px;"><i class="fa fa-bar-chart" aria-hidden="true"></i>  TODAY PREDICT</strong></h4>

        <div id="myDiv"><!-- Plotly chart will be drawn inside this DIV --></div>
        <div class ="col sep sep-big"></div>
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
            "position": "left"
        }],
        "graphs": [{
            "valueAxis": "v1",
            "lineColor": "#01ff00",
            "bullet": "round",
            "bulletBorderThickness": 1,
            "hideBulletsCount": 30,
            "title": "승리할 확률 : ",
            "valueField": "mWinrate",
            "fillAlphas": 0,
            "autoGridCount" : "false"
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
