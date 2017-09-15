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

    <section class="container" style=" height:auto;">
        <img src="${resources2}/img/jips/bar1.png"width="100%" style="margin-left: auto; margin-right: auto; display: block;">
        <br/>
        <div class="row" id="font_style" style="padding-left: 250px; width: 80%; font-size: 15px;">최근 딥러닝(Deep-learning) 을 활용한 기상 예측, 심리 예측, 교통상황 예측 등 다양한 분야에 걸쳐 여러 모델의 인공신경망이 활용되고 있다.  여러 분류 중, 스포츠라는 분야에 접근했으며 더 나아가 데이터의 스포츠라고 일컫는 야구로 선정하였다. 야구의 승부는 선수의 능력치, 기상의 변화, 홈/어웨이 여부, 교체 여부 등 가늠할 수 없이 수많은 데이터들에 의존하고 있다. 인지하고 있는 이러한 수많은 데이터 이외의 무언가가 존재할 수도 있다. 하지만 본 연구에서는 지난 경기의 기록들을 바탕으로 그 다음 경기의 승부를 예측할 수 있는지를 실험한. 날짜 별 경기들이 훈련데이터가 되고 목표는 이전 경기들의 영향으로 예측된 다음 경기의 승/패, 즉 순차적인 데이터의 활용에 적합한 모델, RNN(Recurrent Neural-Network)으로 선정하였으며, 이를 통해 승/패를 예측할 수 있는지의 도전적인 연구를 실행하였다.
        </div>
        <br/><br/>

        <div class="row" style="padding-left: 250px; width: 80%; font-size: 15px; text-align: center">
            <h5 style="font-family: Nanum Gothic", sans-serif><strong>[Deeplearning model]</strong></h5>
        </div>
        <div>

            <img src="${resources2}/img/jips/rnnmodel.png"style=" position: relative; width : 500px; height: 300px; margin-left: auto; margin-right: auto; display: block;">
        </div>
        <div class="row" style="padding-left: 250px; width: 80%; font-size: 15px;">RNN모델에 경기별 기본기록들을 Feeding 시키는 그림을 나타내었습니다. DATA 페이지의 각 경기당 투수,타자 기록들의 총 42개는 RNN의 cell에 input이 되며 가중치와 편향이 계산되어집니다. 계산된 가중치와 편향은 다음 경기의 input의 계산에 반영되어지며 마지막의 36번째 경기가 feeding되고 계산되어지며 소프트맥스하기전의 값을 넘겨받게 됩니다. 그 값은 37번째 경기, 즉 미래의 경기에 대한 예측 값이며 승 무 패의 LABLE에 맵핑되게 됩니다.  </div>
        <br/><br/>

    </section>

    <section class="container" style="height:600px">
        <img src="${resources2}/img/jips/bar2.png" width="100%" style="margin-left: auto; margin-right: auto; display: block;">
        <br/>
        <div class="row" style="height:300px;">
            <section class="container">
                <!-- 분야 타이틀_1 -->
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
                <!-- 분야 타이틀_2 -->
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
