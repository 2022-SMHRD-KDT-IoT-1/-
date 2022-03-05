<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Forty by HTML5 UP</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
<link rel="stylesheet"
	href="{% static 'bootstrap/css/bootstrap.min.css' %}">
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/layout.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/util.css">
</head>
<body>
	<div id="wrap">
		<header> <nav
			class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<a href="#page-top"><img
			src="./assets/img/logo2.png " alt="..." width="32px" height="32px"/ >
			CONNECT</a> </nav> </header>
		<aside></aside>
		<section>
		<form action="write.do" method="post"
			enctype="multipart/form-data">
			<table width="100%" class="table02">
				<caption>
					<strong><span class="t_red">*</span> 표시는 필수입력 항목입니다.</strong>
				</caption>
				<colgroup>
					<col width="20%">
					<col width="*">
				</colgroup>
				<tbody id="tbody">
					<tr>
						<th>제목<span class="t_red">*</span></th>
						<td><input id="board_subject" name="article_title" value=""
							class="tbox01" /></td>
					</tr>
					<tr>
						<th>작성자<span class="t_red">*</span></th>
						<td><input id="board_writer" name="mb_id" value=""
							class="tbox01" /></td>
					</tr>
					<tr>
						<th>첨부파일<span class="t_red">*</span></th>
						<td><input type="file" name="file" value="" class="tbox01" /></td>
					</tr>
					<tr>
						<th>내용<span class="t_red">*</span></th>
						<td><textarea id="board_content" name="article_content"
								cols="10" rows="5" class="textarea01"></textarea></td>
					</tr>

					<tr>

						<td class="btn_position" colspan="2"><input type="reset"
							value="초기화" vertical-align: middle; > <br><input type="submit" value="글쓰기" vertical-align: middle;></td>

					</tr>
				</tbody>
			</table>
		</form>
		</section>
		<article></article>

	</div>
</body>
</html>