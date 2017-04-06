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
				<h2 class="title"><i class="fa fa-angle-double-right"></i> AIMS AND SCOPE</h2>
				<p style="text-align:justify">
					The JIPS is a peer-reviewed quarterly journal that publishes high-quality papers after subjecting them to a rigorous review process. It publishes diverse papers, including theoretical research contributions presenting new techniques, concepts or analyses; experience reports; experiments involving the implementation and application of new theories; and tutorials on state-of-the-art technologies related to information processing systems. In addition, the journal’s editorial board selects featured articles with outstanding contributions and results, and introduces them on the journal’s homepage. The subjects covered by this journal include, but are not limited to, topics related to a) computer systems and theory; b) multimedia systems and graphics; c) communication systems and security; and d) software systems and applications. In order to disseminate the latest technological advances as quickly as possible, the decision to accept submitted papers is finally determined within six months at the most. To be accepted, however, a paper must be judged to be truly outstanding in its field and to be of interest to a wide audience.
					<br/><br/>
					The JIPS has four separate divisions, each having Associate Editors and a group of Editorial Board members, as follows. The journal actively recruits outstanding papers from each division.
				</p>
				<br/>
				<span>< Table 1 > JIPS divisions and their technical fields</span><br/>
				<div class="table-responsive">
					<table class="table text-center">
						<tr>
							<th class="text-center">Division</th>
							<th class="text-center">Division Name</th>
							<th class="text-center">Technical Field</th>
						</tr>
						<tr>
							<td class="text-center">Division A</td>
							<td class="text-center">Computer Systems and Theory</td>
							<td class="text-center">Computational Theory, Algorithm Theory, Grid/Clustering Computing, Middleware, Multimedia Theory (Synchronization Indexing, Compacting), Parallel/Distributed Processing Theory, Computer System Applications.</td>
						</tr>
						<tr>
							<td class="text-center">Division B</td>
							<td class="text-center">Multimedia Systems and Graphics</td>
							<td class="text-center">Artificial Intelligence, Image Processing, Voice Processing, Natural Language Processing, Multimedia, Human Computer Interface, Pattern Recognition, Computer Graphics, Semantic Web, Web Services.</td>
						</tr>
						<tr>
							<td class="text-center">Division C</td>
							<td class="text-center">Communication Systems and Security</td>
							<td class="text-center">Internet Computing, Network Systems and Devices, Wireless/Ad-hoc/Sensor Networks, Network Modeling and Simulation, Network Management Techniques, Telecommunications, Communication Protocols, Transmission Techniques, Communication Systems, Digital Rights Management, Security, Encryption and Cryptography, Compression and Coding.</td>
						</tr>
						<tr>
							<td class="text-center">Division D</td>
							<td class="text-center">Information Systems and Application</td>
							<td class="text-center">Database, Software Engineering, E-commerce, Data Mining, Information Retrieval, Computer Education.</td>
						</tr>
					</table>
				</div>

				<p style="text-align:justify">
					All publications of JIPS are indexed in ESCI (a new Web of Science index of Thomson Reuters), SCOPUS, DOI, DBLP, EI COMPENDEX, EBSCO, Google Scholar, Crossref, and are also selected as the Accredited Journal by the National Research Foundation (NRF) of the Republic of Korea. The JIPS has been also supported by the Korean Federation of Science and Technology Societies (KOFST) funded by the Ministry of Education of the government of the Republic of Korea.
				</p>

				<span>The following figure 1 represents a summary of the aims, features, scope, and society of the JIPS.</span><br/><br/>
				<img src="${resources2}/img/jips/jips-aims-and-scope.png" width="100%" class="center-block"/>
			</div>
			<div class="col-md-3 hidden-sm hidden-xs">
				<%@ include file="/WEB-INF/views-cleangold/include/side.jsp" %>
			</div>
		</div>
	</section>
	<%@ include file="/WEB-INF/views-cleangold/include/footer.jsp" %>
</body>
</html>