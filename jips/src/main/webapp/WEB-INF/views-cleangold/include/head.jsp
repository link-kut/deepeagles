<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="req" value="${pageContext.request}" />
<base href="${fn:replace(req.requestURL, req.requestURI, req.contextPath)}/" />
<c:set var="req" value="${pageContext.request}" />
<c:set var="url">${req.requestURL}</c:set>
<c:set var="uri" value="${req.requestURI}" />
<c:set var="root" value="${fn:substring(url, 0, fn:length(url) - fn:length(uri))}${req.contextPath}" />
<c:set var="base" value="${fn:substring(root, 6, fn:length(root))}" />
<c:set var="baseUrl" value="${req.scheme}://${req.serverName}:${req.serverPort}${req.contextPath}" />
<!-- TODO -->
<c:set var="resources2" value="${prod eq true ? 'https://xxxxxx.cloudfront.net' : '/resources2'}"/>
<meta charset="UTF-8" />
<meta name="description" content="Journal of Information Processing Systems" />
<meta name="keywords" content="Journal, KIPS, Papers, Manuscripts, Information" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="icon" href="${resources2}/img/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="${resources2}/img/favicon.ico" type="image/x-icon" />
<link rel="apple-touch-icon" href="${resources2}/img/touch-icon.png" />
<link rel="image_src" href="${resources2}/img/touch-icon.png" />

<link rel="stylesheet" href="${resources2}/bootstrap-3.3.6-dist/css/bootstrap.min.css"/>
<link rel="stylesheet" href="${resources2}/css/font-awesome.min.css">
<link rel="stylesheet" href="${resources2}/css/style.css" />
<link rel="stylesheet" href="${resources2}/css/custom.css" />

<script type='text/javascript' src='${resources2}/js/jquery-1.12.1.min.js'></script>
<script type='text/javascript' src='${resources2}/js/jquery.tabify.js'></script>
<script type='text/javascript' crossorigin="anonymous" src="${resources2}/bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
<script type='text/javascript' src='${resources2}/js/site.js'></script>
<!--[if IE]><script type="text/javascript" src="${resources2}/js/ie.js"></script><![endif]-->
<c:set var="yearArray" value="${years}" />
<c:set var="yearLength" value="${fn:length(yearArray)}"/>
<c:set var="volumeArray" value="${volumes}"/>
<c:set var="featureArray" value="${features}"/>
<c:set var="featureLength" value="${fn:length(featureArray)}"/>
<c:set var="latestArray" value="${latest}"/>
<c:set var="latestLength" value="${fn:length(latestArray)}"/>