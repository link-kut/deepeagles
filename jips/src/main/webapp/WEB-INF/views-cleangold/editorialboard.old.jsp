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
						<strong>Jong Hyuk Park</strong>, Seoul National University of Science and Technology, Korea<br/>
						<strong>Mohammad S. Obaidat</strong> (Fellow of IEEE and Fellow of SCS), Fordham University, USA
						<strong>Young-Sik Jeong</strong>, Dongguk University, Korea<br/>
					</span>
				</p>
				<br/>

				<h3>
					<i class="fa fa-bookmark-o"></i><span id="title_name"> ADVISORY EDITORS</span>
				</h3>

				<p style="text-align:justify">
					<span>
						<strong>Doo-Soon Park</strong>, Soonchunhyang University, Korea<br/>
						<strong>Bart Preneel</strong>, Katholieke Universiteit Leuven, Belgium<br/>
						<strong>Habib F. Rashvand</strong>, University of Warwick, UK<br/>
						<strong>Hamid R. Arabnia</strong>, The University of Georgia, USA<br/>
						<strong>Han-Chieh Chao</strong>, National Ilan University, Taiwan<br/>
						<strong>Hung-Chang Hsiao</strong>, National Cheng Kung University, Taiwan<br/>
						<strong>Javier Lopez</strong>, University of Malaga, Spain<br/>
						<strong>Jeong-Bae Lee</strong>, Sunmoon University, Korea<br/>
						<strong>Jiannong Cao</strong>, The Hong Kong Polytechnic University, Hong Kong<br/>
						<strong>Laurence T. Yang</strong>, St. Francis Xavier University, Canada<br/>
						<strong>Minyi Guo</strong>, Shanghai Jiao Tong University, China<br/>
						<strong>Witold Pedrycz</strong>, University of Alberta Canada<br/>
					</span>
				</p>
				<br/>

				<h3>
					<i class="fa fa-bookmark-o"></i><span id="title_name"> MANAGING EDITOR</span>
				</h3>

				<p style="text-align:justify">
					<span>
						<strong>Gangman Yi</strong>, Gangneung-Wonju National University, Korea<br/>
						<!--Youn-Hee Han, Korea University of Technology and Education, Korea<br/>-->
					</span>
				</p>
				<br/>

				<h3>
					<i class="fa fa-bookmark-o"></i><span id="title_name"> TECHNICAL EDITOR</span>
				</h3>

				<p style="text-align:justify">
					<span>
						<strong>Youn-Hee Han</strong>, Korea University of Technology and Education, Korea
					</span>
				</p>
				<br/>

				<h3>
					<i class="fa fa-bookmark-o"></i><span id="title_name"> MANUSCRIPT EDITOR</span>
				</h3>

				<p style="text-align:justify">
					<span>
						<strong>Min Hong</strong>, Soonchunhyang University, Korea
					</span>
				</p>
				<br/>

				<h3>
					<i class="fa fa-bookmark-o"></i><span id="title_name"> ASSOCIATE EDITORS - DIVISION A</span>
				</h3>

				<p style="text-align:justify">
					<span>
						<strong>Aviral Shrivastava</strong>, Arizona State University, USA<br/>
						<strong>Min Choi</strong>, Chungbuk University, Korea
					</span>
				</p>
				<br/>

				<h3>
					<i class="fa fa-bookmark-o"></i><span id="title_name"> EDITORIAL BOARD - DIVISION A</span>
				</h3>

				<p style="text-align:justify">
					<span>
						<strong>Ben Lee</strong>, Oregon State University, USA<br/>
						<strong>Chen Liu</strong>, Clarkson University, USA<br/>
						<strong>Ching-Hsien Hsu</strong>, Chung Hua University, Taiwan<br/>
						<strong>Euisin Lee</strong>, Chungbuk University, Korea<br/>
						<strong>Eunmi Choi</strong>, Kookmin University, Korea<br/>
						<strong>Gil Sik Lee</strong>, The University of Texas at Dallas, USA<br/>
						<strong>Hae-Yeoun Lee</strong>, Kumoh National Institute of Technology, Korea<br/>
						<strong>Jangho Lee</strong>, Hongik University, Korea<br/>
						<strong>Jeonghun Cho</strong>, Kyungpook National University, Korea<br/>
						<strong>Jeong-Hyon Hwang</strong>, State University of NewYork at Albany, USA<br/>
						<strong>Jongeun Lee</strong>, Ulsan National Institute of Science and Technology, Korea<br/>
						<strong>Jong-Myon Kim</strong>, University of Ulsan, Korea<br/>
						<strong>JooSang Youn</strong>, DongEui University, Korea<br/>
						<strong>Jung-Won Lee</strong>, Ajou University, Korea<br/>
						<strong>Kuan-Ching Li</strong>, Providence University, Taiwan<br/>
						<strong>Neungsoo Park</strong>, Konkuk University, Korea<br/>
						<strong>Seong-Moo Yoo</strong>, University of Alabama, USA<br/>
						<strong>Seung-Ho Lim</strong>, Hankuk University of Foreign Studies, Korea<br/>
						<strong>Sung Woo Chung</strong>, Korea University, Korea<br/>
						<strong>Taeweon Suh</strong>, Korea University, Korea<br/>
						<strong>Won Woo Ro</strong>, Yonsei University, Korea<br/>
						<strong>Wonyoung Jeong</strong>, Wonkwang University, Korea<br/>
						<strong>Yoon Sok Park</strong>, Samsung Electro-Mechanics, Korea<br/>
						<strong>Yunheung Paek</strong>, Seoul National University, Korea<br/>
					</span>
				</p>
				<br/>

				<h3>
					<i class="fa fa-bookmark-o"></i><span id="title_name"> ASSOCIATE EDITORS - DIVISION B</span>
				</h3>
				<p style="text-align:justify">
					<span>
						<strong>Hongli Luo</strong>, Indiana University, USA<br/>
						<strong>Seung-Won Jung</strong>, Dongguk University, Korea<br/>
						<!--Eunyoung Lee, Dongduk Women's University, Korea<br/>-->
					</span>
				</p>
				<br/>

				<h3>
					<i class="fa fa-bookmark-o"></i><span id="title_name"> EDITORIAL BOARD - DIVISION B</span>
				</h3>
				<p style="text-align:justify">
					<span>
						<strong>Bhekisipho Twala</strong>, University of Johannesburg, South Africa<br/>
						<strong>Byung-Gyu Kim</strong>, SunMoon University, Korea<br/>
						<strong>Dong Il Shin</strong>, Sejong University, Korea<br/>
						<strong>Dongho Kim</strong>, Soongsil University, Korea<br/>
						<strong>Doosung Hwang</strong>, Dankook University, Korea<br/>
						<strong>Eunyoung Lee</strong>, Dongduk Women's University, Korea<br/>
						<strong>Goo-Rak Kwon</strong>, Chosun University, Korea<br/>
						<strong>Gopal Gupta</strong>, University of Texas, Dallas, USA<br/>
						<strong>Hae Gill Choi</strong>, Sejong Cyber University, Korea<br/>
						<strong>Hang-Bae Chang</strong>, Sangmyung University, Korea<br/>
						<strong>Hari Kalva</strong>, Florida Atlantic University, USA<br/>
						<strong>Henri hudrisier</strong>, University Paris 8,  France<br/>
						<strong>Kang-Sun Choi</strong>, Korea University of Techonology and Education, Korea<br/>
						<strong>Kuniaki Uehara</strong>, Kobe University, Japan<br/>
						<strong>Kyong-Ho Lee</strong>, Yonsei University, Korea<br/>
						<strong>Kyungeun Cho</strong>, Dongguk University, Korea<br/>
						<strong>Mei-Ling Shyu</strong>, University of Miami, USA<br/>
						<strong>Min Chen</strong>, Seoul National University, Korea<br/>
						<strong>Min-Hyung Choi</strong>, University of Colorado at Denver, USA<br/>
						<strong>Mohamed Ally</strong>, Athabasca University, Canada<br/>
						<strong>Ouk Choi</strong>, Incheon National University, Korea<br/>
						<strong>Sanghoon Kim</strong>, Hankyong National University, Korea<br/>
						<strong>Sankar Kumar Pal</strong>, Indian Statistical Institute, India <br/>
						<strong>Seungmin Rho</strong>, Sungkyul University, Korea<br/>
						<strong>Shin Byeong Seok</strong>, Inha University, Korea<br/>
						<strong>Shu-Ching Chen</strong>, Florida International University, USA<br/>
						<strong>Soo-Kyun Kim</strong>, PaiChai University, Korea<br/>
						<strong>Sungsuk Kim</strong>, SeoKyeong University, Korea<br/>
						<strong>Taegeun Kim</strong>, Sejong University, Korea<br/>
						<strong>Wanquan Liu</strong>, Curtin University, Australia<br/>
						<strong>Yoo-Joo Choi</strong>, Seoul Media Institute of Technology, Korea<br/>
						<strong>Yongik Yoon</strong>, Sookmyung Women's University, Korea<br/>
						<strong>Yunsick Sung</strong>, Keimyung University, Korea<br/>
						<strong>Zhiwen Yu</strong>, Northwestern Polytechnical University, China<br/>
					</span>
				</p>
				<br/>

				<h3>
					<i class="fa fa-bookmark-o"></i><span id="title_name"> ASSOCIATE EDITORS - DIVISION C</span>
				</h3>
				<p style="text-align:justify">
					<span>
						<strong>Ning Zhang</strong>, University of Manchester, UK<br/>
						<strong>Kwang-il Hwang</strong>, Incheon National University, Korea<br/>
					</span>
				</p>
				<br/>

				<h3>
					<i class="fa fa-bookmark-o"></i><span id="title_name"> EDITORIAL BOARD - DIVISION C</span>
				</h3>
				<p style="text-align:justify">
					<span>
						<strong>Abhishek Roy</strong>, St.Xavier's College, India<br/>
						<strong>Ah Young Lee</strong>, Georgia Institute of Technology, USA<br/>
						<strong>Ali Shahrabi</strong>, Glasgow Caledonian University, UK<br/>
						<strong>Basel Alawieh</strong>, Alcatel-Lucent, Canada<br/>
						<strong>Bo-Chao Cheng</strong>, National Chung-Cheng University, Taiwan<br/>
						<strong>Bok-Min Goi</strong>, Universiti Tunku Abdul Rahman, Malaysia<br/>
						<strong>Byoung-Soo Koh</strong>, DigiCAP Co., Ltd,  Korea<br/>
						<strong>Changhoon Lee</strong>, Seoul National University of Science and Technology, Korea<br/>
						<strong>Daewon Lee</strong>, SeoKyeong University, Korea<br/>
						<strong>Deok Gyu Lee</strong>, Seowon University, Korea<br/>
						<strong>Deqing Zou</strong>, Huazhong University of Science & Technology, China<br/>
						<strong>Do-Hyeun Kim</strong>, Jeju National University<br/>
						<strong>Gautham SeKar</strong>, Indian Statistical Institute, India<br/>
						<strong>Gwanggil Jeon</strong>, Incheon National University, Korea<br/>
						<strong>Hsiao-Chun Wu</strong>, Louisiana State University, USA<br/>
						<strong>Irfan Awan</strong>, University of Bradford, UK<br/>
						<strong>Jaeho Lee</strong>, Seowon University, Korea<br/>
						<strong>Jin Kwak</strong>, Ajou University, Korea<br/>
						<strong>Jin-Hee Cho</strong>, U.S. Army Research Laboratory, USA<br/>
						<strong>Jinho Yoo</strong>, Sangmyung University, Korea<br/>
						<strong>Ji young Lim</strong>, Korean Bible University, Korea<br/>
						<strong>Jongmoo Choi</strong>, Dankook University, Korea<br/>
						<strong>Jongsung Kim</strong>, Kyungnam University, Korea<br/>
						<strong>Jun beom Hur</strong>, Korea University, Korea<br/>
						<strong>Joongheon Kim</strong>, Intel Corporation, USA<br/>
						<strong>Jungho Kang</strong>, Soongsil University, Korea<br/>
						<strong>Keun-Ho Lee</strong>, BaekSeok University, Korea<br/>
						<strong>Ki Seok Bang</strong>, Hallym University, Korea<br/>
						<strong>Mihui Kim</strong>, Hankyong National University, Korea<br/>
						<strong>Mi-Jung Choi</strong>, Kangwon National University, Korea<br/>
						<strong>Milan Markovic</strong>, Banca Intesa ad Beograd, Serbia<br/>
						<strong>Ming Li</strong>, California State University, Fresno, USA<br/>
						<strong>Niki Pissinou</strong>, Florida International University, USA<br/>
						<strong>Omaima Bamasak</strong>, King Abdulaziz University, Saudi Arabia<br/>
						<strong>Pei-Jung Chung</strong>, University of Edinburgh, UK <br/>
						<strong>Pinaki Ghosh</strong>, Atmiya Institute of Technology & Science, India<br/>
						<strong>Q. Shi</strong>, Liverpool John Moores University, UK<br/>
						<strong>Sang-Soo Yeo</strong>, Mokwon University, Korea<br/>
						<strong>Seng W. Loke</strong>, La Trobe University, Australia<br/>
						<strong>Stefanos Gritzalis</strong>, University of the Aegean, Greece<br/>
						<strong>Sung-Ki Kim</strong>, SunMoon University, Korea<br/>
						<strong>Taeshik Shon</strong>,	Ajou University, Korea<br/>
						<strong>Toshihiro Yamauchi</strong>, Okayama University, Japan<br/>
						<strong>Yunho Jung</strong>, Korea Aerospace University, Korea<br/>
					</span>
				</p>
				<br/>

				<h3>
					<i class="fa fa-bookmark-o"></i><span id="title_name"> ASSOCIATE EDITORS - DIVISION D</span>
				</h3>
				<p style="text-align:justify">
					<span>
						<strong>Shanmugasundaram Hariharan</strong>, TRP Engineering College (SRM Group), India<br/>
						<strong>Joon-Min Gil</strong>, Catholic University of Daegu, Korea<br/>
					</span>
				</p>
				<br/>

				<h3>
					<i class="fa fa-bookmark-o"></i><span id="title_name"> EDITORIAL BOARD - DIVISION D</span>
				</h3>

				<p style="text-align:justify">
					<span>
						<strong>Aziz Nasridinov</strong>, Chungbuk National University, Korea<br/>
						<strong>Changsun Shin</strong>, Sunchon University, Korea<br/>
						<strong>Chan-Yeol Park</strong>, KISTI Supercomputer Center, Korea<br/>
						<strong>Christian M. Stracke</strong>, University of Duisburg-Essen, Germany<br/>
						<strong>Chulyun Kim</strong>, Gachon University, Korea<br/>
						<strong>Eun-Ha Song</strong>, Wonkwang University, Korea<br/>
						<strong>Eun-ser Lee</strong>, Andong University, Korea<br/>
						<strong>Giuseppe De Pietro</strong>, ICAR-CNR, Italy<br/>
						<strong>Heonchang Yu</strong>, Korea University, Korea<br/>
						<strong>HwaMin Lee</strong>, Soonchunhyang University, Korea<br/>
						<strong>Hwayoung Jeong</strong>, Kyunghee University, Korea<br/>
						<strong>Hyeoncheol Kim</strong>, Korea University, Korea<br/>
						<strong>Ibrahim Kamel</strong>, University of Sharjah, UAE<br/>
						<strong>Imad Saleh</strong>, University of Paris 8, France<br/>
						<strong>Incheon Paik</strong>, University of Aizu, Japan<br/>
						<strong>Jaehwa Chung</strong>, Korea National Open University, Korea<br/>
						<strong>Jaewoo Kang</strong>, Korea University, Korea<br/>
						<strong>Jeong-Joon Lee</strong>, Korea Polytechnic University, Korea<br/>
						<strong>Jiann-Liang Chen</strong>, National Taiwan University of Science & technology, Taiwan<br/>
						<strong>Jin Gon Shon</strong>, Korea National Open University, Korea<br/>
						<strong>Jinsul Kim</strong>, Chonnam National University, Korea<br/>
						<strong>Jung Lee</strong>, Hallym University, Korea<br/>
						<strong>JungMin Kim</strong>, DaeJin University, Korea<br/>
						<strong>Kyungbaek Kim</strong>, Chonnam National University, Korea<br/>
						<strong>Kenji Hirata</strong>, Toyo University, Japan <br/>
						<strong>Kibum Kim</strong>, Applied Research Center, Motorola, USA<br/>
						<strong>Ki-hoon Lee</strong>, Kwangwoon University, Korea<br/>
						<strong>Ki-Sik Kong</strong>, Namseoul University, Korea<br/>
						<strong>Ki Yong Lee</strong>, Sookmyung Women's University, Korea<br/>
						<strong>Kiyoshi Nakabayashi</strong>, The Open University of Japan, Japan<br/>
						<strong>Kwang Sik Chung</strong>, Korea National Open University, Korea<br/>
						<strong>Kwangjin Park</strong>, Wonkwang University, Korea<br/>
						<strong>Kwangmoon Cho</strong>, Mokpo University, Korea<br/>
						<strong>KyungOh Lee</strong>, Sunmoon University, Korea<br/>
						<strong>Lam-for Kwok</strong>, City University of Hong Kong, Hong Kong<br/>
						<strong>Marc Lacoste</strong>, France Telecom Division R&D, France<br/>
						<strong>Mounir Mokhtari</strong>, INT/GET, France<br/>
						<strong>Nam-Mee Moon</strong>, Hoseo University, Korea<br/>
						<strong>Ping-Feng Pai</strong>, Nation Chi Nan University, Taiwan<br/>
						<strong>Samadhiya Durgesh</strong>, Chung Hua University, Taiwan<br/>
						<strong>Simon Fong</strong>, University of Macau, Macau<br/>
						<strong>Soon Ae Chun</strong>, City University of New York, USA<br/>
						<strong>SoonYoung Jung</strong>, Korea University, Korea<br/>
						<strong>Susumu Kanemune</strong>, Osaka Electro-Communication University, Japan<br/>
						<strong>Toshiyuki Kamada</strong>, Aichi University of Education, Japan<br/>
						<strong>Wen-Chi Hou</strong>, Southern Illinois University. USA<br/>
						<strong>WonGyu Lee</strong>, Korea University, Korea<br/>
						<strong>Woong-Kee Loh</strong>, Gachon University, Korea<br/>
						<strong>Yong Kim</strong>, Korea National Open University, Korea<br/>
						<strong>Young Hee Kim</strong>, Korea Copyright Commission, Korea<br/>
						<strong>Young-Ho Park</strong>, Sookmyung Women's University, Korea<br/>
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