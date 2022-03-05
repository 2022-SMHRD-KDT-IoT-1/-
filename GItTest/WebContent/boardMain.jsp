<%@page import="model.BoardVO"%>
<%@page import="model.MemberVO"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/layout.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/util.css">
<!--===============================================================================================-->
</head>
<body>
	<%
		List<BoardVO> list = (List<BoardVO>) request.getAttribute("list");
	%>
	<div id="wrap">
		<header>
			<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
			<div class="container">
				<a class="logo_st" href="#page-top"><img
					src="./assets/img/logo2.png " alt="..." width="32px" height="32px"/ >
					CONNECT</a>
			</nav>
		</header>
		<aside></aside>
		<section>
			<div class="table100 ver3 m-b-110">
				<div class="table100-head">
					<table>
						<thead>
							<tr class="row100 head">
								<th class="cell100 column1">번호</th>
								<th class="cell100 column2">제목</th>
								<th class="cell100 column3">작성자</th>
								<th class="cell100 column4">날짜</th>
							</tr>
						</thead>
					</table>
				</div>
				<%
					System.out.println(list.size());
				int list1 = (list.size() - (list.size() - 1));
				%>


				<div class="table100-body js-pscroll">
					<table>
						<tbody>
							<%
								for (BoardVO bbvo : list) {
							%>
							<tr class="row100 body">
								<td class="cell100 column1"><%=list1%></td>
								<td class="cell100 column2"><a
									href="goviewboard.do?article_seq=<%=bbvo.getArticle_seq()%>"><%=bbvo.getArticle_title()%></a></td>
								<td class="cell100 column3"><%=bbvo.getMb_id()%></td>
								<td class="cell100 column4"><%=bbvo.getArticle_date()%></td>
							</tr>
							<%
								list1++;
							%>
							<%
								}
							%>

						</tbody>

					</table>

				</div>
			</div>
		</section>
		<article></article>
		<footer class="btn_position">
			<a href="gomain.do"><button type="button" class="btn btn-dark">HOME</button></a>
			<a href="writerBoard.jsp"><button type="button"
					class="btn btn-dark">글쓰기</button></a>
		</footer>
	</div>




	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function() {
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function() {
				ps.update();
			})
		});
	</script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>