<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ page pageEncoding="utf-8" %>
<!doctype html>
<!--[if IE 8 ]>    <html class="no-js loading ie8 oldie" dir="ltr" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> <html class="no-js loading" dir="ltr" lang="en-US"> <!--<![endif]-->
<head>
	<%@ include file="/WEB-INF/views-cleangold/include/head.jsp" %>
	<title>JIPS</title>
</head>
<c:set var="acmAuthorsArray" value="${null}}"/>
<c:set var="h" value="${history}"/>
<c:set var="hLength" value="${fn:length(h)}"/>
<c:set var="lastNum" value="${hLength-1}"/>
<body>
	<div class="border-header"></div>
	<%@ include file="/WEB-INF/views-cleangold/include/header.jsp" %>
	<section id="content" class="container">
		<div class="paperDetails">
			<div class="paperTitle">		<!--<div class="page-header papertitle">-->
				<h3><strong>${paper.title}</strong></h3>
			</div>

			<c:set var="tempArray" value="${fn:replace(paper.authors, ', and', ',')}"/> <!-- authors and 제거 -->
			<c:set var="tempArray" value="${fn:replace(tempArray, ' and ', ',')}"/> <!-- authors and 제거 -->
			<c:set var="authorsArray" value="${fn:split(tempArray, ',')}"/> <!-- authors 이름을 분리 -->
			<c:set var="authorsLength" value="${fn:length(authorsArray)}"/>

			<c:if test="${authorsLength < 2}">
				<c:forEach var="a" items="${authorsArray}">
					<a class="Paperauthor" href="${baseUrl}/searchResult?s=${a}">${a}</a>
				</c:forEach>
			</c:if>

			<c:if test="${authorsLength == 2}">
				<c:forEach var="a" begin="0" end="${authorsLength-1}">
					<c:if test="${a == 0}">
						<a class="Paperauthor" href="${baseUrl}/searchResult?s=${fn:trim(authorsArray[a])}">${authorsArray[a]}</a> and
					</c:if>
					<c:if test="${a == 1}">
						<a class="Paperauthor" href="${baseUrl}/searchResult?s=${fn:trim(authorsArray[a])}">${authorsArray[a]}</a>
					</c:if>
				</c:forEach>
			</c:if>

			<c:if test="${authorsLength > 2}">
				<c:forEach var="a" begin="0" end="${authorsLength-1}">
					<c:if test="${a < authorsLength - 2}">
						<a class="Paperauthor" href="${baseUrl}/searchResult?s=${fn:trim(authorsArray[a])}">${authorsArray[a]}</a>,
					</c:if>
					<c:if test="${a == authorsLength - 2}">
						<a class="Paperauthor" href="${baseUrl}/searchResult?s=${fn:trim(authorsArray[a])}">${authorsArray[a]}</a> and
					</c:if>
					<c:if test="${a == authorsLength - 1}">
						<a class="Paperauthor" href="${baseUrl}/searchResult?s=${fn:trim(authorsArray[a])}">${authorsArray[a]}</a>
					</c:if>
				</c:forEach>
			</c:if>
			<br/>

			<c:if test="${paper.of == 0}">
				<div class="details">
					<b>Volume: ${paper.volume}, No: ${paper.number}, Page: ${paper.page} ~ ${paper.endpage}, Year: ${paper.year}</b>
				</div>
			</c:if>

			<c:if test="${paper.of > 0}">
				<div class="details">
					<b>Online First Paper</b>
				</div>
			</c:if>

			<img src="${resources2}/img/jips/doi_icon.png" style="vertical-align:middle;">
			<span class="doifont">${paper.doi}</span>

			<br/>

			<c:if test="${not empty paper.keyword}">
				Keywords:
				<c:set var="keywordArray" value="${fn:split(paper.keyword, ',')}"/>
				<c:set var="keywordLength" value="${fn:length(keywordArray)}"/>
				<c:forEach var="k" begin="0" end="${keywordLength - 1}">
					<c:if test="${k < keywordLength - 1}">
						<a class="Paperkeyword" href="${baseUrl}/searchResult?s=${fn:trim(keywordArray[k])}">${keywordArray[k]}</a>,
					</c:if>
					<c:if test="${k == keywordLength - 1}">
						<a class="Paperkeyword" href="${baseUrl}/searchResult?s=${fn:trim(keywordArray[k])}">${keywordArray[k]}</a><br/>
					</c:if>
				</c:forEach>
			</c:if>

			Full Text:
			<a href="${baseUrl}/file/down?pn=${paper.num}"><button type="button" class="btn btn-danger btn-xs">PDF</button></a>
			<c:if test="${paper.volume >= 11}">
				<a href="http://jips.jatsxml.org/Article/${paper.volume}/${paper.number}/${paper.page}" target="_blank">
					<button type="button" class="btn btn-info btn-xs">Full Text</button></a>
				<a href="http://jips.jatsxml.org/PubReader/${paper.volume}/${paper.number}/${paper.page}" target="_blank">
					<button type="button" class="btn btn-warning btn-xs">PubReader</button></a>
				<a href="http://jips.jatsxml.org/func/download.php?path=${paper.epub}"><button type="button" class="btn btn-success btn-xs">ePub</button></a>
			</c:if>
			<br/>
			<br/>
			<strong>Abstract</strong>
			<br/>

			<div class="text-justify paperAbstract">${paper.paperAbstract}</div>
			<br/>

			<div class="stat">
				<strong>Article Statistics</strong>
				<br/>

				<c:choose>
					<c:when test="${paper.of == 0}">
						<div style='display: block' class="statDiv">
							<div class="text-left">
								Multiple requests among the same broswer session are counted as one view (or download).
								<br/>
								If you mouse over a chart, a box will show the data point's value.
							</div>
							<div style="text-align:center;" class="statistics center">
								<div class="center" id="chart_div"></div>
								<div class="center">
									<button class="btn btn-primary btn-sm" id="prev" value="&lt; " disabled="true">&lt; </button>
									<button class="btn btn-primary btn-sm" id="zoom" value="Zoom">Zoom</button>
									<button class="btn btn-primary btn-sm" id="next" value=" &gt;" disabled="true"> &gt;</button>
								</div>
								<br/>
							</div>
						</div>
					</c:when>
					<c:otherwise>
						<div style='display: block' class="statDiv">
							Statistical data for 'online first' paper are not collected.
						</div>
					</c:otherwise>
				</c:choose>
			</div>

			<br/>

			<strong>Cite this article</strong>
			<br/>
			<div class="citebox">
				<strong><i class="fa fa-check-square-o"></i> IEEE Style</strong>
				<br/>
				<c:choose>
					<c:when test="${paper.of == 0}">
						<span>${paper.authors}, "${paper.title}," Journal of Information Processing Systems, vol. ${paper.volume}, no. ${paper.number}, pp. ${paper.page}~${paper.endpage}, ${paper.year}. DOI: ${paper.doi}.</span>
					</c:when>
					<c:otherwise>
						<span>${paper.authors}, "${paper.title}," Journal of Information Processing Systems. DOI: ${paper.doi}.</span>
					</c:otherwise>
				</c:choose>
				<br/><br/>
				<strong><i class="fa fa-check-square-o"></i> ACM Style</strong>
				<br/>
				<c:choose>
					<c:when test="${paper.of == 0}">
						<span>${paper.authors}, "${paper.title}," <em>Journal of Information Processing Systems</em>, ${paper.volume}, ${paper.number}, (${paper.year}), ${paper.page}~${paper.endpage}. DOI: ${paper.doi}.</span>
					</c:when>
					<c:otherwise>
						<span>${paper.authors}, "${paper.title}," <em>Journal of Information Processing Systems</em>, DOI: ${paper.doi}.</span>
					</c:otherwise>
				</c:choose>
				<br/>
			</div>
		</div>
	</section>
	<%@ include file="/WEB-INF/views-cleangold/include/footer.jsp" %>
