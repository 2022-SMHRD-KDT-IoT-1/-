<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Connect</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
</head>

<body id="page-top">
		<%
			MemberVO vo = (MemberVO) session.getAttribute("vo");
			
		%>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top"><img
				src="./assets/img/logo.png" alt="..." /></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars ms-1"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
					<li class="nav-item"><a class="nav-link" href="#services">측정값확인</a></li>
					<li class="nav-item"><a class="nav-link" href="#portfolio">관련뉴스</a></li>
					<li class="nav-item"><a class="nav-link" href="#about">제품소개</a></li>
					<li class="nav-item"><a class="nav-link" href="#">메뉴</a></li>
					<% if( vo == null){ %>
					<li class="nav-item"><a class="nav-link" href="Login.jsp">로그인</a></li>
					<% }else { %>
					<li class="nav-item"><a class="nav-link" href="#">개인정보수정</a></li>
					<li class="nav-item"><a class="nav-link" href="LogoutService">로그아웃</a></li>
					<% } %>
				</ul>
			</div>
		</div>

	</nav>
	<!-- Masthead-->
	<header class="masthead">

		<div class="container">
			<div class="text-center" id="services">
				<h2 class="section-heading text-uppercase">
				<% if( vo == null){ %>Service
				<%}else{ %> <%= vo.getMb_name() %> 님의 건강상태 입니다.<%} %></h2>
				<h3 class="section-subheading text-muted">Lorem ipsum dolor sit
					amet consectetur.</h3>
			</div>
			<div class="row text-center">
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fas fa-circle fa-stack-2x text-primary"></i> <i
						class="fas fa-lock fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="my-3">Heart Beat</h4>
					<p class="text-muted">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Minima maxime quam architecto quo inventore
						harum ex magni, dicta impedit.</p>
				</div>
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fas fa-circle fa-stack-2x text-primary"></i> <i
						class="fas fa-plus fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="my-3">Humidy</h4>
					<p class="text-muted">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Minima maxime quam architecto quo inventore
						harum ex magni, dicta impedit.</p>
				</div>
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fas fa-circle fa-stack-2x text-primary"></i> <i
						class="fas fa-twitter fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="my-3">Web Security</h4>
					<p class="text-muted">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Minima maxime quam architecto quo inventore
						harum ex magni, dicta impedit.</p>
				</div>
			</div>
		</div>
		<a class="btn btn-primary btn-xl text-uppercase" href="#">Our Main
			Service</a>
	</header>
	<!-- Services-->
	<section class="page-section">
		<div class="container">
			<div class="masthead-subheading">Welcome To Our Item!</div>
			<div class="masthead-heading text-uppercase">It's Nice To Meet
				You</div>
			<a class="btn btn-primary btn-xl text-uppercase" href="#">Our
				Main Service</a>
		</div>
	</section>
	<!-- Portfolio Grid-->
	<section class="page-section bg-light" id="portfolio">
		<div class="container">
			<div class="text-center">
				<h2 class="section-heading text-uppercase">News</h2>
				<h3 class="section-subheading text-muted">우리 제품에 관련된 뉴스들</h3>
			</div>
			<div class="row">
				<div class="col-lg-4 col-sm-6 mb-4">
					<!-- Portfolio item 1-->
					<div class="portfolio-item">
						<a class="portfolio-link" data-bs-toggle="modal"
							href="#portfolioModal1">
							<div class="portfolio-hover">
								<div class="portfolio-hover-content">
									<i class="fas fa-plus fa-3x"></i>
								</div>
							</div> <img class="img-fluid" src="assets/img/news/temperature.jpg" alt="temperatureImg" />
						</a>
						<div class="portfolio-caption">
							<div class="portfolio-caption-heading">코로나</div>
							<div class="portfolio-caption-subheading text-muted"></div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6 mb-4">
					<!-- Portfolio item 2-->
					<div class="portfolio-item">
						<a class="portfolio-link" data-bs-toggle="modal"
							href="#portfolioModal2">
							<div class="portfolio-hover">
								<div class="portfolio-hover-content">
									<i class="fas fa-plus fa-3x"></i>
								</div>
							</div> <img class="img-fluid" src="assets/img/news/heartrate.png" alt="heartrateImg" />
						</a>
						<div class="portfolio-caption">
							<div class="portfolio-caption-heading">심박수</div>
							<div class="portfolio-caption-subheading text-muted"></div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6 mb-4">
					<!-- Portfolio item 3-->
					<div class="portfolio-item">
						<a class="portfolio-link" data-bs-toggle="modal"
							href="#portfolioModal3">
							<div class="portfolio-hover">
								<div class="portfolio-hover-content">
									<i class="fas fa-plus fa-3x"></i>
								</div>
							</div> <img class="img-fluid" src="assets/img/news/turtle.jpg" alt="turtleImg" />
						</a>
						<div class="portfolio-caption">
							<div class="portfolio-caption-heading">거북목</div>
							<div class="portfolio-caption-subheading text-muted"></div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
					<!-- Portfolio item 4-->
					<div class="portfolio-item">
						<a class="portfolio-link" data-bs-toggle="modal"
							href="#portfolioModal4">
							<div class="portfolio-hover">
								<div class="portfolio-hover-content">
									<i class="fas fa-plus fa-3x"></i>
								</div>
							</div> <img class="img-fluid" src="assets/img/news/humidity.png" alt="humidityImg" />
						</a>
						<div class="portfolio-caption">
							<div class="portfolio-caption-heading">습도</div>
							<div class="portfolio-caption-subheading text-muted"></div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
					<!-- Portfolio item 5-->
					<div class="portfolio-item">
						<a class="portfolio-link" data-bs-toggle="modal"
							href="#portfolioModal5">
							<div class="portfolio-hover">
								<div class="portfolio-hover-content">
									<i class="fas fa-plus fa-3x"></i>
								</div>
							</div> <img class="img-fluid" src="assets/img/news/digital.jpg"
							alt="..." />
						</a>
						<div class="portfolio-caption">
							<div class="portfolio-caption-heading">디지털 소외</div>
							<div class="portfolio-caption-subheading text-muted"></div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
					<!-- Portfolio item 6-->
					<div class="portfolio-item">
						<a class="portfolio-link" data-bs-toggle="modal"
							href="#portfolioModal6">
							<div class="portfolio-hover">
								<div class="portfolio-hover-content">
									<i class="fas fa-plus fa-3x"></i>
								</div>
							</div> <img class="img-fluid" src="assets/img/news/nonfacetoface.jpg" alt="nonfacetofaceImg" />
						</a>
						<div class="portfolio-caption">
							<div class="portfolio-caption-heading">비대면</div>
							<div class="portfolio-caption-subheading text-muted"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Team-->
	<section class="page-section bg-light" id="team">
		<div class="container">
			<div class="text-center">
                    <h2 class="section-heading text-uppercase">connect 팀 소개</h2>
                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="assets/img/team/jj.jpg" alt="..." />
                            <h4>김혁준</h4>
                            <p class="text-muted">Team Leader</p>
                           
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="assets/img/team/yg.jpg" alt="..." />
                            <h4>김영재</h4>
                            <p class="text-muted">Team Member</p>
                          
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="assets/img/team/kk.png" alt="..." />
                            <h4>김동국</h4>
                            <p class="text-muted">Team Member</p>
                           
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="assets/img/team/3.jpg" alt="..." />
                            <h4>한해민</h4>
                            <p class="text-muted">Team Member</p>
                       
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="assets/img/team/3.jpg" alt="..." />
                            <h4>노치균</h4>
                            <p class="text-muted">Team Member</p>
                           
                        </div>
                    </div>
                </div>
			<div class="row">
				<div class="col-lg-8 mx-auto text-center">
					<p class="large text-muted">Lorem ipsum dolor sit amet,
						consectetur adipisicing elit. Aut eaque, laboriosam veritatis,
						quos non quis ad perspiciatis, totam corporis ea, alias ut unde.</p>
				</div>
			</div>
		</div>
	</section>

	<!-- Footer-->
	<footer class="footer py-4">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-4 text-lg-start">Copyright &copy; Your
					Website 2021</div>
				<div class="col-lg-4 my-3 my-lg-0">
					<a class="btn btn-dark btn-social mx-2" href="#!"><i
						class="fab fa-twitter"></i></a> <a
						class="btn btn-dark btn-social mx-2" href="#!"><i
						class="fab fa-facebook-f"></i></a> <a
						class="btn btn-dark btn-social mx-2" href="#!"><i
						class="fab fa-linkedin-in"></i></a>
				</div>
				<div class="col-lg-4 text-lg-end">
					<a class="link-dark text-decoration-none me-3" href="#!">Privacy
						Policy</a> <a class="link-dark text-decoration-none" href="#!">Terms
						of Use</a>
				</div>
			</div>
		</div>
	</footer>
		<!-- Portfolio Modals-->
	<!-- Portfolio item 1 modal popup-->
	<div class="portfolio-modal modal fade" id="portfolioModal1"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-bs-dismiss="modal">
					<img src="assets/img/close-icon.svg" alt="Close modal" />
				</div>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-8">
							<div class="modal-body">
								<!-- Project details-->
								<h2 class="text-uppercase">비접촉식 체온계, 과연 얼마나 정확할까?</h2>
								<p class="item-intro text-muted">
									코로나19…교차 감염 방지 및 편의성 높아 ‘유용’<br> 국내 연구진, “기기 간 발열에 대한 민감도
									및 양성 예측률 차이 적어”
								</p>
								<img class="img-fluid d-block mx-auto"
									src="assets/img/news/temperature.jpg" alt="temperatureGraph" />
								<p>코로나19 사태가 장기화되면서 체온계의 필요성이 점차 높아지고 있다. 이에 따라 주로 사용되는 비접촉식
									체온계의 ‘정확성’에 대한 궁금증도 함께 커지는 모양새다. 최근 일부 제품들에서 오작동 사례가 보고되며 신뢰성에
									대한 우려의 목소리가 나오는 것이 그 이유다. 신종 코로나바이러스 감염증의 주요 증상 중 하나인 발열로 인해
									체온계의 인기가 급상승하고 있다. 특히, 비접촉식 체온계는 기존에 사용되던 접촉식 체온계에 비해 교차 감염에 대한
									우려가 적어 수요가 높아지고 있다. 일례로, 중국 적외선 체온계 시장은 2020년에 전례 없는 성장을 기록하고
									있다.</p>
								<figure>
									<img src="assets/img/news/graph.png">
									<figcaption>[표. 2015~2020년 中 자동·수동 측정 적외선 체온계 생산량,
										KOTRA]</figcaption>
								</figure>
								<p>중국의 전자정보산업발전연구원(电子信息产业发展研究院)의 자료에 따르면, 코로나19의 영향으로 올해 자동
									및 수동 측정 체온계 생산량을 각각 6만 대와 65만 대로 전망했다. 이는 지난해 대비 2배 이상 증가한 수치다.

									하지만 일각에서는 비접촉식 체온계에 대한 우려의 목소리가 나오고 있다. 일부 중국산 체온계에서 오작동이 발생한
									까닭이다. 최근 언론 보도를 통해, 국내 지자체에서 보급한 일부 중국산 비접촉식 체온계가 오작동한 사실이
									드러났다. 체온계로 측정한 결과가 실제 체온보다 1~2도가량 낮게 나왔다는 것이다. 특히 일부 직원의 경우,
									체온이 저체온증에 가까운 34도가 나온 것으로 알려져 논란이 일고 있다. 그렇다면 실제로 비접촉식 체온계는 얼마나
									정확할까. 국내 연구진이 지난 2005년 발표한 ‘고막 체온계와 이마 체온계의 정확성 및 유용성에 대한
									연구(2005)’를 살펴보면, 접촉식과 비접촉식 체온계로 측정한 결과는 큰 차이가 없는 것으로 나타났다. 연구진은
									2004년 1월 1일부터 12월 31일까지 중앙대학교 부속 병원에 입원해 치료를 받은 환아 중 무작위로 선정한
									1,050명을 대상으로 수은 체온계와 고막 체온계, 그리고 이마 체온계로 동시에 체온을 측정해 그 결과를
									비교·분석했다. 연구 결과, 발열에 대한 고막 체온계의 민감도는 오른쪽 고막과 왼쪽 고막에서 각각 81.1%,
									82.4%였고, 양성 예측률은 81.8%, 73.6%였다. 이마 체온계의 민감도는 83.3%, 양성 예측률은
									74.4%로 양쪽 기기 간에 큰 차이가 나지 않았다. 고막 체온계와 이마 체온계의 측정치는 각각 표준검사인 수은
									체온계의 측정치와 유의한 상관관계 및 상호 교환성이 있다는 점이 확인된 것이다. 연구진은 “고막 체온계 및 이마형
									체온계가 액와형 수은체온계와 통계적으로 유의한 상관성 및 일치성(P<0.05)를 보인다”며 “뿐만 아니라 발열에
									대한 민감도와 양성 예측률도 매우 높은 편이다. 가정에서나 병원에서 진료 및 연구 목적으로 체온을 측정하는 데
									유용하게 사용될 수 있을 것”이라고 밝혔다. 이뿐만이 아니다. 해외의 연구를 통해서도 유사한 사례를 찾을 수
									있었다. 지난 2011년, 임상 간호 학술지(Journal of clinical nursing)에 게재된 ‘병원과
									보행 환경에서 어린이 발열을 감지하기 위한 비접촉식 적외선 온도계의 성능’에 따르면, 비접촉식 체온계가 어린이의
									발열을 측정하는데 우수한 성능을 보인 것으로 확인됐다. 연구팀은 “총 251명의 어린이를 대상으로 비접촉식 이마
									체온계 3회 측정에 대한 평균값과 수은 체온계 2회 측정에 대한 평균값을 비교했다”며 “그 결과 비접촉식 체온계는
									37.18℃, 수은 체온계는 37.3℃를 기록했다”고 밝혔다. 그러면서 “이번 연구를 통해 비접촉식 체온계가
									우수한 성능을 가진 것으로 확인됐다”며 “또한 비접촉식 체온계는 2초 만에 체온을 측정할 수 있는 장점을 갖고
									있어 어린이에게 유용하다”고 전했다.</p>
								<ul class="list-inline">
									<li><strong>기자 : </strong> 김응민</li>
									<li><strong>출처 : </strong> 팜뉴스(http://www.pharmnews.com)</li>
								</ul>
								<button class="btn btn-primary btn-xl text-uppercase"
									data-bs-dismiss="modal" type="button">
									<i class="fas fa-times me-1"></i> Close
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio item 2 modal popup-->
	<div class="portfolio-modal modal fade" id="portfolioModal2"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-bs-dismiss="modal">
					<img src="assets/img/close-icon.svg" alt="Close modal" />
				</div>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-8">
							<div class="modal-body">
								<!-- Project details-->
								<h2 class="text-uppercase">당신의 bpm은 정상인가요? 심박수가 의미하는 것</h2>
								<p class="item-intro text-muted"></p>
								<p>심장은 확장과 수축을 통해 혈액을 내보내고, 또 돌아온 혈액을 받아들이는 일을 무한 반복하며, 이를
									심장박동이라 한다. 심장박동으로 나간 혈액이 돌아오는 데 걸리는 시간은 약 20초이며, 심박수는 분당 심장
									박동수(beats per minute, bpm)를 가리키는 말로 안정시 성인의 심박수는 보통 50~60회/분이다.

									다수의 연구결과를 토대로 분석해볼 때 심박수가 높을수록 만성질환, 조기사망위험 등이 높은 것으로 나타났으며,
									여성의 경우 심박수 증가가 배란기를 의미한다는 연구결과도 나왔다.</p>
								<figure>
									<img src="assets/img/news/heartrate.png">
								</figure>
								<p>
									<b>△ 심박수로 수명 예측, 심박수 높을수록 조기사망위험 높아</b> <br>중국 칭다오 의과대학
									장둥펑 박사 연구진이 46건의 관련연구에 참여한 환자 약 124.6만 명의 건강 기록을 토대로 분석한 결과 안정시
									심박수가 60~80bpm인 경우 45bpm 이하에 비해 조기사망 위험이 21%, 향후 20년대 사망위험은 45%
									높게 나타났다. 또한, 안정시 심박수가 10bpm 증가할 때마다 각종 질병으로 인한 사망률이 9% 증가했다고
									발표했다. 장둥펑 박사는 “휴식기 심박수만이 건강 위험요소라고 말하긴 어렵지만, 심박수의 이상이 건강문제를
									나타내는 징후라는 것만은 확실하다”고 설명하고, “모든 연령대가 휴식기 심박수와 조기 사망의 연관관계에 주의해야
									한다”고 덧붙였다. <br> <br> <b>△ 심박수 90bpm이상, 당뇨병과 고혈압
										위험이 3배 이상 높아</b> <br>연세대학교 예방의학교실 김현창 교수와 스포츠레저학부 전용관 교수팀은
									2010∼2012년 국민건강영양조사에 참여한 성인 18,640명을 대상으로 맥박수와 당뇨병, 고혈압, 대사증후군의
									상관성을 조사했다. 그 결과 안정시 심박수가 90bpm이상인 경우 60bpm 미만인 경우보다 당뇨병 위험도가
									남성이 3.85배, 여성이 3.34배 높았으며, 대사증후군 위험도는 남성이 3.55배, 여성이 2.15배 높았다.
									BMI가 과체중, 비만이면서 안정시 심박수가 80bpm인 그룹은 BMI가 정상이면서 안정시 심박수가
									80bpm미만인 그룹보다 고혈압 위험도가 남성이 3.88배, 여성이 2.61배 높았다. <br> <br>
									<b>△ 심박수 높을수록 유방암 사망률</b> <br>높아 연세대학교 암병원 유방암클리닉 김승일 교수와
									스포츠레저학과 전용관 교수 공동연구팀이 2005년부터 2013년까지 신촌 세브란스병원 암센터를 방문한
									4천786명의 1∼3기 유방암 환자를 분석한 결과 유방암 진단 시 85bpm 이상의 높은 심박수를 보인 환자는
									67bpm 이하의 환자보다 전체 사망률이 57%, 유방암으로 인한 사망률이 69% 높았다. 또한, 심박수가
									10bpm 증가할수록 전체 사망률과 유방암으로 인한 사망률은 각각 15%와 22%씩 증가하는 것으로 나타났다.
									연구팀은 “안정시 심박수는 일반적으로 신체활동 및 체력과 밀접하게 관련돼있다”고 전하면서 이번 연구결과에 대해
									“유방암 환자들에게 신체활동이 중요하다는 점을 보여준다”고 분석했다. <br> <br> <b>#
										안정시 심박수 상승 때 임신 시도 최적기(배란기)</b> <br>영국의 가임기간 추적 어플 전문기업인 클루의
									연구실장 베드라나 호그크비스트 박사는 생리주기가 규칙적인 여성 5명(25~39세)에게 심박수를 측정하는 팔찌를
									착용하게 하고 최장 12회의 생리주기에 걸쳐 안정시 심박수의 변화를 추적관찰했다. 그 결과 배란 후부터 안정시
									심박수가 올라가며, 호르몬 분비 변화를 탐지할 수 있는 디지털 모니터를 통해 심박수 상승이 호르몬 변화와
									일치한다는 사실도 확인했다. 연구팀은 이를 통해 난소에서 배란이 시작되면 안정시 심박수가 올라가기 시작해 그로부터
									최소한 24시간이 임신 최적기라고 설명했다. <br> <br> <b>△ 건강한 심박수를
										유지하려면?</b> <br>건강할수록 심박수가 감소하며, 대신 1회 박동시 혈액을 박출하는 심박출량이
									많아진다. 심폐기능을 강화할수록 심장에 무리를 주지 않으면서 심박출량이 증가하여 심장의 효율성이 증가하게 되기
									때문이다. 따라서 건강한 심박수를 유지하기 위해서는 심폐기능을 강화하는 것이 중요하며, 이를 위해 꾸준한 운동은
									필수적이다. 운동을 많이 하면 할수록 심박수를 감소시킬 수 있다는 것을 명심할 필요가 있다.
								</p>



								<ul class="list-inline">
									<li><strong>기사 : </strong> 김선희</li>
									<li><strong>출처 : </strong>
										하이닥(https://www.hidoc.co.kr/healthstory/news/C0000164967)</li>
								</ul>
								<button class="btn btn-primary btn-xl text-uppercase"
									data-bs-dismiss="modal" type="button">
									<i class="fas fa-times me-1"></i> Close
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio item 3 modal popup-->
	<div class="portfolio-modal modal fade" id="portfolioModal3"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-bs-dismiss="modal">
					<img src="assets/img/close-icon.svg" alt="Close modal" />
				</div>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-8">
							<div class="modal-body">
								<!-- Project details-->
								<h2 class="text-uppercase">매년 증가하는 '거북목과 목 디스크'…조기 진단, 맞춤
									치료 중요</h2>
								<p class="item-intro text-muted"></p>


								<p>하루 종일 책상에 앉아 공부를 하는 학생, 업무를 보는 직장인 등 현대인들에게 고질병으로 꼽히는 것은
									바로 목, 어깨 통증이다. 휴식을 취할 때는 고개를 숙이고 스마트폰을 사용하여 목이 편하게 쉴 시간이 없을 만큼
									매일 자극을 받게 되다 보니 거북목과 목 디스크로 이어지게 된다.</p>
								<img class="img-fluid d-block mx-auto"
									src="assets/img/news/turtle.jpg" alt="거북목" />
								<p>
									<b>◆허리디스크보다 많아진 목 통증</b> <br> 실제로 건강보험심사평가원에 따르면 지난 2021년
									목 통증으로 내원한 환자 수가 233만4.178명으로 집계됐다. <br>이는 211만 6,677명을
									기록한 허리디스크 환자보다 더 많은 것으로 나타나며 심각한 문제로 제기되고 있다. <br> <br>
									<b>◆대수롭지 않게 넘기는 ‘목, 어깨 통증’</b> <br>사람 머리의 무게는 평균 4~6kg
									정도이다. 컴퓨터나 스마트폰을 사용하면서 고개가 1cm 앞으로 나아갈 때마다 목뼈는 2~3kg의 하중이 가해진다.
									이것은 최대 15kg까지 늘어날 수 있는데 자극이 지속되면 목뼈 사이의 디스크가 압박돼 돌출이 이루어진다. 즉 목
									디스크가 발병하는 것이다. 광주 탄탄정형외과의원 김지영(대한정형외과학회 정회원) 원장은 “피로가 쌓이고 좋지 않은
									자세를 유지하면 목, 어깨 통증은 누구나 경험하는 흔한 증상이다. 그렇기에 대수롭지 않게 여기고 넘기는 경우들이
									많다.”며, “이는 퇴행성 질환이므로 스스로 다시 퇴행된 디스크가 제자리를 찾아가고 재생되지 않으므로 조기에
									발견하여 치료를 진행하는 것이 중요하다.”고 말했다. <br> <br> <b>◆목
										디스크…어지럼증, 안구통증까지 이어져</b> <br>초기에는 목의 뻐근함과 통증 정도로만 나타나지만 증상이
									진행될수록 연결된 신경을 따라서 목에서 어깨로 통증이 이어지고, 팔까지 내려오게 돼 팔저림과 손가락의 감각 이상도
									유발될 수 있다. 더불어 원인 모를 두통, 어지럼증, 이명, 눈이 빠질 듯한 안구 통증도 목 디스크와 연관된
									증상으로 나타난다. <br> <br> <b>◆장시간 스마트폰 사용, 잘못된 자세 교정 등
										필요 </b> <br>목 디스크는 잘못된 자세로 인해 나타나는 거북목 증후군이 장기간 이어지면 발생할 수
									있다. 머리를 앞으로 숙이게 되면서 곡선 형태의 경추뼈가 일자 수직 형태로 변형이 되는 것이다. 이러한 자세가
									지속되면 척추 윗부분이 스트레스를 받다가 목 뒷부분의 근육, 인대가 늘어나다. 더 나아가면 목 디스크가 빠져나와
									척추신경을 눌러 목 디스크로 발전하는 것이다. 김지영 원장은 “이를 예방 및 개선하기 위해서는 잘못된 자세를
									교정해야 하며 장시간 컴퓨터 및 스마트폰을 사용하는 습관을 개선해야 한다. 차량 접촉사고 등 충격노화로 인해
									퇴행성 변화나 후유증을 경험하고 있다면 즉각적으로 병원에 방문하여 이에 대응할 수 있는 치료가 필요하다.”고
									설명했다. <br> <br> <b>◆초기…비수술적 보존치료로 개선 가능 </b> <br>초기에는
									약물치료, 물리치료, 운동치료, 신경치료, 도수감압치료 등의 비수술적 보존치료를 통해 충분히 개선 가능하다.
									신경을 누르는 정도가 심해 목 어깨를 움직이지 못하고 일상생활조차 불가능하다면 수술적인 치료가 불가피하다. 이럴
									경우에는 인공디스크 치환술, 미세현미경 디스크 제거술 또는 유합술을 통해 개선해야 한다. 김지영 원장은 “잘못된
									자세와 스마트폰, 컴퓨터 장시간 사용으로 인해 목 디스크를 겪는 현대인들이 지속적으로 증가하고 있다. 누구나
									경험할 수 있는 흔한 증상이지만 방치하게 되면 일상을 방해하는 통증으로 이어질 수 있는 만큼 조기 치료를 받아야
									한다.”며, “질환에 대한 깊은 이해도를 바탕으로 숙련된 기술, 풍부한 임상 경험을 바탕으로 한 전문의의 치료가
									수반돼야 한다.”고 밝혔다.
								</p>
								<ul class="list-inline">
									<li><strong>기자 :</strong> 김지원</li>
									<li><strong>출처 :</strong>
										메디컬월드뉴스(http://medicalworldnews.co.kr/news/view.php?idx=1510947875)</li>
								</ul>
								<button class="btn btn-primary btn-xl text-uppercase"
									data-bs-dismiss="modal" type="button">
									<i class="fas fa-times me-1"></i> Close
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio item 4 modal popup-->
	<div class="portfolio-modal modal fade" id="portfolioModal4"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-bs-dismiss="modal">
					<img src="assets/img/close-icon.svg" alt="Close modal" />
				</div>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-8">
							<div class="modal-body">
								<!-- Project details-->
								<h2 class="text-uppercase">코로나 건조하면 목에 잘 붙고 비말 잘 퍼져...환기·습도
									유지 중요</h2>
								<p class="item-intro text-muted"></p>
								<p>신종 코로나바이러스 감염증(코로나19) 신규 확진자가 처음으로 9만명을 넘어섰다. 주말효과가 끝나면서
									하루새 3만명이 넘게 늘었다. 국내 한 전문가는 건조한 날씨로 인해 공기 중 바이러스를 흡입할 가능성이 더
									늘어났을 가능성도 있어 실내 환기를 계속하고 습도를 유지할 것을 당부했다. 또 전문가들은 검사체계가 바뀌면서
									알려지지 않은 실제 확진자 수는 더 많을 것으로 전망했다.</p>
								<img class="img-fluid d-block mx-auto"
									src="assets/img/news/humidity.png" alt="습도 이미지" />
								<p>
									<br> <b>◇신규 확진자 9만443명…4주연속 더블링</b> <br> <br>질병관리청
									중앙방역대책본부는 16일 0시 기준 코로나19 신규 확진자가 9만443명 발생했다고 밝혔다. 주말동안 줄었던
									진단검사량으로 인한 주말효과가 끝나면서 전날 기록했던 5만7177명보다 3만3266명 급증했다. 일주일 전 확진자
									수 4만9550명 대비 4만893명이 늘어 더블링(확진자가 두 배씩 늘어나는 추세)을 기록했다. 일주일 단위로
									보면 확진자수가 연속 4주째 더블링에 수치를 기록 중이다. 지난 1월19일 5804명→1월26일
									1만3007명→2월2일 2만268명→2월9일 4만9550명→2월16일 9만443명을 기록했다. 정재훈 가천대학교
									의과대학 예방의학과 교수는 "오미크론은 전파율이 높아 주기가 그 정도에 맞춰졌다. 또 화요일, 수요일 숫자가
									늘어나는 현상은 이전부터 우리나라에서 나타나던 현상이다, 이는 진단검사 수에 따른 현상이라고 봐야 한다"라고
									말했다. <br> <br> <b>◇건조하면 비말 공중에 떠다녀 흡입 가능성↑…"환기
										중요"</b> <br>이처럼 계속된 코로나19 급증은 우선 겨울철 건조한 날씨의 영향이 크다. 통상 바이러스는
									기온이 낮고 건조할수록 활발하다. 특히 추운 날씨로 밀폐된 공간에 사람들의 밀집된 경우가 많아 겨울에는 전염
									가능성이 더 높다. 천은미 이대목동병원 호흡기내과 교수는 날씨가 건조하면 바이러스가 사람 목에 더 잘 붙을 수
									있다. 그리고 실내가 건조하면 비말이 말라서 공중에 떠다니기 때문에 흡입할 확률이 굉장히 높아진다"며 "그래서
									주기적으로 실내를 환기하고 습도를 유지하는 것이 매우 중요하다"고 조언했다. 코로나19 오미크론 변이 자체가
									전염력이 강한 탓도 있다. 코로나19 바이러스는 바이러스 표면에 있는 스파이크 단백질을 이용해 세포를 감염시키는데
									오미크론 변이는 이 스파이크 단백질과 연관된 변이가 앞서 유행했던 델타 변이에 비해 약 2배나 더 많다. 지난해
									12월 미국 프레드 허친슨 암 연구소에서 공개했던 연구에 따르면 오미크론은 최소 50개의 변이를 갖고 있으며 그중
									32개는 스파이크 단백질에 분포한다. 특히 스파이크 단백질에서 발생한 변이중 상당수는 항체와 결합하는
									수용체결합부위(RBD)의 수용체결합모티브(RBM) 부위에서 발견됐다. 오미크론 변이가 전염력이 강할 뿐 아니라
									백신 등에 면역 회피성을 갖게 된 이유다. 대부분의 치료제 및 백신은 이 스파이크 단백질을 표적으로 개발돼
									스파이크 단백질에 변이가 많이 일어날수록 기존 백신, 항체치료제가 효과를 못 볼 가능성이 크다. <br>
									<br> <b>◇현재상황 예상대로…실제 확진자수 흴씬 높을 것</b> <br>확진자 급증에
									전문가들은 오히려 실제 감염자 수는 더 높을 것으로 전망했다. 이달 초부터 코로나19 확진자 검사를
									유전자증폭(PCR) 검사에서 신속항원검사 방식으로 변경하면서 나타나지 않은 확진자들이 더 많을 것이라는 설명이다.
									정 교수는 "진단검사 건수나 드러난 확진자수를 감안하면 처음에 예상했던 유행곡선대로 가고 있다고 봐야 할 것
									같다"며 "(드러나지 않았던 확진자를) 얼마만큼 찾아낼 수 있느냐의 차이"라고 설명했다. 김우주 고려대학교
									구로병원 감염내과 교수는 "PCR 검사수를 제한하고 민감도가 떨어지는 신속항원검사를 늘리다보니 실제 환자수를
									제대로 못 집어내고 있다. 실제로는 12만, 15만명이 발생했을 가능성도 있다"고 말했다. 김 교수는 또한 현재
									확진자 급증의 이유로 변화된 방역체계를 들었다. 전파력이 강한 오미크론 확산으로 확진자수가 계속 급증하면서
									역학조사 등 조사 체계도 간소화됐을 뿐 아니라 치명률이 낮다는 이유로 거리두기 지침도 엄격하게 지키지 않는 등
									전체적으로 방역이 느슨해졌다는 설명이다. 천 교수는 "실제 확진자 수는 현재의 2~5배는 될 것"이라고 말했다.
									오미크론 감염자 중 많은 비율이 무증상 또는 경증이라 검사를 받지 않고 넘어가는 사람들도 상당수 있다는 이유다.
									<br> <br> <b>◇공포심 가질필요 없어…고위험군에 치료제로 빠른 대응 필요</b> <br>천
									교수는 "확진자수에 공포심을 가질 필요는 없고 고위험군에 정부가 치료제로 빠르게 대응하는게 중요하다"고 조언했다.
									이어 "지금도 계속 QR코드, 방역패스 얘기를 하는데 우리나라 백신 접종률이 높다보니 지금 나오는 확진자는 다
									접종자다. 방역패스가 사실상 3차 접종을 초점에 두고 시행 중인데 그것보다는 확진자에게 치료제 처방을 늘려 빨리
									회복시키는 것이 더 효과적이다"라고 말했다. 김 교수는 정부가 중증환자 및 사망자 관리를 중점적으로 하겠다고 밝힌
									만큼 위험군에 대한 PCR 검사는 늘릴 것을 주문했다. 김 교수는 "60세 이하 연령에도 기저질환자, 암환자,
									장기이식자, 미접종자 등 감염됐을 경우 중증으로 진행 위험이 높은 분들이 많은데 정확한 검사를 안 해주고 있다"고
									말했다.
								</p>
								<ul class="list-inline">
									<li><strong>기자 :</strong> 성재준</li>
									<li><strong>출처 :</strong>
										news1(https://www.news1.kr/articles/?4586742)</li>
								</ul>
								<button class="btn btn-primary btn-xl text-uppercase"
									data-bs-dismiss="modal" type="button">
									<i class="fas fa-times me-1"></i> Close
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio item 5 modal popup-->
	<div class="portfolio-modal modal fade" id="portfolioModal5"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-bs-dismiss="modal">
					<img src="assets/img/close-icon.svg" alt="Close modal" />
				</div>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-8">
							<div class="modal-body">
								<!-- Project details-->
								<h2 class="text-uppercase">코로나 시국에 이삼중고 겪는 디지털 소외 노인들</h2>
								<p class="item-intro text-muted"></p>
								<p></p>
								<img class="img-fluid d-block mx-auto"
									src="assets/img/news/digital.jpg" alt="..." />
								<p>
									코로나19 확진자가 급증하는 가운데 디지털 문맹인 노인들의 고통이 커지고 있다는 안타까운 소식이다. 나이 들어
									신체 기능이 떨어져 감염병에 취약한 것이야 어떻게 해 볼 도리가 없다 할 수 있겠지만, 스마트폰 등 디지털기기의
									조작에 익숙지 않아 생기는 일상생활의 불편은 얼마든지 주위의 도움으로 어느 정도 덜어 줄 수 있는 일이다. 정부나
									지자체는 디지털 소외 계층인 노인들에 대한 방역 지원을 더 세심하게 신경 써야 할 것이다. <br> <br>
									대구의 코로나19 신규 확진자는 지난 21일 하루에만 4천160명이 발생했다. 누적인원은 8만8천678명으로, 이
									가운데 60대 이상이 14.5%를 차지하고 있다. 현재 60세 이상 어르신들은 집중관리군으로 분류돼 확진되거나
									감염이 의심되면 재택치료를 받게 된다. 보건소에서 안내하는 진료지원 애플리케이션인 건강관리 앱을 설치하고 체온과
									혈압 맥박 산소포화도 혈당 등 건강상태를 매일 두 차례 앱에 입력해야 한다. <br> <br>
									하지만 대다수 60대 이상 어르신들이 스마트폰 사용에 익숙하지 않거나 일부는 아예 스마트폰이 없는 경우도 있어
									당사자나 관리기관이 다 고충을 겪고 있다. 그나마 함께 사는 자녀가 있다면 앱 사용에 도움을 받거나 대신해 줄
									수도 있지만, 홀몸 노인들은 이마저도 기대하기 어려운 실정이다. 대구시에 따르면 2020년 기준 대구의 65세
									이상 노인은 39만4천279명으로, 이 가운데 1인 가구는 21.2%(8만3천459명)이다. 홀로 생활하는 노인이
									10명 중 2명인 셈이다. <br> <br> 노인들은 다중이용시설 출입 때 필요한 방역패스
									QR코드 사용에서도 어려움을 겪고 있다. 정부나 지자체에서는 스마트폰 대신 행정복지센터에서 발급받은 백신접종
									증명서나 스티커로 대체할 수 있다고 하지만 노인들은 외출할 때마다 이를 가져가는 것이 번거롭기도 하고 깜빡 잊는
									경우도 적지 않다고 한다. 또 아예 이런 대체 방법이 있는지조차 모르는 경우도 있다. <br> <br>
									정부나 지자체나 디지털 사각지대에 놓인 노인들의 불편에 대해 인식은 하고 있지만 별다른 대책을 내놓지는 못하고
									있는 게 현실이다. <br> <br> 대구시 관계자는 “스마트폰 사용에 익숙하지 않은
									어르신들에게는 의료기관에서 매일 두 차례 전화상담을 통해 건강상태를 확인하도록 하고 있다”고 밝혔다. <br>
									<br>코로나 사태가 언제쯤 끝날지 아직은 예측조차 쉽지 않은 상황이다. 집안에 노인이 있는 경우라면
									자식들이 더 자주 찾아뵙거나 연락을 드리는 게 지금으로선 최선의 노인 방역대책이다. 홀로 사는 어르신들에 대해서는
									정부나 지자체에서 복지 사각지대를 막는다는 인식을 하고 접근해야 할 것이다.
								</p>
								<ul class="list-inline">
									<li><strong>기자 :</strong> 대구·경북 대표지역언론 대구일보</li>
									<li><strong>출처 :</strong>
										http://www.idaegu.com/newsView/idg202202220042</li>
								</ul>
								<button class="btn btn-primary btn-xl text-uppercase"
									data-bs-dismiss="modal" type="button">
									<i class="fas fa-times me-1"></i> Close
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio item 6 modal popup-->
	<div class="portfolio-modal modal fade" id="portfolioModal6"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-bs-dismiss="modal">
					<img src="assets/img/close-icon.svg" alt="Close modal" />
				</div>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-8">
							<div class="modal-body">
								<!-- Project details-->
								<h2 class="text-uppercase">집중관리군도 “보건소 연락 못받아”…재택치료 1주일, 혼란
									계속</h2>
								<p class="item-intro text-muted"></p>
								<p>신종 코로나바이러스 감염증(코로나19) 신규 확진자가 처음으로 9만명을 넘어섰다. 주말효과가 끝나면서
									하루새 3만명이 넘게 늘었다. 국내 한 전문가는 건조한 날씨로 인해 공기 중 바이러스를 흡입할 가능성이 더
									늘어났을 가능성도 있어 실내 환기를 계속하고 습도를 유지할 것을 당부했다. 또 전문가들은 검사체계가 바뀌면서
									알려지지 않은 실제 확진자 수는 더 많을 것으로 전망했다.</p>
								<img class="img-fluid d-block mx-auto"
									src="assets/img/news/nonfacetoface.jpg" alt="nonfacetofaceImg" />
								<p>
									<br> 코로나19 확진자의 ‘셀프 재택치료’가 시작된 지 일주일째지만 여전히 현장에선 혼선이 빚어지고
									있다. 인프라를 제대로 갖추지 못한 채 급하게 체계를 바꾼 데다 재택치료 환자가 31만 명을 넘어서며 폭증한
									영향이다.<br> <br> 60대 재택치료자 A씨는 지난 12일 관할 보건소로부터 재택치료
									‘집중관리군’으로 분류됐다는 문자를 받았다. 다음 날 체온계, 산소포화도, 상비약 등이 포함된 건강관리키트가
									배달됐다. 하지만 그뿐이었다. 엿새가 지나도록 담당 간호사의 전화는커녕 문자도 받지 못했다. <br> <br>
									정부 지침에 따르면 A씨 같은 집중관리군에는 하루 두 차례 전화를 걸어 건강상태를 모니터링해야 한다. 60세
									이상, 면역저하자 등은 말 그대로 집중관리가 필요한 고위험군이어서다. 증상에 따라 먹는 치료제도 적극적으로 처방해
									중증으로 진행되는 상황을 막아야 한다. 하지만 현장에선 구멍이 생기고 있다. A씨의 보호자(딸)는 “보건소에서
									확진 결과만 통보받고, 이후 격리 기간 내내 건강상태를 확인한다거나 별다른 안내를 받은 것이 없다”면서 “다행히
									증상이 가벼워 약을 먹고 넘겼지만, 만약 증상이 심했다면 당황스러운 상황이 벌어졌을 것”이라고 말했다. <br>
									<br> 말 그대로 ‘셀프 치료’를 해야 하는 일반관리군의 상황은 더 열악하다. 지난 14일 양성 판정을
									받은 20대 박모씨는 확진 3일 만에 보건소 연락을 받았다. 박씨는 “사흘간 기침, 열, 인후통 등 증상이 너무
									심해져서 잠도 못 잘 정도였다”며 “안내라도 받고 싶어 보건소 등에 전화를 돌렸지만 한 번에 닿지 않아
									난감했다”고 하소연했다.<br> <br> 박씨는 가족과의 격리를 위해 마침 비어 있던 친척 집에
									머물렀다. 하지만 혼자선 약을 받는 것도 어려웠다. “약 수령은 반드시 가족이나 지인이 도와줘야 하더라”면서
									“처음에 혼자 지내고 있어 받으러 갈 수 없다고 하니 (보건소에서) ‘도와줄 사람이 진짜 없냐’면서 배송까지 며칠
									걸릴 수도 있다고 했다”고 말했다. 결국 다른 지역에 사는 부모가 직접 약을 타서 문 앞까지 전달해 주고 가는
									일도 있었다. 서울 동작구에서 재택치료를 받는 김모(36)씨는 “목이 너무 아프고 힘이 없어서 약이 간절했는데,
									보건소와 재택 의료기관에 전화를 수십 통 해도 연결이 안 됐다”면서 “멀리 사는 가족에게 부탁해 간신히 약을
									공수해 왔는데 혼자 앓는 동안 정말 서럽더라”고 말했다.<br> <br> 16일부터 모든 약국이
									재택치료 환자의 처방 의약품을 조제할 수 있게 됐지만, 1인 가구나 장년층 같은 경우는 여전히 약을 받으러 가는
									데 어려움을 겪고 있다. 일반관리군 비대면 진료를 보는 서울 신당동 보아스이비인후과의원 오재국 원장은 “보호자가
									없을 경우 택배로 보내는 지정약국 제도가 있지만 아직 안정이 안 돼 있다”면서 “우리도 환자 한 사람에게 들일 수
									있는 시간이 많지 않아 다 해결해 주는 게 어렵다”고 말했다. <br>
									<br> 이런 상황에도 정부는 재택치료자 관리 체계가 안정적으로 정착해 나가고 있다고 평가했다. 17일
									손영래 중앙사고수습본부 사회전략반장은 집중관리군 재택치료와 관련해 “시·도 의사회, 실제 재택치료자 등에게 확인해
									보니 건강 모니터링과 처방에 큰 문제 없이 작동하고 있다”고 말했다. 하지만 이와 달리 양성 판정을 받고 재택치료
									중인 보건복지부 류근혁 2차관은 지난 16일 언론 인터뷰에서 “의료기관에 몇 번 전화했는데 연결이 안 됐다”며
									경험담을 전하기도 했다.
								</p>
								<ul class="list-inline">
									<li><strong>기자 :</strong> 어환희</li>
									<li><strong>출처 :</strong>
										중앙일보(https://www.joongang.co.kr/article/25049165)</li>
								</ul>
								<button class="btn btn-primary btn-xl text-uppercase"
									data-bs-dismiss="modal" type="button">
									<i class="fas fa-times me-1"></i> Close
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>