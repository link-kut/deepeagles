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

<section class="gameboard container">
    <div class="col-md-3 boardpart" style="background-color: rgba( 0, 0, 0, 0.1 );"><!-- 좌측 공간 -->
        <div class="row toppart text_white align_center" style="padding-top : 20px"><!-- 좌측 상단 -->
            <strong><h3>지난 경기</h3></strong>
        </div>
        <div class="row middlepart"><!-- 좌측 가운데 -->
            <div class="row text_white" style="height:120px; padding-top: 100px;"><!-- 각 팀 이름, 로고 -->
                <div class="col-md-5 align_right">
                    <img src="/resources2/img/jips/initials_eagles.png"/>
                    <h6>한화 이글스</h6>
                </div>
                <div class="col-md-2 align_center">
                    <img src="/resources2/img/jips/h_game_vs.png"/>
                </div>
                <div class="col-md-5 align_left">
                    <img src="/resources2/img/jips/initials_wyverns.png"/>
                    <h6>SK 와이번스</h6>
                </div>
            </div></br>
            <div class="row text_white align_center" style="padding-top:50px;"><!-- 각 팀 (예상)점수 -->
                <h5>예상한 승률 : 한화이글스 64%</h5>
                <h5>결과 : 한화이글스의 승리</h5></br>
            </div>
        </div>
        <div class="row bottompart text_white align_center"><!-- 좌측 하단 -->
            <h6>[문학], 2017-08-27(일) , [18:00]</h6>
        </div>
    </div>
    <div class="col-md-6 boardpart" style="background-color: rgba( 0, 0, 0, 0.3 );"><!-- 가운데 공간 -->
        <div class="row toppart align_center text_white" style="padding-top : 20px"><!-- 가운데 상단 -->
            <h4>오늘의 경기</h4>
            <%--<img src="/resources2/img/jips/ico_game_before.png"/>--%>
        </div>
        <div class="row middlepart text_white"><!-- 가운데 중단 -->
            <div class="row"><!-- 각 팀 이름, 로고 -->
                <div class="col-md-5 align_center" style="padding-left:30px; padding-bottom:30px;">
                    <img src="/resources2/img/jips/hanwha.png"/>
                    <h3>한화 이글스</h3>
                </div>
                <div class="col-md-2 align_center" style="padding-top:50px;">
                    <img src="resources2/img/jips/h_game_live_vs.png"/>
                </div>
                <div class="col-md-5 align_center" style="padding-right:30px; padding-bottom:30px;">
                    <img src="/resources2/img/jips/lg.png"/>
                    <h3>LG 트윈스</h3>
                </div>
            </div>
            <div class="row text_white align_center"><!-- 각 팀 (예상)점수 -->
                <h3>한화이글스가 64% 확률로 승리!!</h3><br/>
                <h5>[ 표본채집기간 2017-07-15 ~ 2017-08-29 ] </h5>
            </div>
        </div>
        <div class="row bottompart align_center text_white" style="padding-top:20px"><!-- 가운데 하단 -->
            <!-- 경기날짜 및 경지장 위치 -->
            <h5>[대전], 2017-08-29(화) , [18:30]</h5>
        </div>
    </div>
    <div class="col-md-3 boardpart" style="background-color: rgba( 0, 0, 0, 0.1 );"><!-- 우측 공간 -->
        <div class="row toppart text_white align_center" style="padding-top : 20px"><!-- 우측 상단 -->
            <strong><h3>다음 경기</h3></strong>
        </div>
        <div class="row middlepart"><!-- 우측 중단 -->
            <div class="row text_white" style="height:120px; padding-top: 100px;"><!-- 각 팀 이름, 로고 -->
                <div class="col-md-5 align_right" >
                    <img src="/resources2/img/jips/initials_eagles.png"/>
                    <h6>한화 이글스</h6>
                </div>
                <div class="col-md-2 align_center">
                    <img src="/resources2/img/jips/h_game_vs.png"/>
                </div>
                <div class="col-md-5 align_left">
                    <img src="/resources2/img/jips/initials_twins.png"/>
                    <h6>LG 트윈스</h6>
                </div>
            </div>
        </div>
        <div class="row bottompart text_white align_center"><!-- 우측 하단 -->
            <!-- 특별이벤트 존재시 기재 -->
            <h6>[대전], 2017-08-29(화) , [18:30]</h6>
        </div>
    </div>
