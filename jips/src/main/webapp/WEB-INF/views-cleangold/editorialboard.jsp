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
				<h2 class="title"><i class="fa fa-angle-double-right"></i> Editorial Board</h2>
				<p style="text-align:justify">
					Most of the advisory board members are renowned scholars and editorial members of prominent international journals. The KIPS is devoted to improving the cultural diversity and geographical coverage of the editorial board; a number of members are renowned international figures as well as opinion leaders with a high personal impact factor. Using the experience they have acquired serving other renowned international journals, they actively shape and decide the ways as required to recruit high-quality papers.
				</p>
				<br/>

				<h3>
					<i class="fa fa-bookmark-o"></i><span id="title_name"> EDITOR-IN-CHIEFS</span>
				</h3>

				<p style="text-align:justify">
					<span>
						<strong>Jong Hyuk Park (Leading Editor)</strong>, Seoul National University of Science and Technology, Korea<br/>
						<strong>Vincenzo Loia</strong>, University of Salerno, Italy<br/>
					</span>
				</p>
				<br/>

				<h3>
					<i class="fa fa-bookmark-o"></i><span id="title_name"> EXECUTIVE EDITORS</span>
				</h3>

				<p style="text-align:justify">
					<span>
						<strong>Doo-Soon Park</strong>, Soonchunhyang University, Korea<br/>
						<strong>Hamid R. Arabnia </strong>, The University of Georgia, USA <br/>
						<strong>Young-Sik Jeong</strong>, Dongguk University, Korea<br/>

					</span>
				</p>
				<br/>


				<h3>
					<i class="fa fa-bookmark-o"></i><span id="title_name"> ADVISORY EDITORS</span>
				</h3>

				<p style="text-align:justify">
					<span>
						<strong>Han-Chieh Chao</strong>, National Ilan University, Taiwan<br/>
						<strong>Javier Lopez</strong>, University of Malaga, Spain<br/>
						<strong>Jianhua Ma</strong>, Hosei University, Japan<br/>
						<strong>Jiannong Cao</strong>, The Hong Kong Polytechnic University, Hong Kong<br/>
						<strong>Laurence T. Yang</strong>, St. Francis Xavier University, Canada<br/>
						<strong>Mohammad S. Obaidat</strong>, Fordham University, USA<br/>
						<strong>Mo-Yuen Chow</strong>, North Carolina State University, USA<br/>
						<strong>Qun Jin</strong>, Waseda University, Japan<br/>
						<strong>Victor Leung</strong>,The University of British Columbia, Canada <br/>
						<strong>Witold Pedrycz   </strong>, University of Alberta, Canada<br/>
						<strong>Yang Xiao</strong>,The University of Alabama, USA<br/>
					</span>
				</p>
				<br/>

				<h3>
					<i class="fa fa-bookmark-o"></i><span id="title_name"> MANAGING EDITOR</span>
				</h3>

				<p style="text-align:justify">
					<span>
						<strong>Gangman Yi</strong>, Dongguk University, Korea<br/>
						<strong>Neil Y. Yen</strong>, The University of Aizu, Japan<br/>
						<!--Youn-Hee Han, Korea University of Technology and Education, Korea<br/>-->
					</span>
				</p>
				<br/>

				<h3>
					<i class="fa fa-bookmark-o"></i><span id="title_name"> SENIOR EDITORS</span>
				</h3>

				<p style="text-align:justify">
					<span>
						<strong>Houcine Hassan</strong>, Universitat Politecnica de Valencia, Spain <br/>
						<strong>Ka Lok Man</strong>, Xi'an Jiaotong-Liverpool University, China <br/>
						<strong>Kim-Kwang Raymond Choo</strong>,The University of Texas at San Antonio, USA <br/>
						<strong>Luis Javier Garcia Villalba</strong>, Universidad Complutense de Madrid, Spain<br/>
						<strong>Muhammad Khurram Khan</strong>, King Saud University, Kingdom of Saudi Arabia<br/>
						<strong>Muhammad Younas</strong>, Oxford Brookes University, UK <br/>
						<strong>Naveen Chilamkurti</strong>, La Trobe University, Australia<br/>
						<strong>Stefanos Gritzalis </strong>, University of the Aegean, Greece<br/>
						<strong>Youn-Hee Han</strong>, Korea University of Technology and Education, Korea<br/>
					</span>
				</p>
				<br/>

				<h3>
					<i class="fa fa-bookmark-o"></i><span id="title_name"> ASSOCIATE EDITORS</span>
				</h3>

				<p style="text-align:justify">
					<span>
						<strong>Abderrezak Rachedi</strong>, University Paris Est, France <br/>
						<strong>Afrand Agah</strong>, West Chester University of Pennsylvania, USA<br/>
						<strong>Ah Young Lee</strong>, University of South Dakota, USA<br/>
						<strong>Ali Shahrabi</strong>, Glasgow Caledonian University, UK <br/>
						<strong>Ana Nieto Jiménez </strong>, University of Malaga, Spain<br/>
						<strong>Aniello Castiglione	</strong>, University of Salerno, Italy<br/>
						<strong>Arun Kumar Sangaiah</strong>, VIT University, India<br/>
						<strong>Aziz Nasridinov</strong>, Chungbuk National University, Korea<br/>
						<strong>BASIT SHAHZAD</strong>, King Saud University, Saudi Arabia<br/>
						<strong>BeomSeok Kim</strong>, Changshin University, Korea<br/>
						<strong>Byeong-Seok Shin</strong>, Inha University, Korea<br/>
						<strong>Byoung-Soo Koh</strong>, DigiCAP Co., Ltd, Korea<br/>
						<strong>Byoungwook Kim</strong>, Korea University, Korea<br/>
						<strong>Chang Won Jeong</strong>, Wonkwang University, Korea<br/>
						<strong>Changsun Shin</strong>, Sunchon University, Korea<br/>
						<strong>CHAO TAN</strong>, Tianjin University, China<br/>
						<strong>Chen Liu</strong>, Clarkson University, USA<br/>
						<strong>Ching-Hsien Hsu</strong>, Chung Hua University, Taiwan<br/>
						<strong>Christian Esposito</strong>, University of Salerno, Italy<br/>
						<strong>Chulyun Kim</strong>, Gachon University, Korea<br/>
						<strong>Daewon Lee</strong>, SeoKyeong University, Korea<br/>
						<strong>Danda B. Rawat</strong>, Howard University, USA<br/>
						<strong>Daniel Bo-Wei Chen</strong>, Monash University Sunway Campus, Australia<br/>
						<strong>Deok Gyu Lee</strong>, Seowon University, Korea <br/>
						<strong>Doosung Hwang</strong>, Dankook University, Korea<br/>
						<strong>Enrique Herrera-Viedma</strong>, University of Granada, Spain <br/>
						<strong>Eunmi Choi</strong>, Kookmin University, Korea<br/>
						<strong>Eun-ser Lee</strong>, Andong National University, Korea<br/>
						<strong>Eunyoung Lee</strong>, Dongduk Women's University, Korea<br/>
						<strong>Fei Hao</strong>, Shaanxi Normal University, China<br/>
						<strong>Giuseppe De Pietro</strong>, Temple University, USA<br/>
						<strong>Goo-Rak Kwon</strong>, Chosun University, Korea<br/>
						<strong>Hae-Yeoun Lee </strong>, Kumoh National Institute of Technology, Korea<br/>
						<strong>Hang-Bae Chang</strong>, Chung-Ang University, Korea<br/>
						<strong>Heewan Park</strong>, Halla University, Korea<br/>
						<strong>HOUBING SONG</strong>, West Virginia University, USA<br/>
						<strong>HwaMin Lee </strong>, Soonchunhyang University, Korea<br/>
						<strong>Imad Saleh</strong>, University of Paris 8, France<br/>
						<strong>Incheon Paik</strong>, University of Aizu, Japan<br/>
						<strong>JAD NASREDDINE</strong>, Rafik Hariri University Mechref, Lebanon<br/>
						<strong>Jaehyun Lim</strong>, Kongju National University, Korea<br/>
						<strong>Jaya Thomas</strong>, National Institute of Technology Delhi, India.<br/>
						<strong>Jeonghun Cho</strong>, Kyungpook National University, Korea<br/>
						<strong>JIANBIN QIU</strong>, Harbin Institute of Technology, China<br/>
						<strong>Jin Kwak</strong>, Ajou University, Korea<br/>
						<strong>Jong-Myon Kim</strong>, University of Ulsan, Korea<br/>
						<strong>Joon-Min Gil</strong>, Catholic University of Daegu, Korea<br/>
						<strong>Jungho Kang  </strong>, Soongsil University, Korea<br/>
						<strong>JUNG-MIN PARK</strong>, Korea Institute of Science and Technology, Korea<br/>
						<strong>Jung-Won Lee</strong>, Ajou University, Korea<br/>
						<strong>Jun-Ho Huh</strong>, Catholic University of Pusan, Korea<br/>
						<strong>Ki Yong Lee</strong>, Sookmyung Women's University, Korea<br/>
						<strong>Kim Seong Jin</strong>, TESTIAN, Korea<br/>
						<strong>Kwang Sik Chung </strong>, Korea National Open University, Korea<br/>
						<strong>Kwang-il Hwang</strong>, Incheon National University, Korea<br/>
						<strong>Kwangman Ko </strong>, Sangji University, Korea<br/>
						<strong>Kwangmoon Cho</strong>, Mokpo University, Korea<br/>
						<strong>Kyungbaek Kim</strong>, Chonnam National University, Korea<br/>
						<strong>KyungOh Lee</strong>, Sunmmon University, Korea<br/>
						<strong>Lam-for Kwok</strong>, City University of Hong Kong, Hong Kong<br/>
						<strong>LEANDROS MAGLARAS</strong>, De Montfort University, UK<br/>
						<strong>LIANG YANG</strong>, GuanDong University of Technology, China<br/>
						<strong>LIANGTIAN WAN</strong>, Nanyang Technological University, Singapore<br/>
						<strong>Mahua Bhattacharya</strong>, MHRD, Government of India, India<br/>
						<strong>Mehran Asadi</strong>, The Lincoln University, USA<br/>
						<strong>Mikael Gidlund</strong>, Mid Sweden University, Sweden <br/>
						<strong>Milan Markovic</strong>, <br/>
						<strong>Min Choi</strong>, Chungbuk National University, Korea<br/>
						<strong>Ming Li</strong>, California State University, Fresno, USA<br/>
						<strong>Min-Hyung Choi</strong>, University of Colorado at Denver, USA<br/>
						<strong>Minwoo Jung</strong>, Gyeongbuk Institute of IT Convergence Industry Technology, Korea<br/>
						<strong>Mu-Yen Chen</strong>, National Taichung University of Science and Technology, Taiwan<br/>
						<strong>Nam-Mee Moon</strong>, Hoseo University, Korea<br/>
						<strong>Neungsoo Park</strong>, Konkuk University, Korea<br/>
						<strong>Odej Kao</strong>, Technische Universität Berlin, Germany<br/>
						<strong>PADMANABH THAKUR</strong>, Graphic Era University, India<br/>
						<strong>Pinaki Ghosh</strong>, Mody University of Science and Technology, India<br/>
						<strong>Ping-Feng Pai</strong>, National Chi Nan University, Taiwan<br/>
						<strong>Q. Shi</strong>, Liverpool John Moores University, UK<br/>
						<strong>Raghavendra S</strong>, Xemplify Teconology Labs, India<br/>
						<strong>Ruizhu Huang</strong>, The University of Texas at Austin, USA<br/>
						<strong>Samadhiya Durgesh</strong>, National Applied Research Laboratories, Taiwan<br/>
						<strong>Sanghoon Kim</strong>, Hankyong National University, Korea<br/>
						<strong>Sayed Chhattan Shah</strong>, Hankuk University of Foreign Studies Korea, Korea<br/>
						<strong>Sechang Oh</strong>, Sejong Cyber University, Korea<br/>
						<strong>Seokhong Min</strong>, SystemBank, Korea<br/>
						<strong>Seokhoon Kim</strong>, Soonchunhyang University, Korea<br/>
						<strong>Seung-Ho Lim</strong>, Hankuk University of Foreign Studies, Korea<br/>
						<strong>Seung-Won Jung</strong>, Dongguk University, Korea<br/>
						<strong>Shanmugasundaram Hariharan</strong>, Veltech Dr.RR & Dr.SR University, India<br/>
						<strong>Sherali Zeadally</strong>, University of Kentucky, USA<br/>
						<strong>Simon Fong</strong>, University of Macau, Macau<br/>
						<strong>Soo-Kyun Kim</strong>, Pai Chai University, Korea<br/>
						<strong>Soon Ae Chun</strong>, City University of New York, USA<br/>
						<strong>Soyoung Park</strong>, Konkuk University, Korea<br/>
						<strong>Sungsuk Kim</strong>, SeoKyeong University, Korea<br/>
						<strong>Taeshik Shon</strong>, Ajou University, Korea<br/>
						<strong>Toshiyuki Kamada</strong>, Aichi University of Education<br/>
						<strong>Trung Duong</strong>, Rutgers University, USA  <br/>
						<strong>Wen-Chi Hou</strong>, Southern Illinois University, USA<br/>
						<strong>XIAOJIE SU</strong>, Chongqing University, China<br/>
						<strong>YIN ZHANG</strong>, Zhongnan University of Economics and Law, China<br/>
						<strong>Yoo-Joo Choi</strong>, Seoul Media Institute of Technology, Korea<br/>
						<strong>YUDONG ZHANG</strong>, Nanjing Normal University, China<br/>
						<strong>Yun-Seok LEE</strong>, LK Smart Co., Ltd.<br/>
						<strong>Yunsick Sung </strong>, Keimyung University, Korea<br/>
						<strong>Yunsik Son</strong>, Dongguk University, Korea<br/>
						<strong>Yunyoung Nam</strong>, Soonchunhyang University, Korea<br/>
						<strong>Zeeshan Kaleem</strong>, COMSATS Institute of Information Technology, Pakistan<br/>
					</span>
				</p>
				<br/>

				<h3>
					<i class="fa fa-bookmark-o"></i><span id="title_name"> JOURNAL SECRETARY</span>
				</h3>
					<span>
						<strong>Jaehwa Chung</strong>, Korea National Open University, Korea<br/>
					</span>
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