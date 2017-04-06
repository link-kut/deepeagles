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
				<h2 class="title"><i class="fa fa-angle-double-right"></i> INFORMATION FOR AUTHORS</h2>
				<div class="text-right">
					Download The Details (Last Revised on September 30, 2016):
					<a href="/files/Information-for-authors-2017.pdf" target="_blank">
						<button class="btn btn-xs btn-default" style="margin-bottom: 0.5em">Information for Authors</button>
					</a>
				</div>
				<br/>
				<p style="text-align:justify">
					The Journal of Information Processing Systems is the official journal of Korea Information Processing Society. Abbreviated title is 'J Inf Process Syst'. It was launched in 2005. The publication dates are the last day of March, June, September and December of each year.
				</p>

				<h4 class="title"><i class="fa fa-check-square-o"></i> Submission of Manuscript</h4>
				<p style="text-align:justify">
					Papers should be submitted in English and concisely written. The page limit for the submitted paper should be 20, single-sided pages, including tables and figures. The paper pages should be consecutively numbered throughout. The length of the paper abstraction should do not exceed 200 words. Manuscripts exceeding these guidelines may be returned to the authors. In the submitted paper, the name of the authors, their affiliation, and acknowledgement should be excluded.
					<br/><br/>
					Introductory discussion should be kept to a minimum and the material published elsewhere should be referenced, not reproduced. The material not essential to the continuity of the text should be placed in the Appendices. Formulas must be numbered. Figures (or pictures) and tables, with captions, must be numbered and referred to in the text. Tables must be self-explanatory. Even if the figures (or pictures) are reduced in size for publication, they should be sufficiently large and clear enough not be affected by the process. If the figures or pictures are not original, the author should request permission from the relevant authors and this should be referred or remarked on the caption of the figure. References must be numbered in the order of occurrence and referred to in the text by bracketed numbers. All abbreviations are tagged in parenthesis when they initially used.
					<br/><br/>
					The author(s) of this article has (have) verified that its article is original and that it does not violate any other publisher's rights nor does it contain matters that may disgrace or invade privacy. All manuscripts should include the following types; research reviews and original articles.
					<br/><br/>
					It is the policy of the KIPS (Korea Information Processing Society) to own the copyright to the technical contributions it publishes. Authors are required to obtain company clearance before final publication.
					<div>
						You can down load it from here: <i class="fa fa-download"></i> <a href="${resources2}/format/KIPS_Copyright.doc">KIPS copyright transfer form</a>
					</div>
				</p>

				<h4 class="title"><i class="fa fa-check-square-o"></i> Peer Review Process</h4>
				<p style="text-align:justify">
					All manuscripts are treated as confidential. They are peer-reviewed by 2 or 3 anonymous reviewers selected by the editor and associate editors. Letters to the Editor are reviewed and published on the decision of the editor. The corresponding author is notified as soon as possible of the editor's decision to accept, reject, or request revision of manuscripts. When the final revised manuscript is completely acceptable according to the JIPS format and criteria, it is scheduled for publication in the next available issue.
				</p>

				<h4 class="title" id="charge"><i class="fa fa-check-square-o"></i> Publication Charge <small>(updated on August 20, 2016)</small></h4>
				<p style="text-align:justify">
					<ul style="margin-left: 1.0em !important;">
						<li><i class="fa fa-check" aria-hidden="true"></i> <strong>Regular Track - $350 or KRW 390,000</strong>: Publish papers on the first-accepted first-published basis. Maybe it will take 1 ~ 2 years to publish an accepted paper.<br/>
						<li><i class="fa fa-check" aria-hidden="true"></i> <strong>Fast Track A - $1,100 or KRW 1,200,000</strong>: Publish papers within 3 months from the paper submission.<br/>
						<li><i class="fa fa-check" aria-hidden="true"></i> <strong>Fast Track B - $800 or KRW 800,000</strong>: Publish papers within 6 months from the paper submission.
					</ul>
				</p>

				<h4 class="title"><i class="fa fa-check-square-o"></i> Subscription Information</h4>
				<p style="text-align:justify">
					Korea Information Processing Society (KIPS) will send The Journal of Information Processing Systems for free to individuals, libraries and educational institution worldwide. Full text PDF file are also available at the official website (<a href="http://jips-k.org">http://jips-k.org</a>). The number of circulation of paper is 540.
				</p>

				<h4 class="title"><i class="fa fa-check-square-o"></i> Authorship and Ethical Issues</h4>
				<p style="text-align:justify">
					For the policies on the research and publication ethics not stated in this instruction, "Guidelines on Good Publication (<a href="http://publicationethics.org/resources/guidelines">http://publicationethics.org/resources/guidelines</a>)" can be applied.
				</p>

				<p style="text-align:justify">
					This journal was supported by Korean Federation of Science and Technology Societies [KOFST] Grant funded by the Korean Government (MEST). All publications of JIPS are indexed in Scopus, DOI, DBLP, EBSCO, Google and Google scholar and are also selected as the Accredited Journal by NRF (National Research Foundation of Korea).
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