<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page pageEncoding="utf-8" %>
<%@ page contentType="text/html;charset=utf-8" language="java" %>


<!doctype html>
<!--[if IE 8 ]> <html class="no-js loading ie8 oldie" dir="ltr" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html class="no-js loading" dir="ltr" lang="en-US"> <!--<![endif]-->

<head>
    <meta charset="utf-8">
    <style>
        html,body {
            font-family: "Nanum Gothic", sans-serif; !important;
        }
    </style>

    <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
    <script src="https://www.amcharts.com/lib/3/pie.js"></script>       <!-- 그래프 : 파이 -->
    <script src="https://www.amcharts.com/lib/3/serial.js"></script>    <!-- 그래프 : 직선 -->
    <script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
    <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>

    <%@ include file="/WEB-INF/views-cleangold/include/head.jsp" %>
    <link rel="stylesheet" href="webapp/resources-cleangold/css/custom.css?ver=1">
    <link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css">
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
</head>
<body>
    <div class="row" style="height:160px;"><!--상단 메뉴창 출력 -->
        <%@ include file="/WEB-INF/views-cleangold/include/header.jsp" %>
    </div>

    <section class="container" style="height:400px">
        <img src="${resources2}/img/jips/bar1.png"width="100%" style="margin-left: auto; margin-right: auto; display: block;">
        <h4>
            해당 프로젝트는 'Machine Learning'을 통해, 야구의 승부결과를 보다 더 정확히 예측하는 것을 목표로 함.
        </h4>
    </section>

    <section class="container" style="height:600px">
        <img src="${resources2}/img/jips/bar2.png" width="100%" style="margin-left: auto; margin-right: auto; display: block;">
        <br/>
        <div class="row" style="height:300px;">
            <section class="container">
                <h4 class="align_center"><strong>Machine Learning Members</strong></h4><br/>
                <div>
                    <div class="col-md-4"><img src="${resources2}/img/jips/face002.png" style="margin-left:200px;" width="50%"></div>
                    <div class="col-md-4"><img src="${resources2}/img/jips/face001.png" style="margin-left:100px;" width="50%"></div>
                    <div class="col-md-4"><img src="${resources2}/img/jips/face0004.png" style="margin-left:20px;" width="50%"></div>
                </div>

            </section>

        </div>
        <div class="row" style="height:300px;">
            <section class="container">
                <h4 class="align_center"><strong>Front/Back-End Members</strong></h4><br/>
                <div>
                    <div class="col-md-6"><img src="${resources2}/img/jips/face1.png" style="margin-left:300px;" width="30%"></div>
                    <div class="col-md-6"><img src="${resources2}/img/jips/face004.png" style="margin-left:80px;" width="30%"></div>
                </div>
            </section>
        </div>
    </section>


    <%@ include file="/WEB-INF/views-cleangold/include/footer.jsp" %>
</body>
</html>
