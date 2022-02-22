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

@WebServlet("/loginService")
public class loginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");
		// 1. �Ķ���� ����
		String mb_id = request.getParameter("mb_id");
		String mb_pw = request.getParameter("mb_pw");

		MemberVO vo = new MemberVO(mb_id, mb_pw);
		
		// DAO�� �α��� �޼��� ���
		MemberDAO dao = new MemberDAO();
		MemberVO uvo = dao.login(vo);
		
		// �����ߴ��� �����ߴ��� �Ǵ�
		if(uvo != null) {
			// ���������� session�� DB���� ������ ���������� ����
			HttpSession session = request.getSession();
			session.setAttribute("vo", uvo);
		}else {
			// �����ϸ� ����X
			
		}
		
		// main.jsp�� �̵�
		response.sendRedirect("goMain");
	}
}
