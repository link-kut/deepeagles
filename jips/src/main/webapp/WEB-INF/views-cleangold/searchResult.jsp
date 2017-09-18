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

<c:set var="paperLength" value="${fn:length(papers)}"/>

<body>
	<div class="border-header"></div>
	<%@ include file="/WEB-INF/views-cleangold/include/header.jsp" %>
	<section id="content" class="container">
		<div calss="row">
			<div class="col-md-9 col-sm-12 col-xs-12">
				<span style="font-size:medium">Search Word(s) in Title, Keywords, Authors, and Abstract:</span>
				<span style="font-size:large; color:#0A7DBF;" align="left">
					<span id="title">
						<strong>${searchWords}</strong></span>
					<br/>
				</span>
				<br/>

				<c:forEach var="p" items="${papers}" varStatus="status">
					<a class="Recent" href="${baseUrl}/q.jips?cp=pp&pn=${p.num}"><strong>${p.title}</strong></a> <!-- 제목 -->
					<br/>

					<c:set var="tempArray" value="${fn:replace(p.authors, ', and', ',')}"/> <!-- authors and 제거 -->
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

					Page: ${p.page}~${p.endpage}, Vol. ${p.volume}, No.${p.number}, ${p.year} <br/>

					<img src="${resources2}/img/jips/doi_icon.png" style="vertical-align:middle;" />
					<span class="doifont">
					  <c:choose>
						  <c:when test="${empty p.doi}">
							  None
						  </c:when>
						  <c:otherwise>
							  ${p.doi}
						  </c:otherwise>
					  </c:choose>
					</span>
					<br/>

					<c:if test="${p.volume >= 11}">
						<a class="Recent" href="${baseUrl}/q.jips?cp=pp&pn=${p.num}"><button type="button" class="btn btn-primary btn-xs">Details</button></a>
						<!-- <button type="button" class="btn btn-danger btn-xs">PDF</button> -->
						<a href="http://jips.jatsxml.org/Article/${p.volume}/${p.number}/${p.page}"><button type="button" class="btn btn-info btn-xs">Full Text</button></a>
						<a href="http://jips.jatsxml.org/PubReader/${p.volume}/${p.number}/${p.page}"><button type="button" class="btn btn-warning btn-xs">PubReader</button></a>
						<a href="http://jips.jatsxml.org/func/download.php?path=${p.epub}"><button type="button" class="btn btn-success btn-xs">ePub</button></a>
						<br/>
					</c:if>

					<c:set var="keywordArray" value="${fn:split(p.keyword, ',')}"/>
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
						<span>${p.paperAbstract}</span>
					</div>
					<script>
						$(document).ready(function(){
							$("#featured-${status.index}").on("click", function (e) {
								e.preventDefault();
								$("#featured-div-${status.index}").toggle(200);
							});
						});
					</script>
					<br/>
					<br/>
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