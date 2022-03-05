<%@page import="model.BoardVO"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Forty by HTML5 UP</title>
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/layout.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/util.css">
</head>
<body>
	<%
	BoardVO bvo = (BoardVO)request.getAttribute("bvo");
		%>

	<header> 
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
	<a class="logo_st" href="gomaincon.do">
	<img src="./assets/img/logo2.png " alt="..." width="32px" height="32px"/ > CONNECT</a>
			</nav> 
	</header>
	<aside></aside>
	<section>
		<table width="100%" class="table02">

			<colgroup>
				<col width="20%">
				<col width="*">
			</colgroup>
			<tbody id="tbody">
				<tr>
					<th>제목</th>
					<td><%=bvo.getArticle_title() %></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><%=bvo.getMb_id() %></td>
				</tr>
				<tr >
					<th colspan="2">내용</th>
				</tr>
				<tr>
					<td colspan="2"><p><%=bvo.getArticle_content() %></p><img src="img/<%=bvo.getArticle_file() %>"></td>

				</tr>

				<tr>
					<td colspan="2"><a href="goboardmain.do"><button>뒤로가기</button></a></td>
				</tr>
			</tbody>
</table>
	</section>
	<article></article>
	<footer></footer>


	<%-- <div id = "board">
				<table id="list">
					<tr>
						<td><%=bvo.getArticle_title() %></td>
					</tr>
					<tr>
						<td><%=bvo.getMb_id() %></td>
					</tr>
					<tr>
						<td colspan="2"><%=bvo.getArticle_content() %></td>
					</tr>
					<tr>
						<td colspan="2">
							<img alt="" src="img/<%=bvo.getArticle_file()%>">
						</td>
					</tr>
					<tr>
						<td colspan="2"><a href="goBoardMain"><button>뒤로가기</button></a></td>
					</tr>
				</table>
			</div>
 --%>

</body>
</html>