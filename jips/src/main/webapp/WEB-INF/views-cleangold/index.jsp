<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ page pageEncoding="utf-8" %>

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

    <%@ include file="/WEB-INF/views-cleangold/include/head.jsp" %>
    <link rel="stylesheet" href="webapp/resources-cleangold/css/custom.css?ver=1">
    <link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css">
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
</head>

<body>
    <%@ include file="/WEB-INF/views-cleangold/include/header.jsp" %>

<section class="gameboard container">
    <div class="col-md-3 boardpart" style="background-color: rgba( 0, 0, 0, 0.1 );"><!-- 좌측 공간 -->
        <div class="row toppart text_white align_center" style="padding-top : 20px"><!-- 좌측 상단 -->
            <strong><h3>지난 경기</h3></strong>
        </div>
        <div class="row middlepart"><!-- 좌측 가운데 -->
            <div class="row text_white" style="height:120px; padding-top: 100px;"><!-- 각 팀 이름, 로고 -->
                <div class="col-md-5 align_right">
                    <img src="/resources2/img/jips/team_initial/initials_eagles.png"/>
                    <h6>한화 이글스</h6>
                </div>
                <div class="col-md-2 align_center">
                    <img src="/resources2/img/jips/UI/h_game_vs.png"/>
                </div>
                <div class="col-md-5 align_left">
                    <img src="/resources2/img/jips/team_initial/initials_dinos.png"/>
                    <h6>NC 다이노스</h6>
                </div>
            </div><br/>
            <div class="row text_white align_center" style="padding-top:50px;"><!-- 각 팀 (예상)점수 -->
                <h5>예상결과 : 한화이글스 64%로 승리</h5>
                <h5>결과 : NC 다이노스의 승리</h5><br/>
            </div>
        </div>
        <div class="row bottompart text_white align_center"><!-- 좌측 하단 -->
            <h6>[대전], 2017-09-10(일) , [14:00]</h6>
        </div>
    </div>
    <div class="col-md-6 boardpart" style="background-color: rgba( 0, 0, 0, 0.3 );"><!-- 가운데 공간 -->
        <div class="row toppart align_center text_white" style="padding-top : 20px"><!-- 가운데 상단 -->
            <h4>오늘의 경기</h4>
            <%--<img src="/resources2/img/jips/ico_game_before.png"/>--%>
        </div>
        <div class="row middlepart text_white"><!-- 가운데 중단 -->
            <div class="row"><!-- 각 팀 이름, 로고 -->
                <div class="col-md-5 align_center" style="padding-left:30px; padding-bottom:30px;">
                    <img src="/resources2/img/jips/team_head/hh.png"/>
                    <h3>한화 이글스</h3>
                </div>
                <div class="col-md-2 align_center" style="padding-top:50px;">
                    <img src="resources2/img/jips/UI/h_game_live_vs.png"/>
                </div>
                <div class="col-md-5 align_center" style="padding-right:30px; padding-bottom:30px;">
                    <img src="/resources2/img/jips/team_head/ss.png"/>
                    <h3>삼성 라이온즈</h3>
                </div>
            </div>
            <div class="row text_white align_center"><!-- 각 팀 (예상)점수 -->
                <h3>한화이글스가 64% 확률로 승리!!</h3><br/>
                <h5>[ 표본채집기간 2017-07-15 ~ 2017-08-29 ] </h5>
            </div>
        </div>
        <div class="row bottompart align_center text_white" style="padding-top:20px"><!-- 가운데 하단 -->
            <!-- 경기날짜 및 경지장 위치 -->
            <h5>[대구], 2017-09-12(화) , [18:30]</h5>
        </div>
    </div>
    <div class="col-md-3 boardpart" style="background-color: rgba( 0, 0, 0, 0.1 );"><!-- 우측 공간 -->
        <div class="row toppart text_white align_center" style="padding-top : 20px"><!-- 우측 상단 -->
            <strong><h3>다음 경기</h3></strong>
        </div>
        <div class="row middlepart"><!-- 우측 중단 -->
            <div class="row text_white" style="height:120px; padding-top: 100px;"><!-- 각 팀 이름, 로고 -->
                <div class="col-md-5 align_right" >
                    <img src="/resources2/img/jips/team_initial/initials_eagles.png"/>
                    <h6>한화 이글스</h6>
                </div>
                <div class="col-md-2 align_center">
                    <img src="/resources2/img/jips/UI/h_game_vs.png"/>
                </div>
                <div class="col-md-5 align_left">
                    <img src="/resources2/img/jips/team_initial/initials_lions.png"/>
                    <h6>삼성 라이온즈</h6>
                </div>
            </div>
        </div>
        <div class="row bottompart text_white align_center"><!-- 우측 하단 -->
            <!-- 특별이벤트 존재시 기재 -->
            <h6>[대구], 2017-09-13(수) , [18:30]</h6>
        </div>
    </div>
</section>
    <br/>
<section class="container" >
    <div>
        <div class="col-md-6" style="height:auto; margin-bottom: 20px">
            <h4><strong style="padding-left: 20px;">[불꽃 REC.]</strong></h4>
            <!-- 재생목록재생 -->
            <object width="560" height="315" data ="https://www.youtube.com/embed?n-NyIEHpIhM&index=0&list=PLH13Vc2FtHHikliELagq_vqFhL1DGkiOQ"frameborder ="0" allowFullScreen> </object>
        </div>
        <div class="col-md-6" style="height:auto;">
            <h4><strong style="padding-left: 20px;">[불꽃 MOMENT]</strong></h4>
            <!-- 단일영상재생 -->
            <object width="560" height="315" data ="https://www.youtube.com/embed/SHCCFYOPHBY"frameborder ="0" allowFullScreen> </object>
            <%--<object width="560" height="315" data="https://www.youtube.com/embed/Gs069dndIYk" frameborder="0" allowfullscreen></object>--%>
        </div>
    </div>
</section>
<!-- footer -->
<%@ include file="/WEB-INF/views-cleangold/include/footer.jsp" %>
</body>
</html>