</body>
<c:set var="latestYear" value="${h[0].year}" />
<c:set var="oldestYear" value="${h[lastNum].year}" />
<c:choose>
	<c:when test="${latestYear} != ${oldestYear}">
		<c:set var="yearHistory" value="${oldestYear}-${latestYear}"/>
	</c:when>
	<c:otherwise>
		<c:set var="yearHistory" value="${latestYear}"/>
	</c:otherwise>
</c:choose>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	<c:if test="${paper.of == 0}">
		google.charts.load('current', {'packages':['corechart']});
		google.charts.setOnLoadCallback(drawAnimatedChart);

		function drawAnimatedChart() {
			var MAX = ${hLength};
			var options = {
				chartArea: {
					width: '70%',
					/*					left: 95,
					 top: 50,
					 width:"73%",
					 height:"70%"*/
				},
				legend: {
					position: 'top'
				},
				colors: ['#0A7DBF','#094800'],
				backgroundColor:'#FFFFFF',
				animation: {
					duration: 100,
					easing: 'in'
				},
				focusTarget: 'category',
				hAxis: {
					viewWindow: {
						min:MAX-7,
						max:MAX
					},
					textStyle : {
						fontSize: 14 // or the number you want
					},
					slantedText: false,
				}
			};

			var chart = new google.visualization.SteppedAreaChart(
					document.getElementById('chart_div')
			);

			var data = new google.visualization.DataTable();
			data.addColumn('string', 'Date');
			data.addColumn('number', 'This Page Views');
			data.addColumn('number', 'PDF Downloads');

			<c:forEach var="i" begin="0" end="${hLength - 1}">
			<c:set var="j" value="${hLength-1-i}"/>
				data.addRow(['${h[j].year}/${h[j].month}/${h[j].date}', ${h[j].hit}, ${h[j].downhit}])
			</c:forEach>

			var prevButton = document.getElementById('prev');
			var nextButton = document.getElementById('next');
			var changeZoomButton = document.getElementById('zoom');

			function drawChart() {
				// Disabling the button while the chart is drawing.
				prevButton.disabled = true;
				nextButton.disabled = true;
				changeZoomButton.disabled = true;
				google.visualization.events.addListener(chart, 'ready',
						function() {
							prevButton.disabled = options.hAxis.viewWindow.min <= 0;
							nextButton.disabled = options.hAxis.viewWindow.max >= MAX;
							changeZoomButton.disabled = false;
						});
				chart.draw(data, options);
			}

			prevButton.onclick = function() {
				options.hAxis.viewWindow.min -= 1;
				options.hAxis.viewWindow.max -= 1;
				drawChart();
			}

			nextButton.onclick = function() {
				options.hAxis.viewWindow.min += 1;
				options.hAxis.viewWindow.max += 1;
				drawChart();
			}

			var zoomed = false;
			changeZoomButton.onclick = function() {
				if (zoomed) {
					options.hAxis.viewWindow.min = MAX-7;
					options.hAxis.viewWindow.max = MAX;
				} else {
					options.hAxis.viewWindow.min = 0;
					options.hAxis.viewWindow.max = MAX;
				}
				zoomed = !zoomed;
				drawChart();
			}

			var windowWidth = $(window).width();

			$(window).resize(function(){
				if ($(window).width() != windowWidth) {
					// Update the window width for next time
					windowWidth = $(window).width();
					drawChart();
				}
			});

			window.addEventListener("orientationchange", function() {
				drawChart();
			});

			drawChart();
		}
	</c:if>
</script>
</html>