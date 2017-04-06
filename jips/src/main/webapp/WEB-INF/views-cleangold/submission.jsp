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
				<h2 class="title"><i class="fa fa-angle-double-right"></i> SUBMISSION</h2>
				<h3 class="title"><i class="fa fa-check-square-o"></i> MANUSCRIPT PREPARATION</h3>
				<p style="text-align:justify">
					All manuscript submissions must be made in electronic format, e.g., PDF format (preferred) or MS Word. Manuscripts should follow the formatting of the sample paper and reference.
				</p>
				<div>
					You can down load them from here:
					<i class="fa fa-download"></i> <a href="${resources2}/format/JIPS_Submit_Format.docx"><strong class="big">Sample paper format</strong></a>,&nbsp;
					<i class="fa fa-download"></i> <a href="${resources2}/format/JIPS_Reference_format.doc"><strong class="big">Sample reference format</strong></a>
				</div>
				<br/>
				<p style="text-align:justify">
					Papers that have been published or submitted to other journals or books will not be considered for publication in the JIPS. Revised or extended versions of papers printed in conference, workshop, or symposium proceedings may be submitted to this Journal with an appropriate cover letter (you can write the cover letter in the web-based manuscript submission system).
				</p>
				<!--
				<p style="text-align:justify">
				[NOTE] Make sure that the submitted manuscript SHOULD NOT include the author information (such as name, affiliation, emails, etc.). If it includes them, the JIPS secretary will return it back to the authors without further review process.
				</p> -->
				<br/>

				<h3 class="title"><i class="fa fa-check-square-o"></i> INSTRUCTIONS FOR MANUSCRIPT SUBMISSION</h3>
				<p style="text-align:justify">
					First, you should enter the JIPS's web-based manuscript submission & peer-review system to submit your menuscript. The submission process consists of the following steps:
				</p>
				<p style="text-align:justify">
					<ol type="1">
						<li>Create an account (if you do not have one on the web-based system).<br/>
							<ul style="margin-left: -0.25em">
								<li style="font-size: 1.1em !important;"><i class="fa fa-check" aria-hidden="true"></i> Please note that the login ID should be <strong>the primary e-mail address</strong> of you</li>
							</ul>
						<li>Login the web-based system.</li>
						<li>Click to "Submit A New Manuscript" of the "Author" menu.</li>
						<li>Follow the instructions to enter details about the manuscript information and to upload your manuscript.
							<ul style="margin-left: -0.25em">


								<li style="font-size: 1.1em !important;"><i class="fa fa-check" aria-hidden="true"></i> You should read the following policy of publication charge and select the right submission track.
									<ul style="font-size: 1.0em !important;">
										<li>- <strong>Regular Track ($350 or KRW 390,000)</strong>: Publish papers on the first-accepted first-published basis. Maybe it will take 1 ~ 2 years to publish accepted paper.<br/>
										<li>- <strong>Fast Track A ($1,100 or KRW 1,200,000)</strong>: Publish papers within 3 months from the paper submission.<br/>
										<li>- <strong>Fast Track B ($800 or KRW 800,000)</strong>: Publish papers within 6 months from the paper submission.
									</ul>
								</li>
								<li style="font-size: 1.1em !important;"><i class="fa fa-check" aria-hidden="true"></i> No part of the submission is final until all steps have been completed and the final "Submit" button has been clicked.</li>
								<li style="font-size: 1.1em !important;"><i class="fa fa-check" aria-hidden="true"></i> The "Front Cover" file should be uploaded separately from the original manuscript after filling up. You can download it from here:
									<i class="fa fa-download"></i> <a href="${resources2}/format/Front_Cover.doc"><strong class="big">Front Cover File</strong></a></li>
								<li style="font-size: 1.1em !important;"><i class="fa fa-check" aria-hidden="true"></i> The "Author Check List" file should be also uploaded separately from the original paper and front cover file after filling up. You can download it from here:
									<i class="fa fa-download"></i> <a href="${resources2}/format/JIPS_Checklist-2016.doc"><strong class="big">Author Checklist File</strong></a></li>
							</ul>
						<li>Shortly after submitting, authors will receive an automatically generated acknowledgement by e-mail.</li>
					</ol>
				</p>
				<p style="text-align:justify">
					Click the following to submit your manuscript: <br/>
					<div class="text-center">
						<a href="http://www.manuscriptlink.com/journals/jips" target="_blank"><strong class="big">JIPS's Paper Submission and Peer-review System (ManuscriptLink)</strong></a>
					</div>
				</p>
				<br/>


				<h3 class="title"><i class="fa fa-check-square-o"></i> INSTRUCTIONS FOR FINAL MANUSCRIPT SUBMISSION AFTER ACCEPTANCE</h3>
				<p style="text-align:justify">
					You should use the following template to make the camera-ready paper and the file name of it should be as follows:
					<br/>
					<ul>
						<li>- <i class="fa fa-download"></i> <a href="${resources2}/format/JIPS_Final_Format.docx"><strong class="big">Sample final-paper format</strong></a> (please note that the front cover should be included)</li>
						<li>- File Name: camera-ready-{paper ID}.doc</li>
					</ul>

					When you submit the final paper, please include KIPS copyright transfer form, which you can download from here:
					<br/>
					<br/>
					<ul>
						<li>- <i class="fa fa-download"></i> <a href="${resources2}/format/KIPS_Copyright.doc"><strong class="big">KIPS copyright transfer form</strong></a></li>
					</ul>

					For the submission of the final paper and the KIPS copyright transfer form, please upload them to the the JIPS's web-based online submission and review system.
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