</section>

<section class="container"><!-- 센터 -->
<%--    <div class="row">
        <h1 class="page-title text-right" style="font-family: 'Nanum Gothic';">
            <strong>'Deep Learning'</strong>을 이용한 프로야구 승부예측
        </h1>
    </div>--%>
    <div class="row">
        <div class="col-md-6" id="chartDiv" style="height: 300px;"></div>
        <div class="col-md-6" id="chartDiv2" style="height: 300px;"></div>
    </div>
    <div class="row">
        <div id="chartDiv3" style="height: 300px;"></div>
    </div>

    <div class="col-md-12 hidden-sm hidden-xs">
<%--        <p class="normal text-justify">The <strong>Deep Learning</strong>을 이용하여,
            2012년 부터의 프로야구 경기결과를 바탕으로, 딥러 바탕으로 한 승부예측을 하고자 함.
            또한, HTML5, CSS, Bootstrap, Spring과 같은 Front-End 작업과 Mybatis(동적 SQL)를 사용한 Back-End 작업을 통해
            승부예측에 사용한 정보를 나타내고자 함.
        </p>--%>
        <p><strong>Team. deepEagles / Laboratory : B103A / (Online) : <a>http://link.koreatech.ac.kr/</a></strong><p/>

</section>

<!-- footer -->
<%@ include file="/WEB-INF/views-cleangold/include/footer.jsp" %>
</body>

<!-- 첫번째 그래프 : 경기전적 / 17년 시즌 -->
<script>
    var chart = AmCharts.makeChart("chartDiv", {
        "type": "serial",
        "theme": "light",
        "marginRight": 70,
        "dataProvider": [{
            "country": "승",
            "visits": 43,
            "color": "#183072"
        }, {
            "country": "무",
            "visits": 1,
            "color": "#b3b3aa"
        }, {
            "country": "패",
            "visits": 62,
            "color": "#ff7f00"
        }],
        "valueAxes": [{
            "axisAlpha": 0,
            "position": "left",
            "title": "17년 한화 경기 전적"
        }],
        "startDuration": 1,
        "graphs": [{
            "balloonText": "<b>[[category]]: [[value]]</b>",
            "fillColorsField": "color",
            "fillAlphas": 0.9,
            "lineAlpha": 0.2,
            "type": "column",
            "valueField": "visits"
        }],
        "chartCursor": {
            "categoryBalloonEnabled": false,
            "cursorAlpha": 0,
            "zoomable": false
        },
        "titles": [ {
            "id": "Title-2",
            "size": 18,         // textsize
            "text": "17년 한화 경기 전적"
        } ],
        "categoryField": "country",
        "categoryAxis": {
            "gridPosition": "start",
            "labelRotation": 45
        },
        "export": {
            "enabled": true
        }
    });
</script>
<%--<script>
    var chart = AmCharts.makeChart("chartDiv2", {
        "type": "serial",
        "theme": "light",
        "marginRight": 70,
        "dataProvider": [{
            "country": "승",
            "visits": 321,
            "color": "#FF0F00"
        }, {
            "country": "패",
            "visits": 452,
            "color": "#FF6600"
        }, {
            "country": "무",
            "visits": 10,
            "color": "#FF9E01"
        }],
        "titles": [ {
            "id": "Title-2",
            "size": 24,         // textsize
            "text": "경기 전적 [17년 / 전체]"
        } ],
        "valueAxes": [{
            "axisAlpha": 0,
            "position": "left",
            "title": "Visitors from country"
        }],
        "startDuration": 1,
        "graphs": [{
            "balloonText": "<b>[[category]]: [[value]]</b>",
            "fillColorsField": "color",
            "fillAlphas": 0.9,
            "lineAlpha": 0.2,
            "type": "column",
            "valueField": "visits"
        }],
        "chartCursor": {
            "categoryBalloonEnabled": false,
            "cursorAlpha": 0,
            "zoomable": false
        },
        "categoryField": "country",
        "categoryAxis": {
            "gridPosition": "start",
            "labelRotation": 45
        },
        "export": {
            "enabled": true
        }
    });
