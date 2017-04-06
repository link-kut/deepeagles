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
<c:set var="volumeArray" value="${volumes}"/>
<c:set var="yearLength" value="${fn:length(yearArray)}"/>
<c:if test="${yearLength % 2 == 1}">
	<c:set var="yearLength" value="${yearLength + 1}"/>
</c:if>
<c:set var="rowCount" value="${yearLength / 2}"/>
<c:set var="numberArray" value="${latestNum}"/>
<body>
	<div class="border-header"></div>
	<%@ include file="/WEB-INF/views-cleangold/include/header.jsp" %>
	<section id="content" class="container">
		<div class="paperDetails" style="margin-left: 1.2em !important;">
			<h2 class="title"><i class="fa fa-angle-double-right"></i> Digital Library</h2>
			<div class="row">
			<c:forEach var="i" begin="0" end="${yearLength}" varStatus="status">
				<div class="col-md-3 col-sm-6 col-xs-12">
					<span style="font-size:16pt">${years[i].year}</span>
					<c:if test="${years[i].year >= 2015}">
						<span class="bg-info" style="margin-top: -7px">&nbsp;XML Service&nbsp;</span>
					</c:if>

					<br/>

					<c:choose>
						<c:when test="${years[i].year == 2005}">
							<a href="digital.lib?y=${years[i].year}&v=1&n=1" Target="_self" class="DL_no"> Vol.1, No.1 (December)</a>
						</c:when>

						<c:when test="${years[i].year == 2006}">
							<a href="digital.lib?y=${years[i].year}&v=2&n=3" Target="_self" class="DL_no">Vol.2, No.3 (December)</a></br>
							<a href="digital.lib?y=${years[i].year}&v=2&n=2" Target="_self" class="DL_no">Vol.2, No.2 (September)</a></br>
							<a href="digital.lib?y=${years[i].year}&v=2&n=1" Target="_self" class="DL_no">Vol.2, No.1 (June)</a></li>
						</c:when>

						<c:when test="${years[i].year == 2007}">
							<a href="digital.lib?y=${years[i].year}&v=3&n=2" Target="_self" class="DL_no">Vol.3, No.2 (December)</a></br>
							<a href="digital.lib?y=${years[i].year}&v=3&n=1" Target="_self" class="DL_no">Vol.3, No.1 (September)</a></br>
						</c:when>
						<c:when test="${years[i].year > 2007 and years[i].year <= 2016}">
							<c:if test="${years[i].year != null}">
								<c:forEach var="j" begin="0" end="${numberArray[i].number-1}">
									<a href="digital.lib?y=${years[i].year}&v=${volumeArray[i].volume}&n=${numberArray[i].number-j}" Target="_self" class="DL_no">Vol.${volumeArray[i].volume}, No.${numberArray[i].number-j} (${monthsOld[numberArray[i].number-1-j]})</a></br>
								</c:forEach>
							</c:if>
						</c:when>
						<c:otherwise>
							<c:if test="${years[i].year != null}">
								<c:forEach var="j" begin="0" end="${numberArray[i].number-1}">
									<a href="digital.lib?y=${years[i].year}&v=${volumeArray[i].volume}&n=${numberArray[i].number-j}" Target="_self" class="DL_no">Vol.${volumeArray[i].volume}, No.${numberArray[i].number-j} (${months[numberArray[i].number-1-j]})</a></br>
								</c:forEach>
							</c:if>
						</c:otherwise>
					</c:choose>
					<br/>
				</div>
			</c:forEach>
		</div>
	</section>
	<%@ include file="/WEB-INF/views-cleangold/include/footer.jsp" %>
</body>
</html>