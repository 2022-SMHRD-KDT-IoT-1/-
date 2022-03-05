package Pojo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberVO;

public class UpdateCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
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

		if (cnt > 0) {
			session.setAttribute("vo", uvo);
			return "redirect:gomain.do";
		} else {
			return "redirect:update.jsp";
		}
	}

}
