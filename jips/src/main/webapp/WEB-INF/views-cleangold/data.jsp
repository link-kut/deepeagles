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

        .pitcher_table thead tr th, .table_head{
            width:auto;
            background-color: #d3702a;
            text-align: center;
        }
        .pitcher_table tbody tr td{
            text-align: center;
        }
        .pitcher_table tbody tr td:nth-child(odd), #p_exp_table tr td:nth-child(1), #p_exp_table tr td:nth-child(3){
            background-color: #ffce4c !important;
        }


        .hitter_table thead tr th{
            width:auto;
            background-color: #d3702a;
            text-align: center;
        }
        .hitter_table tbody tr td, .align_item{
            text-align: center;
        }
        .hitter_table tbody tr td:nth-child(odd), #h_exp_table tr td:nth-child(1), #h_exp_table tr td:nth-child(3){
            background-color: #ffce4c !important;
        }
    </style>

    <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
    <script src="https://www.amcharts.com/lib/3/pie.js"></script>       <!-- 그래프 : 파이 -->
    <script src="https://www.amcharts.com/lib/3/serial.js"></script>    <!-- 그래프 : 직선 -->
    <script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
    <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
    <script src="https://cdn.plot.ly/plotly-latest.min.js"></script><%--추가--%>
    <script src="http://www.amcharts.com/lib/3/plugins/dataloader/dataloader.min.js" type="text/javascript"></script>

    <%@ include file="/WEB-INF/views-cleangold/include/head.jsp" %>
    <link rel="stylesheet" href="webapp/resources-cleangold/css/custom.css?ver=1">
    <link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css">
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
</head>

