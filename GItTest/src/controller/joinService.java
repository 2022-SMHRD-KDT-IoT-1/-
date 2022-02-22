package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberVO;

@WebServlet("/joinService")
public class joinService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 0. 인코딩
		request.setCharacterEncoding("EUC-KR");
		
		// 1. 파라미터 수집
		String mb_id = request.getParameter("mb_id");
		String mb_pw = request.getParameter("mb_pw");
		String mb_name = request.getParameter("mb_name");
		String mb_phone = request.getParameter("mb_phone");
		
		MemberVO vo = new MemberVO(mb_id, mb_pw, mb_name, mb_phone);
		
		// 2. DAO에 넘겨줘서 DB에 저장
		MemberDAO dao = new MemberDAO();
		int cnt = dao.join(vo);
		//insert into msg_member values(?, ?, ?, ?)
		//insert -> psmt.executeUpdate(); -> int(몇 행 변화가 일어났는지)
		
		// 3. 성공여부를 판단해서
		if(cnt > 0) {
			//	성공 : join_success.jsp로 이동
			response.sendRedirect("Login.jsp");
		}else {
			//	실패 : main.jsp로 이동
			response.sendRedirect("goMain");
		}
	}

}
