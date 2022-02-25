<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>
<link rel='stylesheet'
	href='https://unicons.iconscout.com/release/v2.1.9/css/unicons.css'>
<link rel="stylesheet" href="css/login_style.css">

</head>
<body>
	<!-- partial:index.partial.html -->
	<a href="Main.jsp" class="logo" target="_blank"> <img
		src="assets/img/logo.png" alt="로고부분">
	</a>

	<div class="section">
		<div class="container">
			<div class="row full-height justify-content-center">
				<div class="col-12 text-center align-self-center py-5">
					<div class="section pb-5 pt-5 pt-sm-2 text-center">
						<h6 class="mb-0 pb-3">
							<span>Log In </span><span>Sign Up</span>
						</h6>
						<input class="checkbox" type="checkbox" id="reg-log"
							name="reg-log" /> <label for="reg-log"></label>
						<div class="card-3d-wrap mx-auto">
							<div class="card-3d-wrapper">

								<div class="card-front">
									<div class="center-wrap">
										<div class="section text-center">
											<h4 class="mb-4 pb-3">Log In</h4>
											<form action="loginService" method="post">
												<div class="form-group">
													<input type="text" name="mb_id" class="form-style"
														placeholder="Your ID" id="logemail" autocomplete="off">
													<i class="input-icon uil uil-at"></i>
												</div>
												<div class="form-group mt-2">
													<input type="password" name="mb_pw" class="form-style"
														placeholder="Your Password" id="logpass"
														autocomplete="off"> <i
														class="input-icon uil uil-lock-alt"></i>
												</div>
												<button type="submit" class="btn mt-4">submit</button>
											</form>
											<p class="mb-0 mt-4 text-center">
												<a href="#0" class="link">Forgot your password?</a>
											</p>
										</div>
									</div>
								</div>

								<div class="card-back">
									<div class="center-wrap">
										<div class="section text-center">
											<h4 class="mb-4 pb-3">Sign Up</h4>
											<form action="joinService" method="post">
												<div class="form-group">
													<input type="text" name="mb_name" class="form-style"
														placeholder="Your Full Name" id="logname"
														autocomplete="off"> <i
														class="input-icon uil uil-user"></i>
												</div>
												<div class="form-group mt-2">
													<input type="text" name="mb_id" class="form-style"
														placeholder="Your ID" id="logemail" autocomplete="off">
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
														placeholder="Your Phone Number" id="logphone"
														autocomplete="off"> <i
														class="input-icon uil uil-phone-alt"></i>
												</div>
												<button onclick='location.href="goMain"' class="btn mt-4">submit</button>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- partial -->
	<script src="js/login_script.js"></script>

</body>
</html>