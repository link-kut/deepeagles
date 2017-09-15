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
        #chartdiv {
            width: 100%;
            height: 500px;
        }
    </style>

    <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
    <script src="https://www.amcharts.com/lib/3/pie.js"></script>       <!-- 그래프 : 파이 -->
    <script src="https://www.amcharts.com/lib/3/serial.js"></script>    <!-- 그래프 : 직선 -->
    <script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
    <script src="https://www.amcharts.com/lib/3/plugins/animate/animate.min.js"></script>
    <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>

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
        <!-- 경기 테이블-->

        <br/>
        <div class ="col sep sep-big"></div>
        <h4><strong style="padding-left: 20px;">[PREDICT LIST]</strong></h4><p style="padding-left:20px; font-size: 2px;">[2017-08-01 ~ ]</p>
        <br/>
        <div class="row" style="padding-left: 50px; width:100%; height:200px;overflow:auto;">

            <table summary = "목록">
                <thead>
                <tr>
                    <th> id</th>
                    <th> Date</th>
                    <th> starttime</th>
                    <th> Accuracy</th>
                    <th> Winrate</th>

                    <th> Drawrate</th>
                    <th> Loserate</th>
                    <th> correct</th>
                    <th> HHscore</th>

                    <th> OPPscore</th>
                </tr>
                </thead>

                <c:if test="${test_hhr.size()==0}">
                    <tfoot>
                    <tr>
                        <td colspan ="11"> 현재 데이터 무</td>
                    </tr>
                    </tfoot>
                </c:if>
                <tbody>
                <c:forEach var="test_hhr" items = "${test_hhr}" varStatus = "status">
                    <tr>
                        <td><c:out value = "${test_hhr.id}"/></td>
                        <td><c:out value = "${test_hhr.date}"/></td>
                        <td><c:out value = "${test_hhr.starttime}"/></td>
                        <td><fmt:formatNumber value = "${test_hhr.mAcc}" pattern=".0000"/></td>
                        <td><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${test_hhr.mWinrate}"/></td>

                        <td><c:out value = "${test_hhr.mDrawrate}"/></td>
                        <td><c:out value = "${test_hhr.mLoserate}"/></td>
                        <td><c:out value = "${test_hhr.corrM}"/></td>
                        <%--<td><c:out value = "${test_hhr.corrL}"/></td>--%>
                        <td><c:out value = "${test_hhr.HHscore}"/></td>
                        <td><c:out value = "${test_hhr.OPPscore}"/></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>

        <br/><br/>
        <div class ="col sep sep-big"></div>

    <br/><br/>
    <!-- HTML -->

        <h4><strong style="padding-left: 20px;">[TODAY PREDICT]</strong></h4>

        <div id="myDiv"><!-- Plotly chart will be drawn inside this DIV --></div>
        <script>
            <!-- JAVASCRIPT CODE GOES HERE -->
        </script>

       <%-- <div id="chartdiv"></div>--%>
        <%--<br/><br/><br/>--%>
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

    /**
     * Define data for each year
     */

    console.log(${datarecent.get(0).mLoserate})
    var chartData = {
        "20170913": [
            { "sector": "패", "size":33 },
            { "sector": "무", "size": 22},
            { "sector": "승", "size": 11}
             ]
    };


    /**
     * Create the chart
     */
    var currentYear = 20170913;
    var chart = AmCharts.makeChart( "chartdiv", {
        "type": "pie",
        "theme": "light",
        "dataProvider": [],
        "valueField": "size",
        "titleField": "sector",
        "startDuration": 0,
        "innerRadius": 80,
        "pullOutRadius": 20,
        "marginTop": 30,
        "titles": [{
            "text": "오늘의 승부"
        }],
        "allLabels": [{
            "y": "54%",
            "align": "center",
            "size": 25,
            "bold": true,
            "text": "20170913",
            "color": "#70dbff"
        }, {
            "y": "49%",
            "align": "center",
            "size": 15,
            "text": "DATE",
            "color": "#2d1555"
        }],
        "listeners": [ {
            "event": "init",
            "method": function( e ) {
                var chart = e.chart;

                function getCurrentData() {
                    var data = chartData[currentYear];
                    currentYear++;
                    if (currentYear > 2014)
                        currentYear = 1995;
                    return data;
                }

                function loop() {
                    chart.allLabels[0].text = currentYear;
                    var data = getCurrentData();
                    chart.animateData( data, {
                        duration: 1000,
                        complete: function() {
                            setTimeout( loop, 3000 );
                        }
                    } );
                }

                loop();
            }
        } ],
        "export": {
            "enabled": true
        }
    } );
</script>

</html>
