package Pojo;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardDAO;
import model.BoardVO;

public class GoViewBoard implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

	
	int num = Integer.parseInt(request.getParameter("article_seq"));
	
	// 2. DAO 메서드 사용
	BoardDAO dao = new BoardDAO();
	BoardVO bvo =dao.viewBoard(num);		
	
	// 3. request scope에 저장
	request.setAttribute("bvo", bvo);
	
	// 4. forward 방식으로 페이지 이동
	return "viewBoard.jsp";
	}
}
