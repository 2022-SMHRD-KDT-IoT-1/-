package Pojo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberVO;

public class DeleteCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		
		MemberDAO dao = new MemberDAO();		
		int cnt = dao.delete(vo.getMb_id());
		
		if(cnt > 0) {
			session.removeAttribute("vo");
			return "redirect:logout.do";
		}else {
			return "redirect:update.jsp";
		}
		
	}

}
