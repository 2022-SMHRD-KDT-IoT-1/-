<%@page import="model.MemberVO"%>
<%@page import="model.Sensor_valueVO"%>
<%@page import="java.util.List"%>
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
		request.setCharacterEncoding("euc-kr");
		List<Sensor_valueVO> list = (List<Sensor_valueVO>) request.getAttribute("list");
	%>
	<table border=1 width=500>
		<tr>
			<td>카운터</td>
			<td>온도</td>
		</tr>

		
		
		<%
			for (Sensor_valueVO svo : list) {
		%>
		<tr>
			<td name= "sensor_seq"><%=svo.getSensor_seq()%></td>
			<td name = "sensing_value"><%=svo.getSensing_value()%></td>
		</tr>
		<%
			}
		%> 
	</table>
	<a href="Main.jsp"><button id="writer">홈으로가기</button></a>
</body>
</html>