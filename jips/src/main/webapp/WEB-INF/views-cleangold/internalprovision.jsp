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
				<h2 class="title"><i class="fa fa-angle-double-right"></i> INTERNAL PROVISION</h2>
				<h3 class="title"><i class="fa fa-check-square-o"></i> INTERNAL PROVISION FOR EDITORIAL COMMITTEE</h3>
				<p style="text-align:justify">
					<ol type="1" style="text-align:justify">
						<li><span><b>(Objective)</b> The objective of this internal provision is to define the matter of committee members ("member" hereafter) for the international journal editorial committee and the publication of the journal.</span></li><br/>
						<li><span><b>(Organization)</b> Committee member consists of two Editor-in-Chiefs, one Managing Editor, two Associate Editors for each field, and a few additional members. Members are appointed by the president upon the recommendation of the Editor-in-Chief. Minimum qualification of the member is the obtainment of Doctor of Philosophy or an equivalent educational background.</span></li><br/>
						<li><span><b>(Term)</b> The basic term of service is one year, and reappointment is possible.</span></li><br/>
						<li><span><b>(Duty)</b> The duty of the members are review of the manuscript following the review guideline and additional task regarding editing and publishing such as establishing policy of the periodical publication, selecting reviewers of the manuscript, and selecting manuscripts for the publication. The periodicity of the publication is every quarter, four times a year. The publication dates are the 30th of March, June, September, and December. Additionally special issues in between are possible.</span></li><br/>
						<li><span><b>(Field)</b> Each technical field and the order of publication are as follows.</span><br/><br/>
							<ul>
								<li><i class="fa fa-chevron-right"></i> <span><b>DIVISION A</b> (Computer Systems and Theory) : computational theory, algorithm theory, grid/clustering computing, middleware, multimedia theory (synchronization, indexing, compacting), and parallel/distributed processing theory, computer system applications.</span></li>
								<li><i class="fa fa-chevron-right"></i> <span><b>DIVISION B</b> (Multimedia Systems and Graphics) : artificial intelligence, image processing, voice processing, natural language processing, multimedia, human computer interface, pattern recognition, computer graphics, semantic web, and web services.</span></li>
								<li><i class="fa fa-chevron-right"></i> <span><b>DIVISION C</b> (Communication Systems and Security) : Internet Computing, Network Systems and Devices,  Wireless/Ad-Hoc/Sensor Networks , Network Modeling and Simulation, Network Management Techniques, Telecommunications, Communication protocols, Transmission Techniques,Communication Systems, Digital Rights Management, Security, Encryption and Cryptography, Compression and Coding</span></li>
								<li><i class="fa fa-chevron-right"></i> <span><b>DIVISION D</b> (Software Systems and Applications) : database, software engineering, e-commerce, data mining, information retrieval, and computer education.</span></li>
							</ul>
							<br/>
						</li>
						<li><span><b>(Review)</b> Process of reviewing and selecting the member are laid out in the Appendix I.</span></li><br/>
						<li><span><b>(The steering committee)</b> The editorial board will organize the steering committee which consists of Editor-in-chefs, Managing Editor, Associate editors, and administering affairs.</span></li>
					</ol>
				</p>

				<br/><br/>
				<h3 class="title"><i class="fa fa-check-square-o"></i> SUPPLEMENTARY PROVISION</h3>
				<p style="text-align:justify">
					<ol type="1">
						<li><span>This internal provision is to be carried out on June 01, 2005.</span></li><br/>
						<li><span>This internal provision is to be carried out on March 27, 2009.</span></li>
					</ol>
				</p>
			</div>
			<div class="col-md-3 hidden-sm hidden-xs">
				<%@ include file="/WEB-INF/views-cleangold/include/side.jsp" %>
			</div>
		</div>
	</section>
	<%@ include file="/WEB-INF/views-cleangold/include/footer.jsp" %>
</body>
</html>