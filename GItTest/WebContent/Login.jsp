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

<body style="background-image: url('assets/img/header-bg2.jpg') !important";>
	<!-- partial:index.partial.html -->
	<a href="Main.jsp" class="logo" target="_blank">
		<img src="assets/img/logo.png" alt="로고부분"></a>
	<div class="section">
		<div class="container">
			<div class="row full-height justify-content-center">
				<div class="col-12 text-center align-self-center py-5">
					<div class="section pb-5 pt-5 pt-sm-2 text-center">
						<h6 class="mb-0 pb-3">
							<span style="color: #ffeba7 !important";>Log In </span><span style="color: #ffeba7 !important";>Sign Up</span>
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
													<input type="text" id="loginmail" name="mb_id"
														class="form-style" placeholder="Your ID"
														autocomplete="off"> <i
														class="input-icon uil uil-at"></i>
													<P id="result"></P>
													<button type="button" onClick="idCheck()">중복확인</button>
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
												<button onclick='location.href="goMain"'>submit</button>
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
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="js/login_script.js"></script>
	<script type="text/javascript">
		function idCheck() {

			let id = $('#loginmail').val()

			$.ajax({
				url : "checkService",
				type : "post",
				data : {
					'mb_id' : id

				},
				success : function(res) {
					console.log(res);
					if (res == 'true') {
						// 사용가능한 아이디
						$('#result').html('사용가능한 이메일입니다.');
						$('#result').css('color', 'green');
					} else {
						// 중복된 아이디
						$('#result').html('중복된 이메일입니다.');
						$('#result').css('color', 'red');
					}
				},
				error : function() {
					alert("code:" + request.status + "\n" + "message:"
							+ request.responseText + "\n" + "error:" + error);
				}
			});

		}
	</script>
</body>
</html>