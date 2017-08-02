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

    <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
    <script src="https://www.amcharts.com/lib/3/pie.js"></script>       <!-- 그래프 : 파이 -->
    <script src="https://www.amcharts.com/lib/3/serial.js"></script>    <!-- 그래프 : 직선 -->
    <script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
    <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
</head>

<body>
<div class="row" style="height:160px;"><!--상단 메뉴창 출력 -->
    <%@ include file="/WEB-INF/views-cleangold/include/header.jsp" %>
</div>

<br/><hr/>

<section class="gameboard">
    <div class="row innerboard">
        <div class="col-md-3 boardpart" style="background-color: rgba( 0, 0, 0, 0.1 );"><!-- 좌측 공간 -->
            <div class="row toppart text_white align_center" style="padding-top : 20px"><!-- 좌측 상단 -->
                <strong><h3>지난 경기</h3></strong>
            </div>
            <div class="row middlepart"><!-- 좌측 가운데 -->
                <div class="row text_white" style="height:120px; padding-top: 100px;"><!-- 각 팀 이름, 로고 -->
                    <div class="col-md-5 align_center">
                        <img src="img/jips/initials_eagles.png"/><h4>${TeamA_name}한화 이글스</h4>
                    </div>
                    <div class="col-md-2 align_center">
                        <img src=".../img/jips/h_game_vs.png"/>
                    </div>
                    <div class="col-md-5 align_center">
                        <img src="img/jips/initials_dinos.png"/><h4>${TeamB_name}NC 다이노스</h4>
                    </div>
                </div>
                <div class="row text_white align_center" style="height:60px; padding:50px;"><!-- 각 팀 (예상)점수 -->
                    <h5>예상한 승률 : 한화이글스 64%</h5></br>
                    <h5>결과 : 한화이글스의 승리</h5>
                </div>
            </div>
            <div class="row bottompart"><!-- 좌측 하단 -->
            </div>
        </div>
        <div class="col-md-6 boardpart" style="background-color: rgba( 0, 0, 0, 0.3 );"><!-- 가운데 공간 -->
            <div class="row toppart align_center" style="padding-top : 20px"><!-- 가운데 상단 -->
                    <img src="img/jips/ico_game_before.png"/>
            </div>
            <div class="row middlepart text_white"><!-- 가운데 중단 -->
                <div class="row" style="height:160px; padding-top: 60px;"><!-- 각 팀 이름, 로고 -->
                    <div class="col-md-5 align_center">
                        <img src="img/jips/hanwha.png"/><h3>${TeamA_name}한화 이글스</h3>
                    </div>
                    <div class="col-md-2 align_center">
                        <img src=".../img/jips/h_game_live_vs.png"/>
                    </div>
                    <div class="col-md-5 align_center">
                        <img src="img/jips/nc.png"/><h3>${TeamB_name}NC 안녕하세요다이노스</h3>
                    </div>
                </div>
                <div class="row text_white align_center" style="height:140px;"><!-- 각 팀 (예상)점수 -->
                    <h1>한화이글스가 64% 확률로 승리!!</h1>
                    <h4>[ 표본채집기간 2016-3-31 ~ 2016-11-30 ] </h4>
                </div>
            </div>
            <div class="row bottompart align_center text_white" style="padding-top:20px"><!-- 가운데 하단 --><!-- 경기날짜 및 경지장 위치 -->
                <h3>${stadium}[마산], ${date}2017-08-02 , ${comp_time}[18:30]</h3>
            </div>
        </div>
        <div class="col-md-3 boardpart" style="background-color: rgba( 0, 0, 0, 0.1 );"><!-- 우측 공간 -->
            <div class="row toppart text_white align_center" style="padding-top : 20px"><!-- 우측 상단 -->
                <strong><h3>다음 경기</h3></strong>
            </div>
            <div class="row middlepart"><!-- 우측 중단 -->
                <div class="row text_white" style="height:120px; padding-top: 100px;"><!-- 각 팀 이름, 로고 -->
                    <div class="col-md-5 align_center">
                        <img src="img/jips/initials_eagles.png"/><h4>${TeamA_name}한화 이글스</h4>
                    </div>
                    <div class="col-md-2 align_center">
                        <img src=".../img/jips/h_game_vs.png"/>
                    </div>
                    <div class="col-md-5 align_center">
                        <img src="img/jips/initials_dinos.png"/><h4>${TeamB_name}NC 다이노스</h4>
                    </div>
                </div>
            </div>
            <div class="row bottompart"><!-- 우측 하단 -->
                <!-- 특별이벤트 존재시 기재 -->
            </div>
        </div>
    </div>
</section>

<br/><hr/>

<section id="content" class="container"><!-- 센터 -->
    <h1 class="page-title text-right" style="font-family: 'Nanum Gothic';">
        <strong>'Deep Learning'</strong>을 이용한 프로야구 승부예측
    </h1>
    <div class="row">
        <div class="col-md-6" id="chartDiv" style="border:solid; height: 300px;"></div>
        <div class="col-md-6" id="chartTPA" style="border:solid; height: 300px;"></div>
    </div>

    <br/><hr/><br/>

    <div class="col-md-12 hidden-sm hidden-xs" style="height: 600px;">
