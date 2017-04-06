<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ page pageEncoding="utf-8" %>
<!doctype html>
<!--[if IE 8 ]>    <html class="no-js loading ie8 oldie" dir="ltr" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> <html class="no-js loading" dir="ltr" lang="en-US"> <!--<![endif]-->
<head>
	<%@ include file="/WEB-INF/views-cleangold/include/head.jsp" %>
	<title>JIPS</title>
</head>
<body>
	<div class="border-header"></div>
	<%@ include file="/WEB-INF/views-cleangold/include/header.jsp" %>
	<section id="content" class="container">
		<h1 class="page-title text-right"><strong>Journal of Information Processing Systems</strong></h1>
		<div class="grid10 col">
			<p class="normal text-justify">The <strong>Journal of Information Processing Systems</strong>
				(JIPS) is the official international journal of the Korea Information Processing Society.
				As information processing systems are progressing at a rapid pace, the Korea Information Processing Society is committed to providing researchers and other professionals
				with the academic information and resources they need to keep abreast with ongoing developments. The JIPS aims to be a premier source that enables researchers and professionals
				all over the world to promote, share, and discuss all major research issues and developments in the field of information processing systems and other related fields. </p>
			<p>
				<strong>ISSN: 1976-913X (Print), ISSN: 2092-805X (Online)</strong>
			</p>
		</div>
		<div class="grid2 col text-right">
			<img src="${resources2}/img/jips/JIPS_engpaper.jpg" height="200" alt="JIPS"/>
		</div>

		<div class="grid12 col">
			<div class="call-to-action clearfix">
				<div class="left text-justify">
					<h6><i class="fa fa-bullseye"></i> <strong>[Dec. 12, 2016]</strong> Call for papers about <strong>Special sections</strong> scheduled in 2017 are registered. Please refer to <a href="/ss">here</a> for details.</h6>
				</div>
			</div>
			<div class="call-to-action clearfix">
				<div class="left text-justify">
					<h6><i class="fa fa-bullseye"></i> <strong>[Oct. 1, 2016]</strong> Call for papers about a new special issue titled "<strong>Smart Standards, Algorithms and Frameworks for Interoperability in Internet of Things</strong>" is now registered. Please refer to <a href="/si">here</a> for details.</h6>
				</div>
			</div>
			<div class="call-to-action clearfix">
				<div class="left text-justify">
					<h6><i class="fa fa-bullseye"></i> <strong>[Aug. 20, 2016]</strong> Since August 20, 2016, the JIPS has started to manage two fast tracks as well as the regular track, and authors has been required to pay the publication charge. Please refer to the details on the <a href="/authorinfo">author information</a> page.</h6>
				</div>
			</div>
			<div class="call-to-action clearfix">
				<div class="left text-justify">
					<h6><i class="fa fa-bullseye"></i> <strong>[Aug. 1, 2016]</strong> Since August 2016, the JIPS has been indexed in "<strong>Emerging Sources Citation Index (ESCI)</strong>", a new Web of Science index managed by Thomson Reuters, launched in late 2015 for journals that have passed <u>an initial evaluation for inclusion in SCI/SCIE/AHCI/SSCI indexes</u>. Indexing in the ESCI will improve the visibility of the JIPS and provide a mark of quality. This achievement is good for all authors of the JIPS. For more information about ESCI, please see the <a href="http://wokinfo.com/media/pdf/S024651_Flyer.pdf" target="_blank">ESCI fact sheet</a> file.
					</h6>
				</div>
			</div>
		</div>

		<div class="col sep sep-big"></div>
		<div class="grid9 col">
			<h2 class="title">Latest Publications</h2>
			<p style="color:#204C00" class="text-right">
				<strong>Journal of Information Processing Systems, Vol. ${latestArray[0].volume}, No.${latestArray[0].number}, ${latestArray[0].year}</strong><br/>
			</p>
			<c:forEach var="l" items="${latestArray}" varStatus="status">
				<a class="Recent" href="${baseUrl}/q.jips?cp=pp&pn=${l.num}"><strong>${l.title}</strong></a><br/>

				<c:set var="tempArray" value="${fn:replace(l.authors, ', and', ',')}"/> <!-- authors and 제거 -->
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
				Page: ${l.page}~${l.endpage}, Vol. ${l.volume}, No.${l.number}, ${l.year}<br/>

				<img src="${resources2}/img/jips/doi_icon.png" style="vertical-align:middle;" />
				<span class="doifont">
				  <c:choose>
					  <c:when test="${empty l.doi}">
						  None
					  </c:when>
					  <c:otherwise>
						  ${l.doi}
					  </c:otherwise>
				  </c:choose>
				</span>


				<c:if test="${l.year >= 2015}">
					<br/>
					<a class="Recent" href="${baseUrl}/q.jips?cp=pp&pn=${l.num}"><button type="button" class="btn btn-primary btn-xs">Details</button></a>
					<!-- <button type="button" class="btn btn-danger btn-xs">PDF</button> -->
					<a href="http://jips.jatsxml.org/Article/${l.volume}/${l.number}/${l.page}"><button type="button" class="btn btn-info btn-xs">Full Text</button></a>
					<a href="http://jips.jatsxml.org/PubReader/${l.volume}/${l.number}/${l.page}"><button type="button" class="btn btn-warning btn-xs">PubReader</button></a>
					<a href="http://jips.jatsxml.org/func/download.php?path=${l.epub}"><button type="button" class="btn btn-success btn-xs">ePub</button></a>
				</c:if>

				<br/>
				<c:set var="keywordArray" value="${fn:split(l.keyword, ',')}"/>
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

				<a class="Paperauthor" href="#" id="latest-${status.index}">
					Show / Hide Abstract
				</a>
				<div class="mini_abstract text-justify" id="latest-div-${status.index}">
					<span>${l.paperAbstract}</span>
				</div>
				<script>
					$(document).ready(function(){
						$("#latest-${status.index}").on("click", function (e) {
							e.preventDefault();
							$("#latest-div-${status.index}").toggle(200);
						});
					});
				</script>
				<br/>
				<br/>
			</c:forEach>
		</div>
		<div class="grid3 col add-bottom text-right hidden-sm hidden-xs">
			<%@ include file="/WEB-INF/views-cleangold/include/side.jsp" %>
		</div>


		<div class="col sep sep-big"></div>
		<div class="grid12 col">
			<h2 class="title">Featured Papers</h2>
			<c:forEach var="l" items="${featureArray}" varStatus="status">
				<a class="Recent" href="${baseUrl}/q.jips?cp=pp&pn=${l.num}"><strong>${l.title}</strong></a><br/>
				<c:set var="tempArray" value="${fn:replace(l.authors, ', and', ',')}"/> <!-- authors and 제거 -->
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
				Pages: ${l.page}~${l.endpage}, Vol. ${l.volume}, No.${l.number}, ${l.year}
				<br/>
				<img src="${resources2}/img/jips/doi_icon.png" style="vertical-align:middle;" />
				<span class="doifont">
				  <c:choose>
					  <c:when test="${empty l.doi}">
						  None
					  </c:when>
					  <c:otherwise>
						  ${l.doi}
					  </c:otherwise>
				  </c:choose>
				</span>
				<c:if test="${l.year >= 2015}">
					<br/>
					<a class="Recent" href="${baseUrl}/q.jips?cp=pp&pn=${l.num}"><button type="button" class="btn btn-primary btn-xs">Details</button></a>
					<!-- <button type="button" class="btn btn-danger btn-xs">PDF</button> -->
					<a href="http://jips.jatsxml.org/Article/${l.volume}/${l.number}/${l.page}"><button type="button" class="btn btn-info btn-xs">Full Text</button></a>
					<a href="http://jips.jatsxml.org/PubReader/${l.volume}/${l.number}/${l.page}"><button type="button" class="btn btn-warning btn-xs">PubReader</button></a>
					<a href="http://jips.jatsxml.org/func/download.php?path=${l.epub}"><button type="button" class="btn btn-success btn-xs">ePub</button></a>
				</c:if>
				<br/>

				<c:set var="keywordArray" value="${fn:split(l.keyword, ',')}"/>
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
					<span>${l.paperAbstract}</span>
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


		<div class="col sep sep-big"></div>
		<div class="grid12 col">
			<h2 class="page-title text-right"><strong>PUBLICATION ETHICS</strong></h2>
			<p class="normal text-justify">
				With regard to ethical standards, the JIPS takes plagiarism very seriously and thoroughly checks all articles.
				The JIPS defines research ethics as securing objectivity and accuracy in the execution of research and the conclusion of results without any unintentional errors resulting from negligence or incorrect knowledge, etc.
				and without any intentional misconduct such as falsification, plagiarism, etc. When an author submits a paper to the JIPS online submission and peer-review system,
				he/she should also upload the separate file "author check list" which contains a statement that all his/her research has been performed in accordance with ethical standards.
				<br/><br/>Among the JIPS editorial board members, there are four associate manuscript editors who support the JIPS by dealing with any ethical problems associated with the publication process
				and give advice on how to handle cases of suspected research and publication misconduct. When the JIPS managing editor looks over submitted papers and checks that they are suitable for further processing,
				the managing editor also routes them to the CrossCheck service provided by iTenticate. Based on the results provided by the CrossCheck service, the JIPS associate manuscript editors inform the JIPS editor-in-chief of any plagiarism that is detected in a paper.
				Then, the JIPS editor-in-chief communicates such detection to the author(s) while rejecting the paper.
			</p>
		</div>

		<div class="col sep sep-big"></div>
		<div class="grid12 col">
			<h2 class="page-title text-right"><strong>OPEN ACCESS</strong></h2>
			<p class="normal text-justify">
				Since 2005, all papers published in the JIPS are subjected to a peer review and upon acceptance are immediately made
				permanently available free of charge for everyone worldwide to read and download from the journal’s homepage (http://www.jips-k.org)
				without any subscription fee or personal registration. This is an Open Access article distributed under the terms of the Creative Commons Attribution Non-Commercial License (<a href="http://creativecommons.org/licenses/by-nc/3.0/" target="_blank" >http://creativecommons.org/licenses/by-nc/3.0/</a>) which permits unrestricted non-commercial use, distribution, and reproduction in any medium, provided the original work is properly cited. The KIPS waives paper processing charges for submissions from international authors as well as society members. This waiver policy supports and encourages the publication of quality papers, making the journal an international forum for the exchange of different ideas and experiences.
			</p>
		</div>

		<div class="hidden-lg hidden-md visible-sm visible-xs">
			<%@ include file="/WEB-INF/views-cleangold/include/side.jsp" %>
		</div>

		<div class="col sep sep-big"></div>
		<div class="grid12 col">
			<h2 class="page-title text-right"><strong>Contact Information</strong></h2>
			<p class="normal text-right">
				<strong>JIPS Secretary: Ms. Joo-yeon Lee</strong><br/>
				Email: <a href="mailto:joo@kips.or.kr">joo@kips.or.kr</a><br/> Phone: +82-2-2077-1414, Fax: +82-2-2077-1472
			</p>
		</div>

		<a href="#top" id="top-link"><span></span></a>
	</section>
	<%@ include file="/WEB-INF/views-cleangold/include/footer.jsp" %>
</body>
<script>
	$(document).ready(function(){
		$(".mini_abstract").hide();
	});
</script>
</html>