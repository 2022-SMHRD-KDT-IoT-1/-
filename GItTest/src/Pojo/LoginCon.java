package Pojo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberVO;

public class LoginCon implements Command {


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 1. 파라미터 수집
		String mb_id = request.getParameter("mb_id");
		String mb_pw = request.getParameter("mb_pw");

		MemberVO vo = new MemberVO(mb_id, mb_pw);
		
		// DAO의 로그인 메서드 사용
		MemberDAO dao = new MemberDAO();
		MemberVO uvo = dao.login(vo);
		
		// 성공했는지 실패했는지 판단
		if(uvo != null) {
			// 성공했으면 session에 DB에서 꺼내온 유저정보를 저장
			HttpSession session = request.getSession();
			session.setAttribute("vo", uvo);
		}else {
			// 실패하면 저장X
			
		}
		
		// main.jsp로 이동
		return "redirect:gomain.do";
	}
}
