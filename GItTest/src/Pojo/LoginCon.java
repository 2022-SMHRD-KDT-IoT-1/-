package Pojo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberVO;

public class LoginCon implements Command {


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
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
		return "redirect:gomain.do";
	}
}