<body>
    <div class="row" style="height:160px;"><!--상단 메뉴창 출력 -->
        <%@ include file="/WEB-INF/views-cleangold/include/header.jsp" %>
    </div>
    <!-- 두번째 섹션 : 데이터 표현그래프 -->
    <section class="container"><!-- 센터 -->
        <h1 style="padding-left: 30px;"><i class="fa fa-database" aria-hidden="true"></i> <strong>DATA</strong></h1>
        <br/>
        <div class ="col sep sep-big"></div>

        <h4><strong style="padding-left: 20px"><i class="fa fa-list" aria-hidden="true"></i>  수비 관련 데이터 ( 투수 ) </strong></h4>
        <br/>
        <h5 style="padding-left: 20px;"><strong>[2012-08-01 ~ <fmt:formatDate value="${test_p.get(0).date}" pattern="yyyy-MM-dd"/>]</strong></h5>
        <br/>
        <!-- 투수 정보 -->
        <div class="row container" style="width:100%;height:260px; overflow:auto;">
            <div>
                <table style="" border=1 class="pitcher_table" summary = "목록">
                    <thead >
                        <tr>
                            <th> ID</th>
                            <th> 날짜</th>
                            <th title="승리"> W</th>
                            <th title="패배"> L</th>
                            <th title="세이브"> SV</th>
                            <th title="홀드"> HLD</th>
                            <th title="블론"> BS</th>
                            <th title="선발"> QS</th>
                            <th title="이닝"> IP</th>
                            <th title="투수가 상대한 타자수"> TBP</th>
                            <th title="피안타수"> H</th>
                            <th title="2루타"> TWOB</th>
                            <th title="3루타"> THREEB</th>
                            <th title="홈런"> HR</th>
                            <th title="실점"> R</th>
                            <th title="자책점"> ER</th>
                            <th title="삼진"> SO</th>
                            <th title="볼넷"> BB</th>
                            <th title="고의 4구"> IBB</th>
                            <th title="데드볼"> HBP</th>
                            <th title="폭투"> WP</th>
                            <th title="보크"> BK</th>
                            <th title="견제사"> PK</th>
                            <th title="도루저지"> CS</th>
                            <th title="도루허용"> SB</th>
                        </tr>
                    </thead>

                    <c:if test="${test_p.size()==0}">
                        <tfoot>
                        <tr>
                            <td colspan ="27"> 현재 데이터 무</td>
                        </tr>
                        </tfoot>
                    </c:if>
                    <tbody>
                    <c:forEach var="test_p" items = "${test_p}" varStatus = "status">
                        <tr class="pitcher_table_stat">
                            <td><c:out value = "${test_p.id}"/></td>
                            <td><fmt:formatDate value="${test_p.date}" pattern="yyyy-MM-dd"/></td>
                            <td><c:out value = "${test_p.w}"/></td>

                            <td><c:out value = "${test_p.l}"/></td>
                            <td><c:out value = "${test_p.sv}"/></td>
                            <td><c:out value = "${test_p.hld}"/></td>
                            <td><c:out value = "${test_p.bs}"/></td>
                            <td><c:out value = "${test_p.qs}"/></td>

                            <td><c:out value = "${test_p.ip}"/></td>
                            <td><c:out value = "${test_p.pa}"/></td>
                            <td><c:out value = "${test_p.h}"/></td>
                            <td><c:out value = "${test_p.TWOB}"/></td>
                            <td><c:out value = "${test_p.THREEB}"/></td>

                            <td><c:out value = "${test_p.hr}"/></td>
                            <td><c:out value = "${test_p.r}"/></td>
                            <td><c:out value = "${test_p.er}"/></td>
                            <td><c:out value = "${test_p.so}"/></td>
                            <td><c:out value = "${test_p.bb}"/></td>

                            <td><c:out value = "${test_p.ibb}"/></td>
                            <td><c:out value = "${test_p.hbp}"/></td>
                            <td><c:out value = "${test_p.wp}"/></td>
                            <td><c:out value = "${test_p.bk}"/></td>
                            <td><c:out value = "${test_p.pk}"/></td>

                            <td><c:out value = "${test_p.cs}"/></td>
                            <td><c:out value = "${test_p.sb}"/></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <br/><br/>

        <!-- 이 영역을 펼치면 그곳엔 오직... 눈물뿐이라네 -->
        <div class="row container" style="height:260px; overflow:auto;">
            <table id="p_exp_table">
                <tr>
                    <th class="align_item table_head">No.</th>
                    <th class="align_item table_head">용어</th>
                    <th class="align_item table_head">의미</th>
                </tr>
                <tr>
                    <td class="align_item">1</td>
                    <td>W (Wins)</td>
                    <td>승리 여부</td>
                </tr>
                <tr>
                    <td class="align_item">2</td>
                    <td>L (Losses)</td>
                    <td>패전투수有無여부</td>
                </tr>
                <tr>
                    <td class="align_item">3</td>
                    <td>SV (Saves)</td>
                    <td>세이브 有無여부 : 팀이 3점이내 점수차로 이기고 있는 상황에서 1회이상 투구해 승리를 지켜내는 경우(추가로 점수차가 더 많이 나더라도 3회이상 던져서 승리를 지켜내도 SV요건 만족) SV가 1, 아니라면 0</td>
                </tr>
                <tr>
                    <td class="align_item">4</td>
                    <td>HLD (Holds)</td>
                    <td>홀드 有無여부 : 팀이 이기고있는 상태에서 등판, 하나의 공이라도 던진 후 팀이 이기고 있는 상태에서 다음 투수에게 마운드를 넘겨주는 경우 하나의 홀드로 계산 (SV와 달리 한 경기에 2이상의 홀드가 가능)</td>
                </tr>
                <tr>
                    <td class="align_item">5</td>
                    <td>BS (Blown Save)</td>
                    <td>블론세이브 有無여부 : 세이브(SV)요건에서 등판한 투수가 동점 내지 역전을 허용한 경우 1, 아니라면 0</td>
                </tr>
                <tr>
                    <td class="align_item">6</td>
                    <td>QS (Quality Start)</td>
                    <td>퀄리티스타트 유무 여부 : 선발투수가 6이닝 이상 공을 던짐과 동시에 상대에게 3점이하의 ER(투수자책점)을 허용한 경우 1로, 아니라면 0</td>
                </tr>
                <tr>
                    <td class="align_item">7</td>
                    <td>IP (Innings Pitched)</td>
                    <td>총 투구 이닝수</td>
                </tr>
                <tr>
                    <td class="align_item">8</td>
                    <td>TBP (Total Base Percentage)</td>
                    <td>상대한 총 타자수</td>
                </tr>
                <tr>
                    <td class="align_item">9</td>
                    <td>H (Hits)</td>
                    <td>피안타 개수</td>
                </tr>
                <tr>
                    <td class="align_item">10</td>
                    <td>2B (Doubles)</td>
                    <td>2루타 허용개수</td>
                </tr>
                <tr>
                    <td class="align_item">11</td>
                    <td>3B (Triples)</td>
                    <td>3루타 허용개수</td>
                </tr>
                <tr>
                    <td class="align_item">12</td>
                    <td>HR (Home Runs)</td>
                    <td>홈런 허용개수</td>
                </tr>
                <tr>
                    <td class="align_item">13</td>
                    <td>R (Runs)</td>
                    <td>피득점수</td>
                </tr>
                <tr>
                    <td class="align_item">14</td>
                    <td>ER (Earned Runs)</td>
                    <td>투수 자책점</td>
                </tr>
                <tr>
                    <td class="align_item">15</td>
                    <td>SO (Strikeouts)</td>
                    <td>삼진 개수</td>
                </tr>
                <tr>
                    <td class="align_item">16</td>
                    <td>BB (Bases on Balls)</td>
                    <td>포볼 개수</td>
                </tr>
                <tr>
                    <td class="align_item">17</td>
                    <td>IBB (Intentional Bases on Balls)</td>
                    <td>고의 볼넷</td>
                </tr>
                <tr>
                    <td class="align_item">18</td>
                    <td>HBP (Hit By Pitch)</td>
                    <td>몸에 맞힌 공</td>
                </tr>
                <tr>
                    <td class="align_item">19</td>
                    <td>WP (Wild Pitches)</td>
                    <td>폭투 갯수</td>
                </tr>
                <tr>
                    <td class="align_item">20</td>
                    <td>BK (Balks)</td>
                    <td>보크 갯수</td>
                </tr>
                <tr>
                    <td class="align_item">21</td>
                    <td>PK (Pick-offs)</td>
                    <td>견제구로 잡아낸 주자 수</td>
                </tr>
                <tr>
                    <td class="align_item">22</td>
                    <td>CS (Caught Stealing)</td>
                    <td>잡아낸 도루 수</td>
                </tr>
                <tr>
                    <td class="align_item">23</td>
                    <td>SB (Stolen Bases)</td>
                    <td>허용한 도루 수</td>
                </tr>
            </table>
        </div>

        <br/><br/>
        <div class ="col sep sep-big"></div>

        <h4><strong style=" padding-left: 20px"><i class="fa fa-list" aria-hidden="true"></i>  공격 관련 정보 ( 타자 )</strong></h4>
        <br/>
        <h5 style="padding-left: 20px;"><strong>[2012-08-01 ~ <fmt:formatDate value="${test_p.get(0).date}" pattern="yyyy-MM-dd"/>]</strong></h5>
        <br/>
        <!-- 타자 테이블-->
        <div class="row container" style="width:100%; height:260px;overflow:auto;">
            <div>
                <table class="hitter_table" summary = "목록">
                    <thead>
                    <tr>
                        <th title="test"> ID</th>
                        <th> 날</th>
                        <th title="타석수"> TPA</th>
                        <th title="타수"> AB</th>
                        <th title="안타"> H</th>

                        <th title="1루타"> ONEB</th>
                        <th title="2루타"> TWOB</th>
                        <th title="3루타"> THREEB</th>
                        <th title="홈런"> HR</th>
                        <th title="득점"> R</th>

                        <th title="타점"> RBI</th>
                        <th title="볼넷"> BB</th>
                        <th title="고의4구"> IBB</th>
                        <th title="데드볼"> HPB</th>
                        <th title="삼진"> SO</th>

                        <th title="희생플라이"> SF</th>
                        <th title="희생타"> SH</th>
                        <th title="병살"> GDP</th>
                        <th title="도루성공"> SB</th>
                        <th title="도루실패"> CS</th>

                        <th title="타율"> AVG</th>
                    </tr>
                    </thead>
                    <c:if test="${test_h.size()==0}">
                        <tfoot>
                        <tr>
                            <td colspan ="21"> 현재 데이터 무</td>
                        </tr>
                        </tfoot>
                    </c:if>
                    <tbody>
                    <c:forEach var="test_h" items = "${test_h}" varStatus = "status">
                        <tr>
                            <td><c:out value = "${test_h.id}"/></td>
                            <td><fmt:formatDate value="${test_h.date}" pattern="yyyy-MM-dd"/></td>
                            <td><c:out value = "${test_h.TPA}"/></td>
                            <td><c:out value = "${test_h.AB}"/></td>
                            <td><c:out value = "${test_h.h}"/></td>

                            <td><c:out value = "${test_h.ONEB}"/></td>
                            <td><c:out value = "${test_h.TWOB}"/></td>
                            <td><c:out value = "${test_h.THREEB}"/></td>
                            <td><c:out value = "${test_h.HR}"/></td>
                            <td><c:out value = "${test_h.r}"/></td>

                            <td><c:out value = "${test_h.RBI}"/></td>
                            <td><c:out value = "${test_h.BB}"/></td>
                            <td><c:out value = "${test_h.IBB}"/></td>
                            <td><c:out value = "${test_h.HPB}"/></td>
                            <td><c:out value = "${test_h.SO}"/></td>

                            <td><c:out value = "${test_h.SF}"/></td>
                            <td><c:out value = "${test_h.SH}"/></td>
                            <td><c:out value = "${test_h.GDP}"/></td>
                            <td><c:out value = "${test_h.SB}"/></td>
                            <td><c:out value = "${test_h.CS}"/></td>

                            <td><c:out value = "${test_h.AVG}"/></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <br/><br/>

        <!-- 이 영역을 펼치면 그곳엔 오직... 눈물뿐이라네 -->
        <div class="row container" style="height:260px; overflow:auto;">
            <table id="h_exp_table">
                <tr>
                    <th class="align_item table_head">No.</th>
                    <th class="align_item table_head">용어</th>
                    <th class="align_item table_head">의미</th>
                </tr>
                <tr>
                    <td class="align_item">1</td>
                    <td>TPA (Total Plate Appearances)</td>
                    <td>타석에 들어선 총 횟수</td>
                </tr>
                <tr>
                    <td class="align_item">2</td>
                    <td>AB(At Bats)</td>
                    <td>타수 : 타석에 들어선 총횟수(TPA)에서 사사구(몸에맞힌 공,사구, 고의사구 모두 포함)와 희생타를 뺀 횟수</td>
                </tr>
                <tr>
                    <td class="align_item">3</td>
                    <td>H (Hits)</td>
                    <td>안타수</td>
                </tr>
                <tr>
                    <td class="align_item">4</td>
                    <td>1B (Singles)</td>
                    <td>단타 수</td>
                </tr>
                <tr>
                    <td class="align_item">5</td>
                    <td>2B (Doubles)</td>
                    <td>2루타 수</td>
                </tr>
                <tr>
                    <td class="align_item">6</td>
                    <td>3B (Triples)</td>
                    <td>3루타 수</td>
                </tr>
                <tr>
                    <td class="align_item">7</td>
                    <td>HR (Home Runs)</td>
                    <td>홈런 수</td>
                </tr>
                <tr>
                    <td class="align_item">8</td>
                    <td>R (Runs)</td>
                    <td>득점 수</td>
                </tr>
                <tr>
                    <td class="align_item">9</td>
                    <td>RBI (Runs Batted In)</td>
                    <td>타점 수 : R(팀의 득점수)에서 상대의 실수로 얻은 점수를 제외한 것</td>
                </tr>
                <tr>
                    <td class="align_item">10</td>
                    <td>BB (Bases on Balls)</td>
                    <td>상대로부터 얻은 볼넷</td>
                </tr>
                <tr>
                    <td class="align_item">11</td>
                    <td>IBB (International Bases on Balls)</td>
                    <td>상대로부터 얻은 고의사구</td>
                </tr>
                <tr>
                    <td class="align_item">12</td>
                    <td>HPB (Hit by Pitch)</td>
                    <td>몸에 맞은 공</td>
                </tr>
                <tr>
                    <td class="align_item">13</td>
                    <td>SO (Strikeouts)</td>
                    <td>허용한 삼진수</td>
                </tr>
                <tr>
                    <td class="align_item">14</td>
                    <td>SF (Sacrifice Flies)</td>
                    <td>희생플라이 : 타석의 타자는 뜬 공으로 out되지만, 이로 인해 팀이 득점하게 되는 경우</td>
                </tr>
                <tr>
                    <td class="align_item">15</td>
                    <td>SH (Sacrifice Hit)</td>
                    <td>희생타 : SF(희생플라이)를 포함해, 타자 자신이 아웃될 것을 예상하고 대는 번트까지 포함한 것</td>
                </tr>
                <tr>
                    <td class="align_item">16</td>
                    <td>GDP (Grounded into Double play)</td>
                    <td>병살타 수 : 병살타 개수, 병살타란 타석에 들어선 타자의 타격으로 인해 자신은 물론 다른 주자까지 아웃되는 경우를 뜻한다</td>
                </tr>
                <tr>
                    <td class="align_item">17</td>
                    <td>SB (Stolen Bases)</td>
                    <td>도루</td>
                </tr>
                <tr>
                    <td class="align_item">18</td>
                    <td>CS (Caught Stealing)</td>
                    <td>도루 실패</td>
                </tr>
                <tr>
                    <td class="align_item">19</td>
                    <td>AVG (Batting Average)</td>
                    <td>팀 타율</td>
                </tr>
            </table>
        </div>
        <br/><br/>
        <div class ="col sep sep-big"></div>

        <br/><br/><br/>

        <h4><strong style=" padding-left: 20px"><i class="fa fa-list" aria-hidden="true"></i> WINS RECORD</strong></h4>
        <br/><br/>
        <div class="row">
            <div class="col-md-6" id="chartDiv" style="height: 300px;"></div><!-- -->
            <div class="col-md-6" id="chartDiv2" style="width: 550px;height: 300px;"></div><!-- -->
        </div>

        <br/><br/>
        <div class ="col sep sep-big"></div>

        <div class="col-md-12 hidden-sm hidden-xs">
            <p><strong>Team. deepEagles / Laboratory : B103A / (Online) : <a>http://link.koreatech.ac.kr/</a></strong><p/>
        </div>
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

<!-- 두번째 그래프 : 경기전적 / 12-17년 & 17년 시즌 비교 -->
<script>
    var chart = AmCharts.makeChart("chartDiv2", {
        "theme": "light",
        "type": "serial",
        "dataProvider": [{
            "country": "승",
            "year2016": 66,
            "year2017": 59
        }, {
            "country": "무",
            "year2016": 3,
            "year2017": 1
        }, {
            "country": "패",
            "year2016": 75,
            "year2017": 75
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

</html>
