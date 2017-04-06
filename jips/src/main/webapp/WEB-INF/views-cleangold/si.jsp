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
	<style>
		.si-title {
			font-family: NexusSerif,Georgia,serif;
			text-align: center;
			margin-left: auto;
			margin-right: auto;
			max-width: 80%;
		}
	</style>
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
			<h2 class="title"><i class="fa fa-angle-double-right"></i> SPECIAL ISSUES - CALL FOR PAPERS</h2>
			<%--<h6 class="text-right">[CFP Open - October 1, 2016]</h6>--%>
			<br/>
			<h3 class="title si-title"><strong>Smart Standards, Algorithms and Frameworks for Interoperability in Internet of Things</strong></h3>
			<br/>
			<p style="text-align:justify">
				&nbsp; The core theme of information technology (IT) is to make the human life easy. In the current IT era of diversity, Interoperability is the crux in facilitating this service to humanity from syntactic, semantic and cross domain aspects from the perspective of internet connected object i.e. Internet of Things (IoT). But various technological, strategic, tactical and operational based challenges and opportunities are put forth with the large scale deployment of these objects. This attracts various market players and academicians, researchers and R&D industry to delve into it for resolving and hence exploiting this versatility. At the same time, interoperability has become the biggest barrier keeping the businesses reluctant from adapting the IoT.  So, the lack of related frameworks, algorithms and standards significantly increase the cost, complexity, inefficiencies, and customer frustration as well. One key solutions domain is exhibiting the intelligence by the IoT objects. Another is incorporating the intelligence at application level.  These can have a big contribution in resolving interoperability related issues. Hiring of Intelligent solutions from long and innovative list of computational intelligence domain (Swarm Intelligence, Neural Networks, Artificial Intelligence, Fuzzy Logic, and Genetic Algorithms), Deep learning, Machine learning, and their state-of-the-art extensions may play vital roles in making the human life easy in getting more and more benefits from plethora of internet connected objects. Whatsoever the design is, but it is appreciable that it intends to transcend today’s available technologies and in so doing is capable of identifying technology gaps based on the architectural requirements.
			</p>

			<br/>
			<h4><i class="fa fa-bookmark-o"></i> Subject Coverage</h4>
			<br/>
			<p style="text-align:justify">
				&nbsp; Journal of Information Processing Systems is soliciting high quality manuscripts presenting original contributions for its special issue. This special issue aims to provide a forum that brings together researchers from academia, practicing engineers from industry, standardization bodies, and government to meet and exchange ideas on smart Frameworks, Algorithms and Standards for Interoperability in Internet of Things. Submissions possibly be consisted of applied and theoretical research in topics including, but not limited to
			<ul style="text-align:justify; margin-left: 1.0em">
				<li><i class="fa fa-minus" aria-hidden="true"></i> Interoperability in IoT: Intelligent protocols supporting generic architectures and platforms</li>
				<li><i class="fa fa-minus" aria-hidden="true"></i> Hierarchical interoperability standards</li>
				<li><i class="fa fa-minus" aria-hidden="true"></i> Intelligent Semantic Interoperability Solutions for the IoT</li>
				<li><i class="fa fa-minus" aria-hidden="true"></i> Messaging protocols and standards supporting interoperability in IoT: MQTT, CoAP, AMQP, and REST</li>
				<li><i class="fa fa-minus" aria-hidden="true"></i> Intelligent solutions supporting gap analysis of interoperability in IoT</li>
				<li><i class="fa fa-minus" aria-hidden="true"></i> Interoperability among IoT applications: smart health-care systems, smart cities, smart homes, smart surveillance systems, smart transportation systems, etc.</li>
				<li><i class="fa fa-minus" aria-hidden="true"></i> Extended applications of interoperability to support heterogeneous IoT infrastructures</li>
				<li><i class="fa fa-minus" aria-hidden="true"></i> Internetworking and cross layer communications for enhancing interoperability in IoT</li>
				<li><i class="fa fa-minus" aria-hidden="true"></i> Formal and Informal methods supporting interoperability in IoT</li>
				<li><i class="fa fa-minus" aria-hidden="true"></i> Protocols supporting low cost interoperability in IoT</li>
				<li><i class="fa fa-minus" aria-hidden="true"></i> Technologies supporting interoperability in IoT</li>
			</ul>
			</p>

			<br/>
			<h4><i class="fa fa-bookmark-o"></i> Submission Guideline</h4>
			<br/>
			<p style="text-align:justify">
				<%--We will prepare a SI section in the JIPS submission system.--%>
				<%--The leading GE will manage the section of submission system.--%>
				<%--After all recommended papers will be finally checked by EiC and manager of JIPS, we will finally send the acceptance notification to authors.--%>
				<%--All accepted papers in a SI will be published within at most 6 months (Generally, we expect 4 months after finall paper was accepted).--%>
				<%--<br/>--%>
				<%--** More detailed policy for this SI **--%>
			<%--<ol style="text-align:justify; margin-left: 2.5em">--%>
				<%--<li> There is a publication charge for each accepted paper - special discounted fee.</li>--%>
				<%--<li> 6~12 papers for each SI.</li>--%>
				<%--<li> Journal papers from conference should have at least 30% difference than its conference ones and GEs should be responsible for this.</li>--%>
				<%--<li> The same corresponding author's country rate MUST be less than 30 % of total accepted papers.</li>--%>
				<%--<li> We welcome reputable researcher's papers - survey or overview.</li>--%>
					&nbsp; Papers must be submitted to the ManuscriptLink service - <a href="https://www.manuscriptlink.com/journals/jips" target="_blank">https://www.manuscriptlink.com/journals/jips</a>.
					It is important that authors should select "Special Issue Track" and "Smart Standards, Algorithms and Frameworks for Interoperability in Internet of Things"
					when they reach the “Basic Information” step in the submission process.
					Before submitting papers, you need to read the <a href="/submission" target="_blank">JIPS submission guideline</a>.
			<%--</ol>--%>
			</p>

			<br/>
			<h4><i class="fa fa-bookmark-o"></i> Guest Editors</h4>
			<br/>
			<p>
				<strong>Naveen Chilamkurti</strong>, Ph.D.<br/>
				Department of Computer Science and Computer Engineering<br/>
				La Trobe University<br/>
				Melbourne, Australia<br/>
				n.chilamkurti@latrobe.edu.au<br/>

				<br/>

				<strong>Ka Lok Man</strong>, Ph.D.<br/>
				Department of Computer Science & Software Engineering<br/>
				Xi'an Jiaotong-Liverpool University,<br/>
				Suzhou, P.R. China<br/>
				kalok2006@gmail.com<br/>

				<br/>

				<strong>Sohail Jabbar</strong>, Ph.D.<br/>
				Department of Computer Science and Engineering<br/>
				Kyungpook National University, Daegu, South Korea<br/>
				sjabbar.research@gmail.com<br/>
			</p>
			<br/>
			<h4><i class="fa fa-bookmark-o"></i> Important Dates</h4>
			<br/>
			<ul style="text-align:justify">
				<li><i class="fa fa-minus" aria-hidden="true"></i> Manuscript submission due: March 30, 2017</li>
				<li><i class="fa fa-minus" aria-hidden="true"></i> Author notification: June 30, 2017</li>
				<li><i class="fa fa-minus" aria-hidden="true"></i> Expected publication: 3rd or 4th quarter, 2017 (tentative)</li>
			</ul>
		</div>
		<div class="col-md-3 hidden-sm hidden-xs">
			<%@ include file="/WEB-INF/views-cleangold/include/side.jsp" %>
		</div>
	</div>
</section>
<%@ include file="/WEB-INF/views-cleangold/include/footer.jsp" %>
</body>
</html>