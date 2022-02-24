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

		// post ����� ���ڵ�
		request.setCharacterEncoding("EUC-KR");
		
		// ���ǿ� ����� email ��������
		HttpSession session = request.getSession();		
		MemberVO vo = (MemberVO) session.getAttribute("vo");
		String mb_id = vo.getMb_id();
		
		// �Ķ���� �������� form�±� ���ؼ� ���� �� �ޱ�
		String mb_pw = request.getParameter("mb_pw");
		String mb_name = request.getParameter("mb_name");
		String mb_phone = request.getParameter("mb_phone");

		MemberVO uvo = new MemberVO(mb_id, mb_pw, mb_name, mb_phone);

		MemberDAO dao = new MemberDAO();
		int cnt = dao.update(uvo);	

		// �����ߴ��� �����ߴ��� �Ǵ�
		if (cnt > 0) {
			// ���������� session�� DB���� ������ ���������� ����
			session.setAttribute("vo", uvo);
			response.sendRedirect("goMain");
		} else {
			// �����ϸ� ����X
			response.sendRedirect("Update.jsp");
		}

		// main.jsp�� �̵�
	}

}
