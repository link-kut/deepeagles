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

		.btn-group-xs>.btn, .btn-xs {
			font-size: 0.6em !important;
			font-weight: 600 !important;
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
			<h2 class="title"><i class="fa fa-angle-double-right"></i> SPECIAL SECTIONS - CALL FOR PAPERS</h2>
			<br/>
			<p style="text-align:justify">
				&nbsp; JIPS offers the following five special sections in 2017. All papers submitted to the special sections will be processed as <strong><a href="/authorinfo#charge" target="_blank">Fast track - B type</a></strong> (especially, we will provide a special offer: <strong>20% off APC</strong> for authors who submit papers to special sections).
			</p>

			<br/>
			<h4><i class="fa fa-bookmark-o"></i> Special Sections Scheduled in 2017</h4>
			<br/>
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12">
					<h6>SS1. <strong>Advanced Technologies, Services, and Applications for Cloud Computing and Big Data</strong>
						<a href="#" id="ss1-2017">
							<button class="btn btn-xs btn-info" id="btn-ss1-2017" style="margin-bottom: 0.5em">Show Details</button>
						</a>
					</h6>
					<div id="div-ss1-2017">
						<br/>
						<ul style="text-align:justify; margin-left: 1.0em">
							<li><i class="fa fa-minus" aria-hidden="true"></i> Submission due: March. 31, 2017</li>
							<li><i class="fa fa-minus" aria-hidden="true"></i> Expected publication date: 2nd Quarter, 2017</li>
							<li><i class="fa fa-minus" aria-hidden="true"></i> Editors</li>
							<p style="margin-left: 1.0em !important;">
								<strong>Prof. Joon-Min Gil</strong><br/>
								Catholic University of Daegu, Korea<br/>
								jmgil@cu.ac.kr<br/>

								<br/>

								<strong>Prof. Jaehwa Chung</strong><br/>
								Korea National Open University, Korea<br/>
								jaehwachung@knou.ac.kr<br/>
							</p>
							<li><i class="fa fa-minus" aria-hidden="true"></i>
								Download Call For Paper:
								<a href="/files/SS1-Proposal.pdf" target="_blank">
									<button class="btn btn-xs btn-warning" style="margin-bottom: 0.5em">Call For Paper</button>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<br/>

			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12">
					<h6>SS2. <strong>Advanced Research on IoT, Cloud computing, Biotechnology, and Mobile computing (ICBM)</strong>
						<a href="#" id="ss2-2017">
							<button class="btn btn-xs btn-info" id="btn-ss2-2017" style="margin-bottom: 0.5em">Show Details</button>
						</a>
					</h6>
					<div id="div-ss2-2017">
						<br/>
						<ul style="text-align:justify; margin-left: 1.0em">
							<li><i class="fa fa-minus" aria-hidden="true"></i> Submission due: March 30, 2017</li>
							<li><i class="fa fa-minus" aria-hidden="true"></i> 2nd / 3rd quarter, 2017(tentative)</li>
							<li><i class="fa fa-minus" aria-hidden="true"></i> Editors</li>
							<p style="margin-left: 1.0em !important;">
								<strong>Prof. Gangman Yi</strong><br/>
								Dongguk University, Korea<br/>
								yi.gangman@gmail.com<br/>

								<br/>

								<strong>Prof. Min Choi</strong><br/>
								Chungbuk University, Korea<br/>
								mchoi@chungbuk.ac.kr<br/>
							</p>
							<li><i class="fa fa-minus" aria-hidden="true"></i>
								Download Call For Paper:
								<a href="/files/SS2.CFP-ICBM.pdf" target="_blank">
									<button class="btn btn-xs btn-warning" style="margin-bottom: 0.5em">Call For Paper</button>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<br/>

			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12">
					<h6>SS3. <strong>Advanced Cryptography, Security, and Privacy</strong>
						<a href="#" id="ss3-2017">
							<button class="btn btn-xs btn-info" id="btn-ss3-2017" style="margin-bottom: 0.5em">Show Details</button>
						</a>
					</h6>
					<div id="div-ss3-2017">
						<br/>
						<ul style="text-align:justify; margin-left: 1.0em">
							<li><i class="fa fa-minus" aria-hidden="true"></i> Submission due: March 30, 2017</li>
							<li><i class="fa fa-minus" aria-hidden="true"></i> 3rd quarter, 2017(tentative)</li>
							<li><i class="fa fa-minus" aria-hidden="true"></i> Editors</li>
							<p style="margin-left: 1.0em !important;">
								<strong>Prof. Jungho Kang</strong><br/>
								Soongsil University, Korea<br/>
								kjh7548@naver.com<br/>

								<br/>

								<strong>Dr. Kyung-Soo Lim</strong><br/>
								ETRI, Korea<br/>
								luke.kyungsoo@gmail.com<br/>
							</p>
							<li><i class="fa fa-minus" aria-hidden="true"></i>
								Download Call For Paper:
								<a href="/files/SS3-CFP_Security&Privacy.pdf" target="_blank">
									<button class="btn btn-xs btn-warning" style="margin-bottom: 0.5em">Call For Paper</button>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<br/>

			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12">
					<h6>SS4. <strong>Deep Learning and Social Computing</strong>
						<a href="#" id="ss4-2017">
							<button class="btn btn-xs btn-info" id="btn-ss4-2017" style="margin-bottom: 0.5em">Show Details</button>
						</a>
					</h6>
					<div id="div-ss4-2017">
						<br/>
						<ul style="text-align:justify; margin-left: 1.0em">
							<li><i class="fa fa-minus" aria-hidden="true"></i> Submission due: April 30, 2017</li>
							<li><i class="fa fa-minus" aria-hidden="true"></i> Expected publication date: 3rd/4th Quarter, 2017</li>
							<li><i class="fa fa-minus" aria-hidden="true"></i> Editors</li>
							<p style="margin-left: 1.0em !important;">
								<strong>Prof. Yunsick Sung</strong><br/>
								Keimyung University, Korea<br/>
								yunsicksung@gmail.com<br/><br/>

								<strong>Prof. Wei Song</strong><br/>
								North China University of Technology, Beijing, China<br/>
								sw@ncut.edu.cn<br/>

							</p>
							<li><i class="fa fa-minus" aria-hidden="true"></i>
								Download Call For Paper:
								<a href="/files/SS4-Call for Papers-SS4-Deep learning and Social computing.pdf" target="_blank">
									<button class="btn btn-xs btn-warning" style="margin-bottom: 0.5em">Call For Paper</button>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<br/>

			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12">
					<h6>SS5. <strong>5G and Future Internet</strong>
						<a href="#" id="ss5-2017">
							<button class="btn btn-xs btn-info" id="btn-ss5-2017" style="margin-bottom: 0.5em">Show Details</button>
						</a>
					</h6>
					<div id="div-ss5-2017">
						<br/>
						<ul style="text-align:justify; margin-left: 1.0em">
							<li><i class="fa fa-minus" aria-hidden="true"></i> Submission due: May 30, 2017</li>
							<li><i class="fa fa-minus" aria-hidden="true"></i> Expected publication date: 3rd/4th Quarter, 2017</li>
							<li><i class="fa fa-minus" aria-hidden="true"></i> Editors</li>
							<p style="margin-left: 1.0em !important;">
								<strong>Prof. Seokhoon Kim</strong><br/>
								Soonchunhyang University, Korea<br/>
								seokhoon@sch.ac.kr<br/>

								<br/>

								<strong>Prof. Youn-Hee Han</strong><br/>
								Korea University of Technology and Education, Korea<br/>
								yhhan@koreatech.ac.kr<br/>
							</p>
						</ul>
					</div>
				</div>
			</div>

			<br/>
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12">
					<h6>SS6. <strong>Blockchain Technologies and Services for FinTech</strong>
						<a href="#" id="ss6-2017">
							<button class="btn btn-xs btn-info" id="btn-ss6-2017" style="margin-bottom: 0.5em">Show Details</button>
						</a>
					</h6>
					<div id="div-ss6-2017">
						<br/>
						<ul style="text-align:justify; margin-left: 1.0em">
							<li><i class="fa fa-minus" aria-hidden="true"></i> Submission due: June 30, 2017</li>
							<li><i class="fa fa-minus" aria-hidden="true"></i> Expected publication date: 4th Quarter, 2017</li>
							<li><i class="fa fa-minus" aria-hidden="true"></i> Editor</li>
							<p style="margin-left: 1.0em !important;">
								<strong>Prof. Jong Hyuk Park</strong><br/>
								Seoul National University of Science and Technology (SeoulTech), Korea<br/>
								http://www.parkjonghyuk.net<br/>
								jamespark.seoul@gmail.com<br/>
								<br/>
							</p>
						</ul>
					</div>
				</div>
			</div>
			<br/>
			<br/>

			<h4><i class="fa fa-bookmark-o"></i> Submission Guideline</h4>
			<br/>
			<p style="text-align:justify">
				All papers must be submitted to the ManuscriptLink service (<a href="https://www.manuscriptlink.com/journals/jips" target="_blank">https://www.manuscriptlink.com/journals/jips</a>). In the ManuscriptLink submission system, authors must select "<strong>Special Issue/Section Track</strong>" and choose a sub topic in special section, ex) SS1. Advanced Technologies, Services, and Applications for Cloud Computing and Big Data at the step of “Basic Information” in the submission process. Prior to submit your papers, we strongly recommend you to read the <a href="/authorinfo" target="_blank">JIPS submission guideline</a>.
			</p>
			<br/>
		</div>
		<div class="col-md-3 hidden-sm hidden-xs">
			<%@ include file="/WEB-INF/views-cleangold/include/side.jsp" %>
		</div>
	</div>
</section>
<%@ include file="/WEB-INF/views-cleangold/include/footer.jsp" %>
<script>
	<c:forEach var="i" begin="1" end="6">
		$("div#div-ss${i}-2017").hide();

		$("a#ss${i}-2017").on("click", function(event) {
			event.preventDefault();

			if($("div#div-ss${i}-2017").is(':visible')) {
				$("div#div-ss${i}-2017").hide();
				$("button#btn-ss${i}-2017").text('Show Details');
			} else {
				$("div#div-ss${i}-2017").show();
				$("button#btn-ss${i}-2017").text('Hide Details');
			}

			<c:forEach var="j" begin="1" end="6">
				<c:if test="${i ne j}">
					$("div#div-ss${j}-2017").fadeOut("normal");
					$("button#btn-ss${j}-2017").text("Show Details");
				</c:if>
			</c:forEach>
		});
	</c:forEach>

	$("div#div-ss1-2017").show();
	$("button#btn-ss1-2017").text('Hide Details');
</script>
</body>
</html>