<%--        <p class="normal text-justify">The <strong>Deep Learning</strong>을 이용하여,
            2012년 부터의 프로야구 경기결과를 바탕으로, 딥러 바탕으로 한 승부예측을 하고자 함.
            또한, HTML5, CSS, Bootstrap, Spring과 같은 Front-End 작업과 Mybatis(동적 SQL)를 사용한 Back-End 작업을 통해
            승부예측에 사용한 정보를 나타내고자 함.
        </p>--%>
        <div class="col-md-12" id="chartCompare" style="height: 600px;"></div>

        <p><strong>Team. deepEagles / Laboratory : B103A / (Online) : http://link.koreatech.ac.kr/</strong><p/>
    </div>

</section>
<%@ include file="/WEB-INF/views-cleangold/include/footer.jsp" %>
</body>

<!-- 첫번째 그래프 : 승/패율 -->
<script>
    var chart = AmCharts.makeChart( "chartDiv", {
        "type": "pie",
        "fontFamily" : "Italic",
        "theme": "light",
        "fontSize": 16,
        "dataProvider": [ {
            "country": "승리 ",
            "litres": ${pWin},
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
        "radius" : "25%",
        "valueField": "litres",
        "titleField": "country",
        "balloon":{
            "fixedPosition":true
        },"export": {
            "enabled": true
        }
    } );


    <!-- 2번째 그래프 : 날짜별 기록(단일) -->
    var chartData = generateChartData();
    var chart = AmCharts.makeChart("chartTPA", {
        "type": "serial",
        "theme": "light",
        "border":"solid",
        "border-color": "#ff0000",
        "radius" : "25%",
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

            visits = ${tpa};
            // = Math.round(Math.random() * (40 + i / 5)) + 20 + i;

            chartData.push({
                date: newDate,
                visits: visits
            });
        }
        return chartData;
    }


    $(document).ready(function () {
        $(".mini_abstract").hide();
    });
</script>

<!--3번째 그래프 : 날짜별 기록(다중) -->

<script>

    var chartData = generateChartData();
    var chart = AmCharts.makeChart("chartCompare", {
        "type": "serial",
        "theme": "light",
        "legend": {
            "useGraphSettings": true
        },
        "dataProvider": chartData,
        "synchronizeGrid": true,
        "valueAxes": [{
            "id": "v1",             // 축 항목1
            "axisColor": "#FF6600",
            "axisThickness": 2,
            "axisAlpha": 1,
            "position": "left"
        }, {
            "id": "v2",             // 축 항목2
            "axisColor": "#FCD202",
            "axisThickness": 2,
            "axisAlpha": 1,
            "position": "right"
        }, {
            "id": "v3",             // 축 항목3
            "axisColor": "#B0DE09",
            "axisThickness": 2,
            "gridAlpha": 0,
            "offset": 50,           // 축에대한 범위표시가 겹치지 않게끔 해줌
            "axisAlpha": 1,
            "position": "left"
        }],
        "graphs": [{
            "valueAxis": "v1",      // 그래프1
            "lineColor": "#FF6600",
            "bullet": "round",
            "bulletBorderThickness": 1,
            "hideBulletsCount": 30,
            "title": "red line",
            "valueField": "visits",
            "fillAlphas": 0
        }, {
            "valueAxis": "v2",      // 그래프2
            "lineColor": "#FCD202",
            "bullet": "square",
            "bulletBorderThickness": 1,
            "hideBulletsCount": 30,
            "title": "yellow line",
            "valueField": "hits",
            "fillAlphas": 0
        }, {
            "valueAxis": "v3",      // 그래프3
            "lineColor": "#B0DE09",
            "bullet": "triangleUp",
            "bulletBorderThickness": 1,
            "hideBulletsCount": 30,
            "title": "green line",
            "valueField": "views",
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
        var firstDate = new Date();
        firstDate.setDate(firstDate.getDate() - 100);

        for (var i = 0; i < 100; i++) {
            // we create date objects here. In your data, you can have date strings
            // and then set format of your dates using chart.dataDateFormat property,
            // however when possible, use date objects, as this will speed up chart rendering.
            var newDate = new Date(firstDate);
            newDate.setDate(newDate.getDate() + i);

            var visits = Math.round(Math.sin(i * 5) * i);
            var hits = Math.round(Math.random() * 80) + 500 + i * 3;
            var views = Math.round(Math.random() * 6000) + i * 4;

            chartData.push({
                date: newDate,
                visits: visits,
                hits: hits,
                views: views
            });
        }
        return chartData;
    }

    function zoomChart() {
        chart.zoomToIndexes(chart.dataProvider.length - 20, chart.dataProvider.length - 1);
    }
</script>

<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../../dist/js/bootstrap.min.js"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
<script src="../../assets/js/vendor/holder.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</html>