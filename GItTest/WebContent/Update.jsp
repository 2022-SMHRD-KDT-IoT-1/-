<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
		<%
			MemberVO vo = (MemberVO) session.getAttribute("vo");
		%>
	<div id="wrapper">
		<!-- Menu -->
		<nav id="Update">
			<ul class="actions vertical">
				<li><h5>ȸ����������</h5></li>
				<form action="updateService" method="post">
					<li>������ Email :</li>
					<li><input name="mb_pw" type="password"
						placeholder="PW�� �Է��ϼ���" style="width: 500px; margin: 0 auto;"></li>
					<li><input name="mb_name" type="text"
						placeholder="��ȭ��ȣ�� �Է��ϼ���" style="width: 500px; margin: 0 auto;"></li>
					<li><input name="mb_phone" type="text" placeholder="��ȭ��ȣ�� �Է��ϼ���"
						style="width: 500px; margin: 0 auto;"></li>
					<li><input type="submit" value="JoinUs" class="button fit"
						style="width: 500px; margin: 0 auto;"></li>
				</form>
				
				<a href="deleteService">
					<button>ȸ��Ż��</button>
				</a>
			</ul>
		</nav>
	</div>
</body>
</html>