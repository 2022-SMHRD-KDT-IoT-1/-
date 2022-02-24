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

@WebServlet("/deleteService")
public class deleteService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 1. �Ķ���� ����
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo");

		// 2. DAO���� delete �޼��� ���
		MemberDAO dao = new MemberDAO();		
		int cnt = dao.delete(vo.getMb_id());

		// 3. ���� �������� �������� ����
		if(cnt > 0) {
			session.removeAttribute("vo");
			response.sendRedirect("goMain");
		}else {
			response.sendRedirect("Update.jsp");
		}
	}

}
