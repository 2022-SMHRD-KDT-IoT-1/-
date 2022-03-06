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
			<td>체온</td>
			<td>습도</td>
			<td>x축</td>
			<td>y축</td>
			<td>z축</td>
			<td>심박수</td>			
		</tr>

	 	<%
			for (Sensor_valueVO svo : list) {
		%> 
		<tr>
			<td name= "sensing_seq"><%=svo.getSensing_seq() %></td>
			<td name= "temperature"><%=svo.getTemperature() %></td>
			<td name = "humidity"><%=svo.getHumidity() %></td>
			<td name = "xacceleration"><%=svo.getXacceleration() %></td>
			<td name = "yacceleration"><%=svo.getYacceleration() %></td>
			<td name = "zacceleration"><%=svo.getZacceleration() %></td>
			<td name = "heart_rate"><%=svo.getHeart_rate() %></td>
		</tr>
		<%
			}
		%>  
	</table>
	<a href="Main.jsp"><button id="writer">홈으로가기</button></a>
</body>
</html>