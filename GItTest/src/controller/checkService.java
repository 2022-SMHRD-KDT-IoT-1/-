package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberVO;


@WebServlet("/checkService")
public class checkService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				// 0. 인코딩(ajax방식)
				request.setCharacterEncoding("utf-8");
				
				// 1. 파라미터 수집
				String mb_id = request.getParameter("mb_id");
				
				// 2. DAO 사용
				MemberDAO dao = new MemberDAO();
				MemberVO vo = dao.idCheck(mb_id);
				
				// 3. 응답
				request.setCharacterEncoding("utf-8");
				PrintWriter out = response.getWriter();
				
				// vo가 비어 있으면 out,print(true);
				// vo가 비어 있지 않으면 out.print(false);
				out.print(vo == null);
	}

}
