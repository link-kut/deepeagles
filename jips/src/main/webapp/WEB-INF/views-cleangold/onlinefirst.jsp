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
<c:set var="ofArray" value="${ofpaper}"/>
<c:set var="ofLength" value="${fn:length(ofArray)}"/>
<c:set var="isSameDate" value="${false}"/>
<body>
	<div class="border-header"></div>
	<%@ include file="/WEB-INF/views-cleangold/include/header.jsp" %>
	<section id="content" class="container">
		<div class="row onlineFirst">
			<div class="col-md-9 col-sm-12 col-xs-12">
				<h2 class="title"><i class="fa fa-angle-double-right"></i> Online First</h2>
				<p style="text-align:justify">
					JIPS provides "Online First" service, by which forthcoming papers are published online before they are scheduled to appear in print. It allows final revision papers (completed papers in queue for assignment to an upcoming issue) to be hosted online prior to their inclusion in a final print and online journal issue. This "Online First" service provides clear benefits to all authors and other researchers who are connected via the JIPS online system. The feature allows them to access the very latest papers in the field. Authors also benefit from greatly reduced lead times between submission and publication of papers. An author's research will therefore reach its audience more quickly, enabling a paper to receive greater usage and exposure, including earlier citation opportunities by related work.
				</p>
				<c:forEach var="i" begin="0" end="${ofLength-1}" varStatus="status">
					<c:set var="afterDate" value="${afterDate}"/>
					<c:set var="beforeDate" value="${beforeDate}"/>

					<c:set var="currentDate" value="${ofArray[i].uploaddate}"/>
					<c:if test="${i != ofLength-1}">
						<c:set var="afterDate" value="${ofArray[i+1].uploaddate}"/>
					</c:if>

					<c:if test="${i > 0}">
						<c:set var="beforeDate" value="${ofArray[i-1].uploaddate}"/>
					</c:if>

					<c:choose>
						<c:when test="${currentDate.equals(afterDate) and i != ofLength - 1}">
							<c:set var="isSameDate" value="${true}"/>
						</c:when>
						<c:otherwise>
							<c:set var="isSameDate" value="${false}"/>
						</c:otherwise>
					</c:choose>

					<c:if test="${!(currentDate.equals(beforeDate))}">
						<strong><i class="fa fa-calendar"></i> ${format.format(ofArray[i].uploaddate)}</strong><br/><br/>
					</c:if>

					<a class="Recent" href="${baseUrl}/q.jips?cp=pp&pn=${ofArray[i].num}"><strong>${ofArray[i].title}</strong></a><br/>

					<c:set var="tempArray" value="${fn:replace(ofArray[i].authors, ', and', ',')}"/> <!-- authors and 제거 -->
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
					<img src="${resources2}/img/jips/doi_icon.png" style="vertical-align:middle;"> <span class="doifont">${ofArray[i].doi}</span>
					<br/>

					<c:set var="keywordArray" value="${fn:split(ofArray[i].keyword, ',')}"/>
					<c:set var="keywordLength" value="${fn:length(keywordArray)}"/>
					Keywords:
					<c:forEach var="k" begin="0" end="${keywordLength - 1}">
						<c:if test="${k < keywordLength - 1}">
							<a class="Paperkeyword" href="${baseUrl}/searchResult?s=${fn:trim(keywordArray[k])}">${keywordArray[k]}</a>,
						</c:if>
						<c:if test="${k == keywordLength - 1}">
							<a class="Paperkeyword" href="${baseUrl}/searchResult?s=${fn:trim(keywordArray[k])}">${keywordArray[k]}</a><br/>
						</c:if>
					</c:forEach>

					<a class="Paperauthor" href="#" id="featured-${status.index}">
						Show / Hide Abstract
					</a>
					<div class="mini_abstract text-justify" id="featured-div-${status.index}">
						<span>${ofArray[i].paperAbstract}</span>
					</div>
					<script>
						$(document).ready(function(){
							$("#featured-${status.index}").on("click", function (e) {
								e.preventDefault();
								$("#featured-div-${status.index}").toggle(200);
							});
						});
					</script>

					<c:choose>
						<c:when test="${isSameDate}">
							<br/><br/>
						</c:when>
						<c:otherwise>
							<br/><img width="90%" src="${resources2}/img/jips/hr.jpg" vspace="15" alt=""/><br/><br/>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</div>
			<div class="col-md-3 hidden-sm hidden-xs">
				<%@ include file="/WEB-INF/views-cleangold/include/side.jsp" %>
			</div>
		</div>
	</section>
	<%@ include file="/WEB-INF/views-cleangold/include/footer.jsp" %>
</body>
<script>
	$(document).ready(function(){
		$(".mini_abstract").hide();
	});
</script>
</html>