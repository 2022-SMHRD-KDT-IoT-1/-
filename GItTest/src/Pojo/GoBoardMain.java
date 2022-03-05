package Pojo;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardDAO;
import model.BoardVO;

public class GoBoardMain implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		BoardDAO dao = new BoardDAO();
		List<BoardVO> list = dao.selectBoard();
		
		// request scope에 list 담기
		request.setAttribute("list", list);
		
		// forward 방식 페이지 이동
		return "boardMain.jsp";
	}

}
