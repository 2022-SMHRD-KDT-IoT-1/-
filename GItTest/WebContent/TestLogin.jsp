<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<header>
		<h1>CONNECT</h1>
	</header>
	<nav id="centerWindow">
		<div>
			<form action="loginService" method="post">
				<h1>로그인</h1>
				<div>
				ID를 입력하세요<br>
				<input type="text" name="mb_id" width="500px"><br>
				PW를 입력하세요<br>
				<input type="password" name="mb_pw" width="500px"><br>
				</div>
				<button type="submit">로그인하기</button>
			</form>
		</div><br>

		<div>
			<h1>회원가입</h1>
			<div>
				<form action="joinService" method="post">
					<table width="500px" height="300px">
						<tr>
							<td>ID :</td>
							<td><input name="mb_id"></td>
						</tr>
						<tr>
							<td>PW :</td>
							<td><input name="mb_pw"></td>
						</tr>
						<tr>
							<td>NAME :</td>
							<td><input name="mb_name"></td>
						</tr>
						<tr>
							<td>PHONE :</td>
							<td><input name="mb_phone"></td>
						</tr>
					</table>
					<button onclick='location.href="goMain"'>회원가입 완료</button>
				</form>
			</div>
		</div>
	</nav>

</body>
</html>