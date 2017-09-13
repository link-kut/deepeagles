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
        <h4><strong>[Match Info]</strong></h4>
        <br/><br/>
        <div class="row" style="width:100%; height:200px;overflow:auto;">

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
    </section>

    <br/><br/>
    <!-- HTML -->
    <div id="chartdiv"></div>

    <%@ include file="/WEB-INF/views-cleangold/include/footer.jsp" %>
</body>

<!-- Chart code -->
<script>
    /**
     * Define data for each year
     */
    var chartData = {
        "1995": [
            { "sector": "Agriculture", "size": 6.6 },
            { "sector": "Mining and Quarrying", "size": 0.6 },
            { "sector": "Manufacturing", "size": 23.2 },
            { "sector": "Electricity and Water", "size": 2.2 },
            { "sector": "Construction", "size": 4.5 },
            { "sector": "Trade (Wholesale, Retail, Motor)", "size": 14.6 },
            { "sector": "Transport and Communication", "size": 9.3 },
            { "sector": "Finance, real estate and business services", "size": 22.5 } ],
        "1996": [
            { "sector": "Agriculture", "size": 6.4 },
            { "sector": "Mining and Quarrying", "size": 0.5 },
            { "sector": "Manufacturing", "size": 22.4 },
            { "sector": "Electricity and Water", "size": 2 },
            { "sector": "Construction", "size": 4.2 },
            { "sector": "Trade (Wholesale, Retail, Motor)", "size": 14.8 },
            { "sector": "Transport and Communication", "size": 9.7 },
            { "sector": "Finance, real estate and business services", "size": 22 } ],
        "1997": [
            { "sector": "Agriculture", "size": 6.1 },
            { "sector": "Mining and Quarrying", "size": 0.2 },
            { "sector": "Manufacturing", "size": 20.9 },
            { "sector": "Electricity and Water", "size": 1.8 },
            { "sector": "Construction", "size": 4.2 },
            { "sector": "Trade (Wholesale, Retail, Motor)", "size": 13.7 },
            { "sector": "Transport and Communication", "size": 9.4 },
            { "sector": "Finance, real estate and business services", "size": 22.1 } ],
        "1998": [
            { "sector": "Agriculture", "size": 6.2 },
            { "sector": "Mining and Quarrying", "size": 0.3 },
            { "sector": "Manufacturing", "size": 21.4 },
            { "sector": "Electricity and Water", "size": 1.9 },
            { "sector": "Construction", "size": 4.2 },
            { "sector": "Trade (Wholesale, Retail, Motor)", "size": 14.5 },
            { "sector": "Transport and Communication", "size": 10.6 },
            { "sector": "Finance, real estate and business services", "size": 23 } ],
        "1999": [
            { "sector": "Agriculture", "size": 5.7 },
            { "sector": "Mining and Quarrying", "size": 0.2 },
            { "sector": "Manufacturing", "size": 20 },
            { "sector": "Electricity and Water", "size": 1.8 },
            { "sector": "Construction", "size": 4.4 },
            { "sector": "Trade (Wholesale, Retail, Motor)", "size": 15.2 },
            { "sector": "Transport and Communication", "size": 10.5 },
            { "sector": "Finance, real estate and business services", "size": 24.7 } ],
        "2000": [
            { "sector": "Agriculture", "size": 5.1 },
            { "sector": "Mining and Quarrying", "size": 0.3 },
            { "sector": "Manufacturing", "size": 20.4 },
            { "sector": "Electricity and Water", "size": 1.7 },
            { "sector": "Construction", "size": 4 },
            { "sector": "Trade (Wholesale, Retail, Motor)", "size": 16.3 },
            { "sector": "Transport and Communication", "size": 10.7 },
            { "sector": "Finance, real estate and business services", "size": 24.6 } ],
        "2001": [
            { "sector": "Agriculture", "size": 5.5 },
            { "sector": "Mining and Quarrying", "size": 0.2 },
            { "sector": "Manufacturing", "size": 20.3 },
            { "sector": "Electricity and Water", "size": 1.6 },
            { "sector": "Construction", "size": 3.1 },
            { "sector": "Trade (Wholesale, Retail, Motor)", "size": 16.3 },
            { "sector": "Transport and Communication", "size": 10.7 },
            { "sector": "Finance, real estate and business services", "size": 25.8 } ],
        "2002": [
            { "sector": "Agriculture", "size": 5.7 },
            { "sector": "Mining and Quarrying", "size": 0.2 },
            { "sector": "Manufacturing", "size": 20.5 },
            { "sector": "Electricity and Water", "size": 1.6 },
            { "sector": "Construction", "size": 3.6 },
            { "sector": "Trade (Wholesale, Retail, Motor)", "size": 16.1 },
            { "sector": "Transport and Communication", "size": 10.7 },
            { "sector": "Finance, real estate and business services", "size": 26 } ],
        "2003": [
            { "sector": "Agriculture", "size": 4.9 },
            { "sector": "Mining and Quarrying", "size": 0.2 },
            { "sector": "Manufacturing", "size": 19.4 },
            { "sector": "Electricity and Water", "size": 1.5 },
            { "sector": "Construction", "size": 3.3 },
            { "sector": "Trade (Wholesale, Retail, Motor)", "size": 16.2 },
            { "sector": "Transport and Communication", "size": 11 },
            { "sector": "Finance, real estate and business services", "size": 27.5 } ],
        "2004": [
            { "sector": "Agriculture", "size": 4.7 },
            { "sector": "Mining and Quarrying", "size": 0.2 },
            { "sector": "Manufacturing", "size": 18.4 },
            { "sector": "Electricity and Water", "size": 1.4 },
            { "sector": "Construction", "size": 3.3 },
            { "sector": "Trade (Wholesale, Retail, Motor)", "size": 16.9 },
            { "sector": "Transport and Communication", "size": 10.6 },
            { "sector": "Finance, real estate and business services", "size": 28.1 } ],
        "2005": [
            { "sector": "Agriculture", "size": 4.3 },
            { "sector": "Mining and Quarrying", "size": 0.2 },
            { "sector": "Manufacturing", "size": 18.1 },
            { "sector": "Electricity and Water", "size": 1.4 },
            { "sector": "Construction", "size": 3.9 },
            { "sector": "Trade (Wholesale, Retail, Motor)", "size": 15.7 },
            { "sector": "Transport and Communication", "size": 10.6 },
            { "sector": "Finance, real estate and business services", "size": 29.1 } ],
        "2006": [
            { "sector": "Agriculture", "size": 4 },
            { "sector": "Mining and Quarrying", "size": 0.2 },
            { "sector": "Manufacturing", "size": 16.5 },
            { "sector": "Electricity and Water", "size": 1.3 },
            { "sector": "Construction", "size": 3.7 },
            { "sector": "Trade (Wholesale, Retail, Motor)", "size": 14.2 },
            { "sector": "Transport and Communication", "size": 12.1 },
            { "sector": "Finance, real estate and business services", "size": 29.1 } ],
        "2007": [
            { "sector": "Agriculture", "size": 4.7 },
            { "sector": "Mining and Quarrying", "size": 0.2 },
            { "sector": "Manufacturing", "size": 16.2 },
            { "sector": "Electricity and Water", "size": 1.2 },
            { "sector": "Construction", "size": 4.1 },
            { "sector": "Trade (Wholesale, Retail, Motor)", "size": 15.6 },
            { "sector": "Transport and Communication", "size": 11.2 },
            { "sector": "Finance, real estate and business services", "size": 30.4 } ],
        "2008": [
            { "sector": "Agriculture", "size": 4.9 },
            { "sector": "Mining and Quarrying", "size": 0.3 },
            { "sector": "Manufacturing", "size": 17.2 },
            { "sector": "Electricity and Water", "size": 1.4 },
            { "sector": "Construction", "size": 5.1 },
            { "sector": "Trade (Wholesale, Retail, Motor)", "size": 15.4 },
            { "sector": "Transport and Communication", "size": 11.1 },
            { "sector": "Finance, real estate and business services", "size": 28.4 } ],
        "2009": [
            { "sector": "Agriculture", "size": 4.7 },
            { "sector": "Mining and Quarrying", "size": 0.3 },
            { "sector": "Manufacturing", "size": 16.4 },
            { "sector": "Electricity and Water", "size": 1.9 },
            { "sector": "Construction", "size": 4.9 },
            { "sector": "Trade (Wholesale, Retail, Motor)", "size": 15.5 },
            { "sector": "Transport and Communication", "size": 10.9 },
            { "sector": "Finance, real estate and business services", "size": 27.9 } ],
        "2010": [
            { "sector": "Agriculture", "size": 4.2 },
            { "sector": "Mining and Quarrying", "size": 0.3 },
            { "sector": "Manufacturing", "size": 16.2 },
            { "sector": "Electricity and Water", "size": 2.2 },
            { "sector": "Construction", "size": 4.3 },
            { "sector": "Trade (Wholesale, Retail, Motor)", "size": 15.7 },
            { "sector": "Transport and Communication", "size": 10.2 },
            { "sector": "Finance, real estate and business services", "size": 28.8 } ],
        "2011": [
            { "sector": "Agriculture", "size": 4.1 },
            { "sector": "Mining and Quarrying", "size": 0.3 },
            { "sector": "Manufacturing", "size": 14.9 },
            { "sector": "Electricity and Water", "size": 2.3 },
            { "sector": "Construction", "size": 5 },
            { "sector": "Trade (Wholesale, Retail, Motor)", "size": 17.3 },
            { "sector": "Transport and Communication", "size": 10.2 },
            { "sector": "Finance, real estate and business services", "size": 27.2 } ],
        "2012": [
            { "sector": "Agriculture", "size": 3.8 },
            { "sector": "Mining and Quarrying", "size": 0.3 },
            { "sector": "Manufacturing", "size": 14.9 },
            { "sector": "Electricity and Water", "size": 2.6 },
            { "sector": "Construction", "size": 5.1 },
            { "sector": "Trade (Wholesale, Retail, Motor)", "size": 15.8 },
            { "sector": "Transport and Communication", "size": 10.7 },
            { "sector": "Finance, real estate and business services", "size": 28 } ],
        "2013": [
            { "sector": "Agriculture", "size": 3.7 },
            { "sector": "Mining and Quarrying", "size": 0.2 },
            { "sector": "Manufacturing", "size": 14.9 },
            { "sector": "Electricity and Water", "size": 2.7 },
            { "sector": "Construction", "size": 5.7 },
            { "sector": "Trade (Wholesale, Retail, Motor)", "size": 16.5 },
            { "sector": "Transport and Communication", "size": 10.5 },
            { "sector": "Finance, real estate and business services", "size": 26.6 } ],
        "2014": [
            { "sector": "Agriculture", "size": 3.9 },
            { "sector": "Mining and Quarrying", "size": 0.2 },
            { "sector": "Manufacturing", "size": 14.5 },
            { "sector": "Electricity and Water", "size": 2.7 },
            { "sector": "Construction", "size": 5.6 },
            { "sector": "Trade (Wholesale, Retail, Motor)", "size": 16.6 },
            { "sector": "Transport and Communication", "size": 10.5 },
            { "sector": "Finance, real estate and business services", "size": 26.5 } ]
    };


    /**
     * Create the chart
     */
    var currentYear = 1995;
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
            "text": "South African Economy"
        }],
        "allLabels": [{
            "y": "54%",
            "align": "center",
            "size": 25,
            "bold": true,
            "text": "1995",
            "color": "#70dbff"
        }, {
            "y": "49%",
            "align": "center",
            "size": 15,
            "text": "Year",
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
