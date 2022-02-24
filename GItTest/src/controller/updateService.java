package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberVO;

@WebServlet("/updateService")
public class updateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// post 방식의 인코딩
		request.setCharacterEncoding("EUC-KR");
		
		// 세션에 저장된 email 가져오기
		HttpSession session = request.getSession();		
		MemberVO vo = (MemberVO) session.getAttribute("vo");
		String mb_id = vo.getMb_id();
		
		// 파라미터 수집에서 form태그 통해서 보낸 값 받기
		String mb_pw = request.getParameter("mb_pw");
		String mb_name = request.getParameter("mb_name");
		String mb_phone = request.getParameter("mb_phone");

		MemberVO uvo = new MemberVO(mb_id, mb_pw, mb_name, mb_phone);

		MemberDAO dao = new MemberDAO();
		int cnt = dao.update(uvo);	

		// 성공했는지 실패했는지 판단
		if (cnt > 0) {
			// 성공했으면 session에 DB에서 꺼내온 유저정보를 저장
			session.setAttribute("vo", uvo);
			response.sendRedirect("goMain");
		} else {
			// 실패하면 저장X
			response.sendRedirect("Update.jsp");
		}

		// main.jsp로 이동
	}

}
