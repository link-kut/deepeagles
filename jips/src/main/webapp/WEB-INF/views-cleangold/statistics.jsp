<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ page pageEncoding="utf-8" %>
<c:set var="armchartsResourcePath" value="${resources2}/amcharts/"/>
<!doctype html>
<!--[if IE 8 ]>    <html class="no-js loading ie8 oldie" dir="ltr" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> <html class="no-js loading" dir="ltr" lang="en-US"> <!--<![endif]-->
<head>
	<%@ include file="/WEB-INF/views-cleangold/include/head.jsp" %>
	<title>JIPS</title>
</head>
<c:set var="ofArray" value="${ofpaper}"/>
<c:set var="ofLength" value="${fn:length(ofArray)}"/>
<c:set var="isSameDate" value="${false}"/>
<body>
<div class="border-header"></div>
<%@ include file="/WEB-INF/views-cleangold/include/header.jsp" %>
<section id="content" class="container">
	<div class="row onlineFirst">
		<div class="col-md-9 col-sm-12 col-xs-12">
			<h2 class="title"><i class="fa fa-angle-double-right"></i> Statistics</h2>
			<div id="chartDiv" style="width: 100%; height: 400px; background-color: #FFFFFF;" ></div>
			<br/>
			<hr/>
			<br/>
			<div>
				<div id="authorCountry" style="width: 100%; height: 400px; background-color: #FFFFFF;" ></div>
				<div class="text-right">
					<span class="caption-helper text-right"><small>The above count is based on the 1st author (total = ${authorTotal}).</small></span>
				</div>
			</div>
			<br/>
			<hr/>
			<br/>
			<div>
				<div id="reviewerCountry" style="width: 100%; height: 400px; background-color: #FFFFFF;"></div>
				<div class="text-right">
					<span class="caption-helper text-right"><small><br/>The above count is based on the completed reviews (total = ${reviewerTotal}).</small></span>
				</div>
			</div>
		</div>
		<div class="col-md-3 hidden-sm hidden-xs">
			<%@ include file="/WEB-INF/views-cleangold/include/side.jsp" %>
		</div>
	</div>
</section>
<%@ include file="/WEB-INF/views-cleangold/include/footer.jsp" %>

<script src="${resources2}/amcharts/amcharts.js" type="text/javascript"></script>
<script src="${resources2}/amcharts/serial.js" type="text/javascript"></script>
<script type="text/javascript" src="http://cdn.amcharts.com/lib/3/pie.js"></script>
<script type="text/javascript" src="http://www.amcharts.com/lib/3/themes/chalk.js"></script>
<script type="text/javascript">
	var startDurationValue = "0.0";

	var customChart = AmCharts.makeChart("chartDiv",
			{
				"type": "serial",
				"path": "${armchartsResourcePath}",
				"categoryField": "date",
				"dataDateFormat": "YYYY-MM",
				"startDuration": startDurationValue,
				"theme": "default",
				"categoryAxis": {
					"minPeriod": "MM",
					"parseDates": true
				},
				"chartCursor": {
					"bulletSize": 0,
					"cursorColor": "#008000",
					"categoryBalloonDateFormat": "MMM YYYY"
				},
				"chartScrollbar": {
					"enabled":false,
					"graph":"AmGraph-1",
					"gridAlpha":0,
					"color":"#888888",
					<%--"dragIcon":"${armchartsResourcePath}/images/dragIconRectBigBlack.png",--%>
					<%--"dragIconHeight":20,--%>
					<%--"dragIconWidth":20,--%>
					"scrollbarHeight":55,
					"backgroundAlpha":0,
					"selectedBackgroundAlpha":0.1,
					"selectedBackgroundColor":"#888888",
					"graphFillAlpha":0,
					"autoGridCount":true,
					"selectedGraphFillAlpha":0,
					"graphLineAlpha":0.2,
					"graphLineColor":"#c2c2c2",
					"selectedGraphLineColor":"#888888",
					"selectedGraphLineAlpha":1
				},
				"trendLines": [],
				"graphs": [
					{
						"bullet": "round",
						"id": "AmGraph-1",
						"title": "Number of Submissions",
						"type": "smoothedLine",
						"lineColor" : "#3598dc",
						"valueField": "originalSubmissionConfirmed"
					},
					{
						"bullet": "square",
						"id": "AmGraph-2",
						"title": "Number of Accepts",
						"type": "smoothedLine",
						"lineColor" : "#2DC800",
						"valueField": "accepts"
					},
					{
						"bullet": "triangleUp",
						"id": "AmGraph-3",
						"title": "Number of Rejects",
						"type": "smoothedLine",
						"lineColor" : "#FFAB60",
						"valueField": "rejects"
					}
				],
				"guides": [],
				"valueAxes": [
					{
						"id": "ValueAxis-1",
//							"title": "No. of Manuscripts"
					}
				],
				"allLabels": [],
				"balloon": {},
				"responsive": {
					"enabled": true
				},
				"legend": {
					"useGraphSettings": true
				},
				"export": {
					"enabled": true
				},
				"titles": [
					{
						"id": "Title-1",
						"size": 15,
						"text": "Submissions vs. Accepts vs. Rejects"
					}
				]
			}
	);

	var chartAuthor = AmCharts.makeChart("authorCountry", {
		"type": "pie",
		"path": "${armchartsResourcePath}",
		"theme": "default",
		"startDuration": startDurationValue,
		"dataProvider": [
			<c:forEach var="countryCodeMapEntry" items="${countryCodeMaps}">
			<c:set var="mapName" value="authorMap"/>
			<c:if test="${countryCodeMapEntry.key eq mapName}">
			<c:forEach var="entry" items="${countryCodeMapEntry.value}">
			{
				"country": "${entry.key }",
				"value": ${entry.value }
			},
			</c:forEach>
			</c:if>
			</c:forEach>
		],
		"valueField": "value",
		"titleField": "country",
		"outlineAlpha": 0.4,
		"balloonText": "[[title]]<br><span style='font-size:12px;'><b>[[value]]</b> ([[percents]]%)</span>",
		"responsive": {
			"enabled": true
		},
		"titles": [
			{
				"id": "Title-2",
				"size": 15,
				"text": "Author Country Distribution"
			}
		]
	});

	var chartReviewer = AmCharts.makeChart("reviewerCountry", {
		"type": "pie",
		"path": "${armchartsResourcePath}",
		"theme": "default",
		"startDuration": startDurationValue,
		"dataProvider": [
			<c:forEach var="countryCodeMapEntry" items="${countryCodeMaps}">
			<c:set var="mapName" value="reviewerMap"/>
			<c:if test="${countryCodeMapEntry.key eq mapName}">
			<c:forEach var="entry" items="${countryCodeMapEntry.value}">
			{
				"country": "${entry.key }",
				"value": ${entry.value }
			},
			</c:forEach>
			</c:if>
			</c:forEach>
		],
		"valueField": "value",
		"titleField": "country",
		"outlineAlpha": 0.4,
		"balloonText": "[[title]]<br><span style='font-size:12px;'><b>[[value]]</b> ([[percents]]%)</span>",
		"responsive": {
			"enabled": true
		},
		"titles": [
			{
				"id": "Title-2",
				"size": 15,
				"text": "Reviewer Country Distribution"
			}
		]
	});

	$(function () {
		$.getJSON('/rest/stats/aros?jnid=jips', function (data) {
			customChart.dataProvider = data;
			customChart.validateData();
		});
	});
</script>
</body>
</html>