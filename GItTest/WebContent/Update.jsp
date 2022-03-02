<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="google" content="notranslate">
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>
<link rel='stylesheet'
	href='https://unicons.iconscout.com/release/v2.1.9/css/unicons.css'>
<link rel="stylesheet" href="css/update_style.css">
</head>
<body style="background-image: url('assets/img/header-bg2.jpg') !important";>
	<%
			MemberVO vo = (MemberVO) session.getAttribute("vo");
		%>
	<!-- partial:index.partial.html -->
	<a href="Main.jsp" class="logo" target="_blank">
		<img src="assets/img/logo.png" alt="로고부분"></a>

	<div class="section">
		<div class="container">
			<div class="row full-height justify-content-center">
				<div class="col-12 text-center align-self-center py-5">
					<div class="section pb-5 pt-5 pt-sm-2 text-center">
						<h6 class="mb-0 pb-3">
							<span></span><span></span>
						</h6>
						<div class="card-3d-wrap mx-auto">
							<div class="card-3d-wrapper">

								<div class="card-front">
									<div class="center-wrap">
										<div class="section text-center">
											<h4 class="mb-4 pb-3">개인 정보 수정</h4>
											<form action="updateService" method="post">
												<div class="form-group">
													<input type="text" name="mb_name" class="form-style"
														placeholder="Your Name" id="logemail" autocomplete="off">
													<i class="input-icon uil uil-at"></i>
												</div>
												<div class="form-group mt-2">
													<input type="password" name="mb_pw" class="form-style"
														placeholder="Your Password" id="logpass"
														autocomplete="off"> <i
														class="input-icon uil uil-lock-alt"></i>
												</div>
												<div class="form-group mt-2">
													<input type="text" name="mb_phone" class="form-style"
														placeholder="Your Phone Number" id="logpass"
														autocomplete="off"> <i
														class="input-icon uil uil-lock-alt"></i>
												</div>
												<button type="submit" class="btn mt-4">submit</button>
											</form>
											<a href="deleteService">
												<button class="btn mt-4">회원탈퇴</button>
											</a>

										</div>
									</div>
								</div>