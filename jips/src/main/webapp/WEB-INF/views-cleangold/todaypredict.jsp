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

    <h1 style="padding-left: 30px;"><i class="fa fa-bar-chart" aria-hidden="true"></i> <strong>TODAY PREDICT</strong> [<fmt:formatDate value="${test_hhr.get(0).date}" pattern="yyyy-MM-dd"/>]</h1>
    <br/><br/>

    <div class ="col sep sep-big"></div>

    <br/><br/>
    <!-- HTML -->

    <div id="myDiv"><!-- Plotly chart will be drawn inside this DIV --></div>
    <div class ="col sep sep-big"></div>
    <br/><br/>
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
            "id":"v1",
            "axisColor": "#FF6600",
            "axisThickness": 2,
            "axisAlpha": 1,
            "position": "left"
        }, {
            "id":"v2",
            "axisColor": "#FCD202",
            "axisThickness": 2,
            "axisAlpha": 1,
            "position": "right"
        }, {
            "id":"v3",
            "axisColor": "#B0DE09",
            "axisThickness": 2,
            "gridAlpha": 0,
            "offset": 50,
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
            "fillAlphas": 0
        }, {
            "valueAxis": "v2",
            "lineColor": "#FCD202",
            "bullet": "square",
            "bulletBorderThickness": 1,
            "hideBulletsCount": 30,
            "title": "무승부 확률 : ",
            "valueField": "mDrawrate",
            "fillAlphas": 0
        }, {
            "valueAxis": "v3",
            "lineColor": "#de0c16",
            "bullet": "triangleUp",
            "bulletBorderThickness": 1,
            "hideBulletsCount": 30,
            "title": "패배할 확률 : ",
            "valueField": "mLoserate",
            "fillAlphas": 0
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
