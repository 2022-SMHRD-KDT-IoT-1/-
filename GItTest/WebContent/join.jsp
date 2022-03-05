<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="google" content="notranslate">
<link href="assets/css/login_styles.css" rel="stylesheet" />
</head>

<body>
<header>
<h1>회원가입</h1>
</header>
<nav>
	<form action="join.do" method="post">
		ID : <input name="mb_id"><br>
		PW : <input name="mb_pw"><br>
		NAME : <input name="mb_name"><br>
		PHONE : <input name="mb_phone"><br>

		<button type="submit">회원가입 완료</button>
	</form>
</nav>

</body>
</html>