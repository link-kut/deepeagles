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
    <link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css">
    <!-- 글씨체 사용을 위한 설정 -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css">
</head>

<body>
    <div class="row">
        <!-- 헤드-헤더.jsp를 이용한 상단 메뉴창 출력 -->
        <%@ include file="/WEB-INF/views-cleangold/include/header.jsp" %>
    </div>
    <section id="content" class="container">
        <h1 class="page-title text-right" style="font-family: 'Nanum Gothic';"><strong>'Deep Learning'</strong>을 이용한 프로야구 승부예측</h1>
        <div class="grid12 col">

        <%--<h2 class="title"><i class="fa fa-angle-double-right"></i> Statistics</h2>--%>
        <div class="row">
            <div class="col-md-6" id="chartDiv" style="height: 250px; background-color: #FFFFFF;"></div>
            <div class="col-md-6" id="chartTPA" style="height: 250px; background-color: #FFFFFF;"></div>
        </div>

            <br/>
            <hr/>
            <br/>
    </div>

    <div class="col-md-12 hidden-sm hidden-xs">
        <p class="normal text-justify"> ${test2.id} The <strong>Deep Learning</strong>을 이용하여,
            2012년 부터의 프로야구 경기결과를 바탕으로, 딥러 바탕으로 한 승부예측을 하고자 함.
            또한, HTML5, CSS, Bootstrap, Spring과 같은 Front-End 작업과 Mybatis(동적 SQL)를 사용한 Back-End 작업을 통해
            승부예측에 사용한 정보를 나타내고자 함.
        </p>
        <font face="${resources2}/fonts/NanumGothic.ttf"></font>
        <div class="grid12 col">
            <table border="1" width="500" height="350">
            </table>
        </div>
        <p>
            <font face="NanumGothic" color="red">ddd</font><strong>Team. deepEagles / Laboratory : B103A / (Online) : http://~</strong>
        </p>
    </div>
    <%--<div class="grid2 col text-right">
    <img src="${resources2}/img/jips/JIPS_engpaper.jpg" height="200" alt="JIPS_engpaper"/>
    </div>--%>

    <a href="#top" id="top-link"><span></span></a>

</section>
<%@ include file="/WEB-INF/views-cleangold/include/footer.jsp" %>
</body>

<!-- Resources -->
<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<!-- 그래프유형관련 js 로드(?) -->
<script src="https://www.amcharts.com/lib/3/pie.js"></script>
<script src="https://www.amcharts.com/lib/3/serial.js"></script>

<script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>

<script>
    //$(".amchart-title-main").css("font-family", "Italic");
    var chart = AmCharts.makeChart( "chartDiv", {
        "type": "pie",
        "fontFamily" : "Italic",
        "theme": "light",
        "fontSize": 16,
        "dataProvider": [ {
            "country": "승리 ",
            "litres": ${pWin}
        }, {
            "country": "패배 ",
            "litres": ${pLose}
        } ],
        "titles": [ {
            "id": "Title-2",
            "size": 24,         // textsize
            "text": "승리 vs 패배"
        }
        ],
        "valueField": "litres",
        "titleField": "country",
        "balloon":{
            "fixedPosition":true
        },"export": {
            "enabled": true
        }
    } );

    /************************************************2번째 그래프*/

    var chartData = generateChartData();
    var chart = AmCharts.makeChart("chartTPA", {
        "type": "serial",
        "theme": "light",
        "marginRight": 80,
        "autoMarginOffset": 20,
        "marginTop": 7,
        "dataProvider": chartData,
        "valueAxes": [{
            "axisAlpha": 0.2,
            "dashLength": 1,
            "position": "left"
        }],
        "mouseWheelZoomEnabled": true,
        "graphs": [{
            "id": "g1",
            "balloonText": "[[value]]",
            "bullet": "round",
            "bulletBorderAlpha": 1,
            "bulletColor": "#FFFFFF",
            "hideBulletsCount": 50,
            "title": "red line",
            "valueField": "visits",
            "useLineColorForBulletBorder": true,
            "balloon":{
                "drop":true
            }
        }],
        "titles": [ {
            "id": "Title-3",
            "size": 24,         // textsize
            "text": "TPA : 총타석수"
        }
        ],
        "chartScrollbar": {
            "autoGridCount": true,
            "graph": "g1",
            "scrollbarHeight": 40
        },
        "chartCursor": {
            "limitToGraph":"g1"
        },
        "categoryField": "date",
        "categoryAxis": {
            "parseDates": true,
            "axisColor": "#DADADA",
            "dashLength": 1,
            "minorGridEnabled": true
        },
        "export": {
            "enabled": true
        }
    });

    chart.addListener("rendered", zoomChart);
    zoomChart();

    // this method is called when chart is first inited as we listen for "rendered" event
    function zoomChart() {
        // different zoom methods can be used - zoomToIndexes, zoomToDates, zoomToCategoryValues
        chart.zoomToIndexes(chartData.length - 40, chartData.length - 1);
    }

    // generate some random data, quite different range

    function generateChartData() {
        var chartData = [];
        var visits = [];
        var firstDate = new Date();
        firstDate.setDate(firstDate.getDate() - 5);

        for (var i = 0; i < 10000; i++) {
            // we create date objects here. In your data, you can have date strings
            // and then set format of your dates using chart.dataDateFormat property,
            // however when possible, use date objects, as this will speed up chart rendering.
            var newDate = new Date(firstDate);
            newDate.setDate(newDate.getDate() + i);

            visits = ${teamTPA};
            // = Math.round(Math.random() * (40 + i / 5)) + 20 + i;

            chartData.push({
                date: newDate,
                visits: visits
            });
        }
        return chartData;
    }
</script>

<script>
    $(document).ready(function () {
        $(".mini_abstract").hide();
    });
</script>

</html>