</script>--%> <!-- 경기전적 파이 그래프 -->

<!-- 두번째 그래프 : 경기전적 / 12-17년 & 17년 시즌 비교 -->
<script>
    var chart = AmCharts.makeChart("chartDiv2", {
        "theme": "light",
        "type": "serial",
        "dataProvider": [{
            "country": "승",
            "year2016": 66,
            "year2017": 43
        }, {
            "country": "무",
            "year2016": 3,
            "year2017": 1
        }, {
            "country": "패",
            "year2016": 75,
            "year2017": 62
        }],
        "startDuration": 1,
        "graphs": [{
            "balloonText": "16년 [[category]] : <b>[[value]]</b>",
            "fillColorField" : "#ff7f00",
            "fillAlphas": 0.9,
            "lineAlpha": 0.2,
            "title": "2016",
            "type": "column",
            "valueField": "year2016"
        }, {
            "balloonText": "17년 [[category]] : <b>[[value]]</b>",
            "fillColorField" : "#183072",
            "fillAlphas": 0.9,
            "lineAlpha": 0.2,
            "title": "2017",
            "type": "column",
            "clustered":false,
            "columnWidth":0.5,
            "valueField": "year2017"
        }],
        "titles": [ {
            "id": "Title-2",
            "size": 18,         // textsize
            "text": "이전 / 현재 경기전적 비교"
        } ],
        "plotAreaFillAlphas": 0.1,
        "categoryField": "country",
        "categoryAxis": {
            "gridPosition": "start",
            "labelRotation": 45
        },
        "export": {
            "enabled": true
        }

    });
</script> <!-- 경기전적 비교 그래프 -->

<!-- 세번째 그래프 : 기타 기록 열거 -->
<script>
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
            "lineColor": "#FF6600",
            "bullet": "round",
            "bulletBorderThickness": 1,
            "hideBulletsCount": 30,
            "title": "TPA : 타석에 들어선 총 횟수",
            "valueField": "visits",
            "fillAlphas": 0
        }, {
            "valueAxis": "v2",
            "lineColor": "#FCD202",
            "bullet": "square",
            "bulletBorderThickness": 1,
            "hideBulletsCount": 30,
            "title": "AB : 타수[총 타석에 들어선 횟수 - (4사구 + 희생타)]",
            "valueField": "hits",
            "fillAlphas": 0
        }, {
            "valueAxis": "v3",
            "lineColor": "#B0DE09",
            "bullet": "triangleUp",
            "bulletBorderThickness": 1,
            "hideBulletsCount": 30,
            "title": "H : 총 안타수",
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

        var visits = 500;
        var hits = 500;
        var views = 10;

        for (var i = 0; i < 100; i++) {
            // we create date objects here. In your data, you can have date strings
            // and then set format of your dates using chart.dataDateFormat property,
            // however when possible, use date objects, as this will speed up chart rendering.
            var newDate = new Date(firstDate);
            newDate.setDate(newDate.getDate() + i);

            visits = Math.round((Math.random()<0.5?1:0.8)*Math.random()*60);
            hits = Math.round((Math.random()<0.5?1:0.8)*Math.random()*60);
            views = Math.round((Math.random()<0.5?1:1)*Math.random()*15);

            chartData.push({
                date: newDate,
                visits: visits,
                hits: hits,
                views: views
            });
        }
        return chartData;
    }

    function zoomChart(){
        chart.zoomToIndexes(chart.dataProvider.length - 20, chart.dataProvider.length - 1);
    }
</script>

</html>