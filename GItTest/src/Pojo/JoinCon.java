package Pojo;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberVO;

public class JoinCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String mb_id = request.getParameter("mb_id");
		String mb_pw = request.getParameter("mb_pw");
		String mb_name = request.getParameter("mb_name");
		String mb_phone = request.getParameter("mb_phone");
		
		MemberVO vo = new MemberVO(mb_id, mb_pw, mb_name, mb_phone);
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.join(vo);
		
		if(cnt > 0) {
			return "redirect:Login.jsp";
		}else {
			return "redirect:gomain.do";
		}
		
	}

}
