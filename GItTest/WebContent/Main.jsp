<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
					<li class="nav-item"><a class="nav-link" href="#services">������Ȯ��</a></li>
					<li class="nav-item"><a class="nav-link" href="#portfolio">���ô���</a></li>
					<li class="nav-item"><a class="nav-link" href="#about">��ǰ�Ұ�</a></li>
					<li class="nav-item"><a class="nav-link" href="#">�޴�</a></li>
					<%
						if (vo == null) {
					%>
					<li class="nav-item"><a class="nav-link" href="Login.jsp">�α���</a></li>
					<%
						} else {
					%>
					<li class="nav-item"><a class="nav-link" href="Update.jsp">������������</a></li>
					<li class="nav-item"><a class="nav-link" href="LogoutService">�α׾ƿ�</a></li>
					<%
						}
					%>
				</ul>
			</div>
		</div>

	</nav>

	<!-- Masthead-->
	<header class="masthead">

		<div class="container">
			<div class="text-center" id="services">
				<h2 class="section-heading text-uppercase">
					<%
						if (vo == null) {
					%>Service
					<%
						} else {
					%>
					<%=vo.getMb_name()%>
					���� �ǰ����� �Դϴ�.<%
						}
					%>
				</h2>
				<h3 class="section-subheading text-muted">Lorem ipsum dolor sitamet consectetur.</h3>
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
				<h3 class="section-subheading text-muted">�츮 ��ǰ�� ���õ� ������</h3>
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
							<div class="portfolio-caption-heading">�ڷγ�</div>
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
							<div class="portfolio-caption-heading">�ɹڼ�</div>
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
							<div class="portfolio-caption-heading">�źϸ�</div>
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
							<div class="portfolio-caption-heading">����</div>
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
							<div class="portfolio-caption-heading">������ �ҿ�</div>
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
							<div class="portfolio-caption-heading">����</div>
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
				<h2 class="section-heading text-uppercase">connect �� �Ұ�</h2>
				<h3 class="section-subheading text-muted">Lorem ipsum dolor sit
					amet consectetur.</h3>
			</div>
			<div class="row">
				<div class="col-lg-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle" src="assets/img/team/jj.jpg"
							alt="..." />
						<h4>������</h4>
						<p class="text-muted">Team Leader</p>

					</div>
				</div>
				<div class="col-lg-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle" src="assets/img/team/yg.jpg"
							alt="..." />
						<h4>�迵��</h4>
						<p class="text-muted">Team Member</p>

					</div>
				</div>
				<div class="col-lg-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle" src="assets/img/team/kk.png"
							alt="..." />
						<h4>�赿��</h4>
						<p class="text-muted">Team Member</p>

					</div>
				</div>
				<div class="col-lg-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle" src="assets/img/team/hm.png"
							alt="..." />
						<h4>���ع�</h4>
						<p class="text-muted">Team Member</p>

					</div>
				</div>
				<div class="col-lg-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle" src="assets/img/team/3.jpg"
							alt="..." />
						<h4>��ġ��</h4>
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
								<h2 class="text-uppercase">�����˽� ü�°�, ���� �󸶳� ��Ȯ�ұ�?</h2>
								<p class="item-intro text-muted">
									�ڷγ�19������ ���� ���� �� ���Ǽ� ���� �����롯<br> ���� ������, ����� �� �߿��� ���� �ΰ���
									�� �缺 ������ ���� ���
								</p>
								<img class="img-fluid d-block mx-auto"
									src="assets/img/news/temperature.jpg" alt="temperatureGraph" />
								<p>�ڷγ�19 ���°� ���ȭ�Ǹ鼭 ü�°��� �ʿ伺�� ���� �������� �ִ�. �̿� ���� �ַ� ���Ǵ� �����˽�
									ü�°��� ����Ȯ������ ���� �ñ����� �Բ� Ŀ���� ������. �ֱ� �Ϻ� ��ǰ�鿡�� ���۵� ��ʰ� ����Ǹ� �ŷڼ���
									���� ����� ��Ҹ��� ������ ���� �� ������. ���� �ڷγ����̷��� �������� �ֿ� ���� �� �ϳ��� �߿��� ����
									ü�°��� �αⰡ �޻���ϰ� �ִ�. Ư��, �����˽� ü�°�� ������ ���Ǵ� ���˽� ü�°迡 ���� ���� ������ ����
									����� ���� ���䰡 �������� �ִ�. �Ϸʷ�, �߱� ���ܼ� ü�°� ������ 2020�⿡ ���� ���� ������ ����ϰ�
									�ִ�.</p>
								<figure>
									<img src="assets/img/news/graph.png">
									<figcaption>[ǥ. 2015~2020�� �� �ڵ������� ���� ���ܼ� ü�°� ���귮,
										KOTRA]</figcaption>
								</figure>
								<p>�߱��� ����������������������� �ڷῡ ������, �ڷγ�19�� �������� ���� �ڵ�
									�� ���� ���� ü�°� ���귮�� ���� 6�� ��� 65�� ��� �����ߴ�. �̴� ������ ��� 2�� �̻� ������ ��ġ��.

									������ �ϰ������� �����˽� ü�°迡 ���� ����� ��Ҹ��� ������ �ִ�. �Ϻ� �߱��� ü�°迡�� ���۵��� �߻���
									����̴�. �ֱ� ��� ������ ����, ���� ����ü���� ������ �Ϻ� �߱��� �����˽� ü�°谡 ���۵��� �����
									�巯����. ü�°�� ������ ����� ���� ü�º��� 1~2������ ���� ���Դٴ� ���̴�. Ư�� �Ϻ� ������ ���,
									ü���� ��ü������ ����� 34���� ���� ������ �˷��� ����� �ϰ� �ִ�. �׷��ٸ� ������ �����˽� ü�°�� �󸶳�
									��Ȯ�ұ�. ���� �������� ���� 2005�� ��ǥ�� ���� ü�°�� �̸� ü�°��� ��Ȯ�� �� ���뼺�� ����
									����(2005)���� ���캸��, ���˽İ� �����˽� ü�°�� ������ ����� ū ���̰� ���� ������ ��Ÿ����. ��������
									2004�� 1�� 1�Ϻ��� 12�� 31�ϱ��� �߾Ӵ��б� �μ� ������ �Կ��� ġ�Ḧ ���� ȯ�� �� �������� ������
									1,050���� ������� ���� ü�°�� �� ü�°�, �׸��� �̸� ü�°�� ���ÿ� ü���� ������ �� �����
									�񱳡��м��ߴ�. ���� ���, �߿��� ���� �� ü�°��� �ΰ����� ������ ���� ���� ������ ���� 81.1%,
									82.4%����, �缺 �������� 81.8%, 73.6%����. �̸� ü�°��� �ΰ����� 83.3%, �缺 ��������
									74.4%�� ���� ��� ���� ū ���̰� ���� �ʾҴ�. �� ü�°�� �̸� ü�°��� ����ġ�� ���� ǥ�ذ˻��� ����
									ü�°��� ����ġ�� ������ ������� �� ��ȣ ��ȯ���� �ִٴ� ���� Ȯ�ε� ���̴�. �������� ���� ü�°� �� �̸���
									ü�°谡 �׿��� ����ü�°�� ��������� ������ ����� �� ��ġ��(P<0.05)�� ���δ١��� ���Ӹ� �ƴ϶� �߿���
									���� �ΰ����� �缺 �������� �ſ� ���� ���̴�. ���������� �������� ���� �� ���� �������� ü���� �����ϴ� ��
									�����ϰ� ���� �� ���� �͡��̶�� ������. �̻Ӹ��� �ƴϴ�. �ؿ��� ������ ���ؼ��� ������ ��ʸ� ã�� ��
									�־���. ���� 2011��, �ӻ� ��ȣ �м���(Journal of clinical nursing)�� ����� ��������
									���� ȯ�濡�� ��� �߿��� �����ϱ� ���� �����˽� ���ܼ� �µ����� ���ɡ��� ������, �����˽� ü�°谡 �����
									�߿��� �����ϴµ� ����� ������ ���� ������ Ȯ�εƴ�. �������� ���� 251���� ��̸� ������� �����˽� �̸�
									ü�°� 3ȸ ������ ���� ��հ��� ���� ü�°� 2ȸ ������ ���� ��հ��� ���ߴ١��� ���� ��� �����˽� ü�°��
									37.18��, ���� ü�°�� 37.3�ɸ� ����ߴ١��� ������. �׷��鼭 ���̹� ������ ���� �����˽� ü�°谡
									����� ������ ���� ������ Ȯ�εƴ١��� ������ �����˽� ü�°�� 2�� ���� ü���� ������ �� �ִ� ������ ����
									�־� ��̿��� �����ϴ١��� ���ߴ�.</p>
								<ul class="list-inline">
									<li><strong>���� : </strong> ������</li>
									<li><strong>��ó : </strong> �ʴ���(http://www.pharmnews.com)</li>
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
								<h2 class="text-uppercase">����� bpm�� �����ΰ���? �ɹڼ��� �ǹ��ϴ� ��</h2>
								<p class="item-intro text-muted"></p>
								<p>������ Ȯ��� ������ ���� ������ ��������, �� ���ƿ� ������ �޾Ƶ��̴� ���� ���� �ݺ��ϸ�, �̸�
									����ڵ��̶� �Ѵ�. ����ڵ����� ���� ������ ���ƿ��� �� �ɸ��� �ð��� �� 20���̸�, �ɹڼ��� �д� ����
									�ڵ���(beats per minute, bpm)�� ����Ű�� ���� ������ ������ �ɹڼ��� ���� 50~60ȸ/���̴�.

									�ټ��� ��������� ���� �м��غ� �� �ɹڼ��� �������� ������ȯ, ���������� ���� ���� ������ ��Ÿ������,
									������ ��� �ɹڼ� ������ ����⸦ �ǹ��Ѵٴ� ��������� ���Դ�.</p>
								<figure>
									<img src="assets/img/news/heartrate.png">
								</figure>
								<p>
									<b>�� �ɹڼ��� ���� ����, �ɹڼ� �������� ���������� ����</b> <br>�߱� Ī�ٿ� �ǰ�����
									����� �ڻ� �������� 46���� ���ÿ����� ������ ȯ�� �� 124.6�� ���� �ǰ� ����� ���� �м��� ��� ������
									�ɹڼ��� 60~80bpm�� ��� 45bpm ���Ͽ� ���� ������ ������ 21%, ���� 20��� ��������� 45%
									���� ��Ÿ����. ����, ������ �ɹڼ��� 10bpm ������ ������ ���� �������� ���� ������� 9% �����ߴٰ�
									��ǥ�ߴ�. ����� �ڻ�� ���޽ı� �ɹڼ����� �ǰ� �����Ҷ�� ���ϱ� �������, �ɹڼ��� �̻��� �ǰ�������
									��Ÿ���� ¡�Ķ�� �͸��� Ȯ���ϴ١��� �����ϰ�, ����� ���ɴ밡 �޽ı� �ɹڼ��� ���� ����� �������迡 �����ؾ�
									�Ѵ١��� ���ٿ���. <br> <br> <b>�� �ɹڼ� 90bpm�̻�, �索���� ������
										������ 3�� �̻� ����</b> <br>�������б� �������б��� ����â ������ �����������к� ����� ��������
									2010��2012�� ���ΰǰ��������翡 ������ ���� 18,640���� ������� �ƹڼ��� �索��, ������, ������ı���
									������� �����ߴ�. �� ��� ������ �ɹڼ��� 90bpm�̻��� ��� 60bpm �̸��� ��캸�� �索�� ���赵��
									������ 3.85��, ������ 3.34�� ��������, ������ı� ���赵�� ������ 3.55��, ������ 2.15�� ���Ҵ�.
									BMI�� ��ü��, ���̸鼭 ������ �ɹڼ��� 80bpm�� �׷��� BMI�� �����̸鼭 ������ �ɹڼ���
									80bpm�̸��� �׷캸�� ������ ���赵�� ������ 3.88��, ������ 2.61�� ���Ҵ�. <br> <br>
									<b>�� �ɹڼ� �������� ����� �����</b> <br>���� �������б� �Ϻ��� �����Ŭ���� ����� ������
									�����������а� ����� ���� ������������ 2005����� 2013����� ���� ����������� �ϼ��͸� �湮��
									4õ786���� 1��3�� ����� ȯ�ڸ� �м��� ��� ����� ���� �� 85bpm �̻��� ���� �ɹڼ��� ���� ȯ�ڴ�
									67bpm ������ ȯ�ں��� ��ü ������� 57%, ��������� ���� ������� 69% ���Ҵ�. ����, �ɹڼ���
									10bpm �����Ҽ��� ��ü ������� ��������� ���� ������� ���� 15%�� 22%�� �����ϴ� ������ ��Ÿ����.
									�������� �������� �ɹڼ��� �Ϲ������� ��üȰ�� �� ü�°� �����ϰ� ���õ��ִ١��� ���ϸ鼭 �̹� ��������� ����
									������� ȯ�ڵ鿡�� ��üȰ���� �߿��ϴٴ� ���� �����ش١��� �м��ߴ�. <br> <br> <b>#
										������ �ɹڼ� ��� �� �ӽ� �õ� ������(�����)</b> <br>������ ���ӱⰣ ���� ���� ��������� Ŭ����
									�������� ����� ȣ��ũ��Ʈ �ڻ�� �����ֱⰡ ��Ģ���� ���� 5��(25~39��)���� �ɹڼ��� �����ϴ� ���
									�����ϰ� �ϰ� ���� 12ȸ�� �����ֱ⿡ ���� ������ �ɹڼ��� ��ȭ�� ���������ߴ�. �� ��� ��� �ĺ��� ������
									�ɹڼ��� �ö󰡸�, ȣ���� �к� ��ȭ�� Ž���� �� �ִ� ������ ����͸� ���� �ɹڼ� ����� ȣ���� ��ȭ��
									��ġ�Ѵٴ� ��ǵ� Ȯ���ߴ�. �������� �̸� ���� ���ҿ��� ����� ���۵Ǹ� ������ �ɹڼ��� �ö󰡱� ������ �׷κ���
									�ּ��� 24�ð��� �ӽ� �������� �����ߴ�. <br> <br> <b>�� �ǰ��� �ɹڼ���
										�����Ϸ���?</b> <br>�ǰ��Ҽ��� �ɹڼ��� �����ϸ�, ��� 1ȸ �ڵ��� ������ �����ϴ� �ɹ��ⷮ��
									��������. �������� ��ȭ�Ҽ��� ���忡 ������ ���� �����鼭 �ɹ��ⷮ�� �����Ͽ� ������ ȿ������ �����ϰ� �Ǳ�
									�����̴�. ���� �ǰ��� �ɹڼ��� �����ϱ� ���ؼ��� �������� ��ȭ�ϴ� ���� �߿��ϸ�, �̸� ���� ������ ���
									�ʼ����̴�. ��� ���� �ϸ� �Ҽ��� �ɹڼ��� ���ҽ�ų �� �ִٴ� ���� ����� �ʿ䰡 �ִ�.
								</p>



								<ul class="list-inline">
									<li><strong>��� : </strong> �輱��</li>
									<li><strong>��ó : </strong>
										���̴�(https://www.hidoc.co.kr/healthstory/news/C0000164967)</li>
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
								<h2 class="text-uppercase">�ų� �����ϴ� '�źϸ�� �� ��ũ'������ ����, ����
									ġ�� �߿�</h2>
								<p class="item-intro text-muted"></p>


								<p>�Ϸ� ���� å�� �ɾ� ���θ� �ϴ� �л�, ������ ���� ������ �� �����ε鿡�� ���������� ������ ����
									�ٷ� ��, ��� �����̴�. �޽��� ���� ���� ���� ���̰� ����Ʈ���� ����Ͽ� ���� ���ϰ� �� �ð��� ���� ��ŭ
									���� �ڱ��� �ް� �Ǵ� ���� �źϸ�� �� ��ũ�� �̾����� �ȴ�.</p>
								<img class="img-fluid d-block mx-auto"
									src="assets/img/news/turtle.jpg" alt="�źϸ�" />
								<p>
									<b>���㸮��ũ���� ������ �� ����</b> <br> ������ �ǰ�����ɻ��򰡿��� ������ ���� 2021��
									�� �������� ������ ȯ�� ���� 233��4.178������ ����ƴ�. <br>�̴� 211�� 6,677����
									����� �㸮��ũ ȯ�ں��� �� ���� ������ ��Ÿ���� �ɰ��� ������ ����ǰ� �ִ�. <br> <br>
									<b>�ߴ������ �ʰ� �ѱ�� ����, ��� ������</b> <br>��� �Ӹ��� ���Դ� ��� 4~6kg
									�����̴�. ��ǻ�ͳ� ����Ʈ���� ����ϸ鼭 ���� 1cm ������ ���ư� ������ ����� 2~3kg�� ������ ��������.
									�̰��� �ִ� 15kg���� �þ �� �ִµ� �ڱ��� ���ӵǸ� ��� ������ ��ũ�� �йڵ� ������ �̷������. �� ��
									��ũ�� �ߺ��ϴ� ���̴�. ���� źź�����ܰ��ǿ� ������(���������ܰ���ȸ ��ȸ��) ������ ���Ƿΰ� ���̰� ���� ����
									�ڼ��� �����ϸ� ��, ��� ������ ������ �����ϴ� ���� �����̴�. �׷��⿡ ������� �ʰ� ����� �ѱ�� ������
									����.����, ���̴� ���༺ ��ȯ�̹Ƿ� ������ �ٽ� ����� ��ũ�� ���ڸ��� ã�ư��� ������� �����Ƿ� ���⿡
									�߰��Ͽ� ġ�Ḧ �����ϴ� ���� �߿��ϴ�.���� ���ߴ�. <br> <br> <b>�߸�
										��ũ����������, �ȱ��������� �̾���</b> <br>�ʱ⿡�� ���� �����԰� ���� �����θ� ��Ÿ������ ������
									����ɼ��� ����� �Ű��� ���� �񿡼� ����� ������ �̾�����, �ȱ��� �������� �� �������� �հ����� ���� �̻�
									���ߵ� �� �ִ�. ���Ҿ� ���� �� ����, ��������, �̸�, ���� ���� ���� �ȱ� ������ �� ��ũ�� ������
									�������� ��Ÿ����. <br> <br> <b>����ð� ����Ʈ�� ���, �߸��� �ڼ� ���� ��
										�ʿ� </b> <br>�� ��ũ�� �߸��� �ڼ��� ���� ��Ÿ���� �źϸ� ���ı��� ��Ⱓ �̾����� �߻��� ��
									�ִ�. �Ӹ��� ������ ���̰� �Ǹ鼭 � ������ ���߻��� ���� ���� ���·� ������ �Ǵ� ���̴�. �̷��� �ڼ���
									���ӵǸ� ô�� ���κ��� ��Ʈ������ �޴ٰ� �� �޺κ��� ����, �δ밡 �þ��. �� ���ư��� �� ��ũ�� ��������
									ô�߽Ű��� ���� �� ��ũ�� �����ϴ� ���̴�. ������ ������ ���̸� ���� �� �����ϱ� ���ؼ��� �߸��� �ڼ���
									�����ؾ� �ϸ� ��ð� ��ǻ�� �� ����Ʈ���� ����ϴ� ������ �����ؾ� �Ѵ�. ���� ���˻�� �� ��ݳ�ȭ�� ����
									���༺ ��ȭ�� �������� �����ϰ� �ִٸ� �ﰢ������ ������ �湮�Ͽ� �̿� ������ �� �ִ� ġ�ᰡ �ʿ��ϴ�.����
									�����ߴ�. <br> <br> <b>���ʱ⡦������� ����ġ��� ���� ���� </b> <br>�ʱ⿡��
									�๰ġ��, ����ġ��, �ġ��, �Ű�ġ��, ��������ġ�� ���� ������� ����ġ�Ḧ ���� ����� ���� �����ϴ�.
									�Ű��� ������ ������ ���� �� ����� �������� ���ϰ� �ϻ��Ȱ���� �Ұ����ϴٸ� �������� ġ�ᰡ �Ұ����ϴ�. �̷�
									��쿡�� �ΰ���ũ ġȯ��, �̼����̰� ��ũ ���ż� �Ǵ� ���ռ��� ���� �����ؾ� �Ѵ�. ������ ������ ���߸���
									�ڼ��� ����Ʈ��, ��ǻ�� ��ð� ������� ���� �� ��ũ�� �޴� �����ε��� ���������� �����ϰ� �ִ�. ������
									������ �� �ִ� ���� ���������� ��ġ�ϰ� �Ǹ� �ϻ��� �����ϴ� �������� �̾��� �� �ִ� ��ŭ ���� ġ�Ḧ �޾ƾ�
									�Ѵ�.����, ����ȯ�� ���� ���� ���ص��� �������� ���õ� ���, ǳ���� �ӻ� ������ �������� �� �������� ġ�ᰡ
									���ݵž� �Ѵ�.���� ������.
								</p>
								<ul class="list-inline">
									<li><strong>���� :</strong> ������</li>
									<li><strong>��ó :</strong>
										�޵��ÿ��崺��(http://medicalworldnews.co.kr/news/view.php?idx=1510947875)</li>
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
								<h2 class="text-uppercase">�ڷγ� �����ϸ� �� �� �ٰ� �� �� ����...ȯ�⡤����
									���� �߿�</h2>
								<p class="item-intro text-muted"></p>
								<p>���� �ڷγ����̷��� ������(�ڷγ�19) �ű� Ȯ���ڰ� ó������ 9������ �Ѿ��. �ָ�ȿ���� �����鼭
									�Ϸ�� 3������ �Ѱ� �þ���. ���� �� �������� ������ ������ ���� ���� �� ���̷����� ������ ���ɼ��� ��
									�þ�� ���ɼ��� �־� �ǳ� ȯ�⸦ ����ϰ� ������ ������ ���� ����ߴ�. �� ���������� �˻�ü�谡 �ٲ�鼭
									�˷����� ���� ���� Ȯ���� ���� �� ���� ������ �����ߴ�.</p>
								<img class="img-fluid d-block mx-auto"
									src="assets/img/news/humidity.png" alt="���� �̹���" />
								<p>
									<br> <b>�޽ű� Ȯ���� 9��443��4�ֿ��� ����</b> <br> <br>��������û
									�߾ӹ濪��å���δ� 16�� 0�� ���� �ڷγ�19 �ű� Ȯ���ڰ� 9��443�� �߻��ߴٰ� ������. �ָ����� �پ���
									���ܰ˻緮���� ���� �ָ�ȿ���� �����鼭 ���� ����ߴ� 5��7177���� 3��3266�� �����ߴ�. ������ �� Ȯ����
									�� 4��9550�� ��� 4��893���� �þ� ����(Ȯ���ڰ� �� �辿 �þ�� �߼�)�� ����ߴ�. ������ ������
									���� Ȯ���ڼ��� ���� 4��° ������ ��ġ�� ��� ���̴�. ���� 1��19�� 5804���1��26��
									1��3007���2��2�� 2��268���2��9�� 4��9550���2��16�� 9��443���� ����ߴ�. ������ ��õ���б�
									�ǰ����� �������а� ������ "����ũ���� �������� ���� �ֱⰡ �� ������ ��������. �� ȭ����, ������ ���ڰ�
									�þ�� ������ �������� �츮���󿡼� ��Ÿ���� �����̴�, �̴� ���ܰ˻� ���� ���� �����̶�� ���� �Ѵ�"���
									���ߴ�. <br> <br> <b>�ް����ϸ� �� ���߿� ���ٳ� ���� ���ɼ��衦"ȯ��
										�߿�"</b> <br>��ó�� ��ӵ� �ڷγ�19 ������ �켱 �ܿ�ö ������ ������ ������ ũ��. ��� ���̷�����
									����� ���� �����Ҽ��� Ȱ���ϴ�. Ư�� �߿� ������ ����� ������ ������� ������ ��찡 ���� �ܿ￡�� ����
									���ɼ��� �� ����. õ���� �̴�񵿺��� ȣ��⳻�� ������ ������ �����ϸ� ���̷����� ��� �� �� �� ���� ��
									�ִ�. �׸��� �ǳ��� �����ϸ� ���� ���� ���߿� ���ٴϱ� ������ ������ Ȯ���� ������ ��������"�� "�׷���
									�ֱ������� �ǳ��� ȯ���ϰ� ������ �����ϴ� ���� �ſ� �߿��ϴ�"�� �����ߴ�. �ڷγ�19 ����ũ�� ���� ��ü��
									�������� ���� ſ�� �ִ�. �ڷγ�19 ���̷����� ���̷��� ǥ�鿡 �ִ� ������ũ �ܹ����� �̿��� ������ ������Ű�µ�
									����ũ�� ���̴� �� ������ũ �ܹ����� ������ ���̰� �ռ� �����ߴ� ��Ÿ ���̿� ���� �� 2�質 �� ����. ������
									12�� �̱� ������ ��ģ�� �� �����ҿ��� �����ߴ� ������ ������ ����ũ���� �ּ� 50���� ���̸� ���� ������ ����
									32���� ������ũ �ܹ����� �����Ѵ�. Ư�� ������ũ �ܹ������� �߻��� ������ ������ ��ü�� �����ϴ�
									����ü���պ���(RBD)�� ����ü���ո�Ƽ��(RBM) �������� �߰ߵƴ�. ����ũ�� ���̰� �������� ���� �� �ƴ϶�
									��� � �鿪 ȸ�Ǽ��� ���� �� ������. ��κ��� ġ���� �� ����� �� ������ũ �ܹ����� ǥ������ ���ߵ�
									������ũ �ܹ����� ���̰� ���� �Ͼ���� ���� ���, ��üġ������ ȿ���� �� �� ���ɼ��� ũ��. <br>
									<br> <b>�������Ȳ �����Ρ����� Ȯ���ڼ� ��� ���� ��</b> <br>Ȯ���� ������
									���������� ������ ���� ������ ���� �� ���� ������ �����ߴ�. �̴� �ʺ��� �ڷγ�19 Ȯ���� �˻縦
									����������(PCR) �˻翡�� �ż��׿��˻� ������� �����ϸ鼭 ��Ÿ���� ���� Ȯ���ڵ��� �� ���� ���̶�� �����̴�.
									�� ������ "���ܰ˻� �Ǽ��� �巯�� Ȯ���ڼ��� �����ϸ� ó���� �����ߴ� ������� ���� �ִٰ� ���� �� ��
									����"�� "(�巯���� �ʾҴ� Ȯ���ڸ�) �󸶸�ŭ ã�Ƴ� �� �ִ����� ����"��� �����ߴ�. ����� ������б�
									���κ��� �������� ������ "PCR �˻���� �����ϰ� �ΰ����� �������� �ż��׿��˻縦 �ø��ٺ��� ���� ȯ�ڼ���
									����� �� ����� �ִ�. �����δ� 12��, 15������ �߻����� ���ɼ��� �ִ�"�� ���ߴ�. �� ������ ���� ����
									Ȯ���� ������ ������ ��ȭ�� �濪ü�踦 �����. ���ķ��� ���� ����ũ�� Ȯ������ Ȯ���ڼ��� ��� �����ϸ鼭
									�������� �� ���� ü�赵 ����ȭ���� �� �ƴ϶� ġ����� ���ٴ� ������ �Ÿ��α� ��ħ�� �����ϰ� ��Ű�� �ʴ� ��
									��ü������ �濪�� ���������ٴ� �����̴�. õ ������ "���� Ȯ���� ���� ������ 2~5��� �� ��"�̶�� ���ߴ�.
									����ũ�� ������ �� ���� ������ ������ �Ǵ� �����̶� �˻縦 ���� �ʰ� �Ѿ�� ����鵵 ���� �ִٴ� ������.
									<br> <br> <b>�ް����� �����ʿ� ��������豺�� ġ������ ���� ���� �ʿ�</b> <br>õ
									������ "Ȯ���ڼ��� �������� ���� �ʿ�� ���� �����豺�� ���ΰ� ġ������ ������ �����ϴ°� �߿��ϴ�"�� �����ߴ�.
									�̾� "���ݵ� ��� QR�ڵ�, �濪�н� ��⸦ �ϴµ� �츮���� ��� �������� ���ٺ��� ���� ������ Ȯ���ڴ� ��
									�����ڴ�. �濪�н��� ��ǻ� 3�� ������ ������ �ΰ� ���� ���ε� �װͺ��ٴ� Ȯ���ڿ��� ġ���� ó���� �÷� ����
									ȸ����Ű�� ���� �� ȿ�����̴�"��� ���ߴ�. �� ������ ���ΰ� ����ȯ�� �� ����� ������ ���������� �ϰڴٰ� ����
									��ŭ ���豺�� ���� PCR �˻�� �ø� ���� �ֹ��ߴ�. �� ������ "60�� ���� ���ɿ��� ������ȯ��, ��ȯ��,
									����̽���, �������� �� �������� ��� �������� ���� ������ ���� �е��� ������ ��Ȯ�� �˻縦 �� ���ְ� �ִ�"��
									���ߴ�.
								</p>
								<ul class="list-inline">
									<li><strong>���� :</strong> ������</li>
									<li><strong>��ó :</strong>
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
								<h2 class="text-uppercase">�ڷγ� �ñ��� �̻��߰� �޴� ������ �ҿ� ���ε�</h2>
								<p class="item-intro text-muted"></p>
								<p></p>
								<img class="img-fluid d-block mx-auto"
									src="assets/img/news/digital.jpg" alt="..." />
								<p>
									�ڷγ�19 Ȯ���ڰ� �����ϴ� ��� ������ ������ ���ε��� ������ Ŀ���� �ִٴ� ��Ÿ��� �ҽ��̴�. ���� ���
									��ü ����� ������ �������� ����� ���̾� ��� �� �� ������ ���� �� �� �ְ�����, ����Ʈ�� �� �����б����
									���ۿ� �ͼ��� �ʾ� ����� �ϻ��Ȱ�� ������ �󸶵��� ������ �������� ��� ���� ���� �� �� �ִ� ���̴�. ���γ�
									����ü�� ������ �ҿ� ������ ���ε鿡 ���� �濪 ������ �� �����ϰ� �Ű� ��� �� ���̴�. <br> <br>
									�뱸�� �ڷγ�19 �ű� Ȯ���ڴ� ���� 21�� �Ϸ翡�� 4õ160���� �߻��ߴ�. �����ο��� 8��8õ678������, ��
									��� 60�� �̻��� 14.5%�� �����ϰ� �ִ�. ���� 60�� �̻� ��ŵ��� ���߰��������� �з��� Ȯ���ǰų�
									������ �ǽɵǸ� ����ġ�Ḧ �ް� �ȴ�. ���Ǽҿ��� �ȳ��ϴ� �������� ���ø����̼��� �ǰ����� ���� ��ġ�ϰ� ü�°�
									���� �ƹ� �����ȭ�� ���� �� �ǰ����¸� ���� �� ���� �ۿ� �Է��ؾ� �Ѵ�. <br> <br>
									������ ��ټ� 60�� �̻� ��ŵ��� ����Ʈ�� ��뿡 �ͼ����� �ʰų� �Ϻδ� �ƿ� ����Ʈ���� ���� ��쵵 �־�
									����ڳ� ��������� �� ������ �ް� �ִ�. �׳��� �Բ� ��� �ڳడ �ִٸ� �� ��뿡 ������ �ްų� ����� ��
									���� ������, Ȧ�� ���ε��� �̸����� ����ϱ� ����� �����̴�. �뱸�ÿ� ������ 2020�� ���� �뱸�� 65��
									�̻� ������ 39��4õ279������, �� ��� 1�� ������ 21.2%(8��3õ459��)�̴�. Ȧ�� ��Ȱ�ϴ� ������
									10�� �� 2���� ���̴�. <br> <br> ���ε��� �����̿�ü� ���� �� �ʿ��� �濪�н�
									QR�ڵ� ��뿡���� ������� �ް� �ִ�. ���γ� ����ü������ ����Ʈ�� ��� �����������Ϳ��� �߱޹��� �������
									������ ��ƼĿ�� ��ü�� �� �ִٰ� ������ ���ε��� ������ ������ �̸� �������� ���� ���ŷӱ⵵ �ϰ� ���� �ش�
									��쵵 ���� �ʴٰ� �Ѵ�. �� �ƿ� �̷� ��ü ����� �ִ������� �𸣴� ��쵵 �ִ�. <br> <br>
									���γ� ����ü�� ������ �簢���뿡 ���� ���ε��� ���� ���� �ν��� �ϰ� ������ ���ٸ� ��å�� �������� ���ϰ�
									�ִ� �� �����̴�. <br> <br> �뱸�� �����ڴ� ������Ʈ�� ��뿡 �ͼ����� ����
									��ŵ鿡�Դ� �Ƿ������� ���� �� ���� ��ȭ����� ���� �ǰ����¸� Ȯ���ϵ��� �ϰ� �ִ١��� ������. <br>
									<br>�ڷγ� ���°� ������ ������ ������ �������� ���� ���� ��Ȳ�̴�. ���ȿ� ������ �ִ� �����
									�ڽĵ��� �� ���� ã�ƺ˰ų� ������ �帮�� �� �������μ� �ּ��� ���� �濪��å�̴�. Ȧ�� ��� ��ŵ鿡 ���ؼ���
									���γ� ����ü���� ���� �簢���븦 ���´ٴ� �ν��� �ϰ� �����ؾ� �� ���̴�.
								</p>
								<ul class="list-inline">
									<li><strong>���� :</strong> �뱸����� ��ǥ������� �뱸�Ϻ�</li>
									<li><strong>��ó :</strong>
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
								<h2 class="text-uppercase">���߰������� �����Ǽ� ���� ���޾ơ�������ġ�� 1����, ȥ��
									���</h2>
								<p class="item-intro text-muted"></p>
								<p>���� �ڷγ����̷��� ������(�ڷγ�19) �ű� Ȯ���ڰ� ó������ 9������ �Ѿ��. �ָ�ȿ���� �����鼭
									�Ϸ�� 3������ �Ѱ� �þ���. ���� �� �������� ������ ������ ���� ���� �� ���̷����� ������ ���ɼ��� ��
									�þ�� ���ɼ��� �־� �ǳ� ȯ�⸦ ����ϰ� ������ ������ ���� ����ߴ�. �� ���������� �˻�ü�谡 �ٲ�鼭
									�˷����� ���� ���� Ȯ���� ���� �� ���� ������ �����ߴ�.</p>
								<img class="img-fluid d-block mx-auto"
									src="assets/img/news/nonfacetoface.jpg" alt="nonfacetofaceImg" />
								<p>
									<br> �ڷγ�19 Ȯ������ ������ ����ġ�ᡯ�� ���۵� �� ������°���� ������ ���忡�� ȥ���� ��������
									�ִ�. ������ ����� ������ ���� ä ���ϰ� ü�踦 �ٲ� ���� ����ġ�� ȯ�ڰ� 31�� ���� �Ѿ�� ������
									�����̴�.<br> <br> 60�� ����ġ���� A���� ���� 12�� ���� ���Ǽҷκ��� ����ġ��
									�����߰����������� �з��ƴٴ� ���ڸ� �޾Ҵ�. ���� �� ü�°�, �����ȭ��, ���� ���� ���Ե� �ǰ�����ŰƮ��
									��޵ƴ�. ������ �׻��̾���. ������ �������� ��� ��ȣ���� ��ȭ��Ŀ�� ���ڵ� ���� ���ߴ�. <br> <br>
									���� ��ħ�� ������ A�� ���� ���߰��������� �Ϸ� �� ���� ��ȭ�� �ɾ� �ǰ����¸� ����͸��ؾ� �Ѵ�. 60��
									�̻�, �鿪������ ���� �� �״�� ���߰����� �ʿ��� �����豺�̾��. ���� ���� �Դ� ġ������ ���������� ó����
									�������� ����Ǵ� ��Ȳ�� ���ƾ� �Ѵ�. ������ ���忡�� ������ ����� �ִ�. A���� ��ȣ��(��)�� �����Ǽҿ���
									Ȯ�� ����� �뺸�ް�, ���� �ݸ� �Ⱓ ���� �ǰ����¸� Ȯ���Ѵٰų� ���ٸ� �ȳ��� ���� ���� ���١��鼭 ��������
									������ ������ ���� �԰� �Ѱ�����, ���� ������ ���ߴٸ� ��Ȳ������ ��Ȳ�� �������� �͡��̶�� ���ߴ�. <br>
									<br> �� �״�� ������ ġ�ᡯ�� �ؾ� �ϴ� �Ϲݰ������� ��Ȳ�� �� �����ϴ�. ���� 14�� �缺 ������
									���� 20�� �ڸ𾾴� Ȯ�� 3�� ���� ���Ǽ� ������ �޾Ҵ�. �ھ��� �����갣 ��ħ, ��, ������ �� ������ �ʹ�
									�������� �ᵵ �� �� �������١��� ���ȳ��� �ް� �;� ���Ǽ� � ��ȭ�� �������� �� ���� ���� �ʾ�
									�����ߴ١��� �ϼҿ��ߴ�.<br> <br> �ھ��� �������� �ݸ��� ���� ��ħ ��� �ִ� ģô ����
									�ӹ�����. ������ ȥ�ڼ� ���� �޴� �͵� �������. ���� ������ �ݵ�� �����̳� ������ ������� �ϴ��󡱸鼭
									��ó���� ȥ�� ������ �־� ������ �� �� ���ٰ� �ϴ� (���Ǽҿ���) �������� ����� ��¥ ���ġ��鼭 ��۱��� ��ĥ
									�ɸ� ���� �ִٰ� �ߴ١��� ���ߴ�. �ᱹ �ٸ� ������ ��� �θ� ���� ���� Ÿ�� �� �ձ��� ������ �ְ� ����
									�ϵ� �־���. ���� ���۱����� ����ġ�Ḧ �޴� ���(36)���� ������ �ʹ� ������ ���� ��� ���� �����ߴµ�,
									���Ǽҿ� ���� �Ƿ����� ��ȭ�� ���� �� �ص� ������ �� �ƴ١��鼭 ���ָ� ��� �������� ��Ź�� ������ ����
									������ �Դµ� ȥ�� �δ� ���� ���� �������󡱰� ���ߴ�.<br> <br> 16�Ϻ��� ��� �౹��
									����ġ�� ȯ���� ó�� �Ǿ�ǰ�� ������ �� �ְ� ������, 1�� ������ ����� ���� ���� ������ ���� ������ ����
									�� ������� �ް� �ִ�. �Ϲݰ����� ���� ���Ḧ ���� ���� �Ŵ絿 ���ƽ��̺����İ��ǿ� ���籹 ������ ����ȣ�ڰ�
									���� ��� �ù�� ������ �����౹ ������ ������ ���� ������ �� �� �ִ١��鼭 ���츮�� ȯ�� �� ������� ���� ��
									�ִ� �ð��� ���� �ʾ� �� �ذ��� �ִ� �� ��ƴ١��� ���ߴ�. <br>
									<br> �̷� ��Ȳ���� ���δ� ����ġ���� ���� ü�谡 ���������� ������ ������ �ִٰ� ���ߴ�. 17��
									�տ��� �߾ӻ��������� ��ȸ���������� ���߰����� ����ġ��� ������ ���á��� �ǻ�ȸ, ���� ����ġ���� ��� Ȯ����
									���� �ǰ� ����͸��� ó�濡 ū ���� ���� �۵��ϰ� �ִ١��� ���ߴ�. ������ �̿� �޸� �缺 ������ �ް� ����ġ��
									���� ���Ǻ����� ������ 2������ ���� 16�� ��� ���ͺ信�� ���Ƿ����� �� �� ��ȭ�ߴµ� ������ �� �ƴ١���
									������� ���ϱ⵵ �ߴ�.
								</p>
								<ul class="list-inline">
									<li><strong>���� :</strong> ��ȯ��</li>
									<li><strong>��ó :</strong>
										�߾��Ϻ�(https://www.joongang.co.kr/article/25049165)</li>
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