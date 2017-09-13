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
    </style>

    <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
    <script src="https://www.amcharts.com/lib/3/pie.js"></script>       <!-- 그래프 : 파이 -->
    <script src="https://www.amcharts.com/lib/3/serial.js"></script>    <!-- 그래프 : 직선 -->
    <script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
    <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>

    <%@ include file="/WEB-INF/views-cleangold/include/head.jsp" %>
    <link rel="stylesheet" href="webapp/resources-cleangold/css/custom.css?ver=1">
    <link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css">
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
</head>

<body>
    <div class="row" style="height:160px;"><!--상단 메뉴창 출력 -->
        <%@ include file="/WEB-INF/views-cleangold/include/header.jsp" %>
    </div>

    <hr/>
    <!-- 두번째 섹션 : 데이터 표현그래프 -->
    <section class="container"><!-- 센터 -->
        <!-- 투수 테이블-->
        <div class="row">
            <h1>투수 정보</h1>
            <table class="td_ctrl">
                <tr>
                    <th>No.</th>
                    <th>Win</th>
                    <th>Lose</th>
                    <th>SV</th>
                    <th>HLD</th>
                    <th>BS</th>
                    <th>QS</th>
                    <th>IP</th>
                    <th>PA</th>
                    <th>H</th>
                    <th>2B</th>
                    <th>3B</th>
                    <th>HR</th>
                    <th>R</th>
                    <th>ER</th>
                    <th>SO</th>
                    <th>BB</th>
                    <th>IBB</th>
                    <th>HBP</th>
                    <th>WP</th>
                    <th>BK</th>
                    <th>PK</th>
                    <th>CS</th>
                    <th>SB</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>${pWin.forEach(someFn)}</td>
                    <td>1</td>
                    <td>0</td>
                    <td>0</td>
                    <td>0</td>
                    <td>1</td>
                    <td>8.00</td>
                    <td>37</td>
                    <td>10</td>
                    <td>1</td>
                    <td>0</td>
                    <td>1</td>
                    <td>4</td>
                    <td>3</td>
                    <td>6</td>
                    <td>1</td>
                    <td>0</td>
                    <td>1</td>
                    <td>0</td>
                    <td>0</td>
                    <td>0</td>
                    <td>2</td>
                    <td>0</td>
                </tr>
            </table>
        </div>

        <!-- 타자 테이블-->
        <div class="row">
            <h1>타자 정보</h1>
            <table class="td_ctrl">
                <tr>
                    <th>No.</th>
                    <th>TPA</th>
                    <th>AB</th>
                    <th>H</th>
                    <th>1B</th>
                    <th>2B</th>
                    <th>3B</th>
                    <th>HR</th>
                    <th>R</th>
                    <th>RBI</th>
                    <th>BB</th>
                    <th>IBB</th>
                    <th>HBP</th>
                    <th>SO</th>
                    <th>SF</th>
                    <th>SH</th>
                    <th>GDP</th>
                    <th>SB</th>
                    <th>CS</th>
                    <th>AVG</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>41</td>
                    <td>36</td>
                    <td>11</td>
                    <td>9</td>
                    <td>2</td>
                    <td>0</td>
                    <td>0</td>
                    <td>1</td>
                    <td>1</td>
                    <td>4</td>
                    <td>0</td>
                    <td>1</td>
                    <td>6</td>
                    <td>0</td>
                    <td>0</td>
                    <td>2</td>
                    <td>2</td>
                    <td>0</td>
                    <td>0.306</td>
                </tr>
            </table>
        </div>

        <div class="row">
            <div class="col-md-6" id="chartDiv" style="height: 300px;"></div><!-- -->
            <div class="col-md-6" id="chartDiv2" style="height: 300px;"></div><!-- -->
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
            "visits": 51,
            "color": "#183072"
        }, {
            "country": "무",
            "visits": 1,
            "color": "#b3b3aa"
        }, {
            "country": "패",
            "visits": 70,
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
            "year2017": 51
        }, {
            "country": "무",
            "year2016": 3,
            "year2017": 1
        }, {
            "country": "패",
            "year2016": 75,
            "year2017": 70
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