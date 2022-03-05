package frontController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Pojo.Command;
import Pojo.DeleteCon;
import Pojo.GoBoardMain;
import Pojo.GoMainCon;
import Pojo.GoViewBoard;
import Pojo.JoinCon;
import Pojo.LoginCon;
import Pojo.LogoutCon;
import Pojo.SensingCon;
import Pojo.UpdateCon;
import Pojo.WriteCon;

// 모든 요청이 이 FrontController를 통해야 실행되도록
// 끝에 .do만 붙어있으면 이 서블릿으로 받겠다.
// insert.do, login.do
@WebServlet("*.do")
public class frontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		// 요청한 전체 URI르 가져오기
		String requestURI = request.getRequestURI();
		// http://localhost:8081/Command/login.do
		
		// ContextPath 가져오기
		String contextPath = request.getContextPath();
		// http://localhost:8081/Command
		
		// URL 맵핑만 가져오기
		String command = requestURI.substring(contextPath.length());
		// /login.do
		
		// 다음에 이동할 페이지
		String nextPage = null;
		
		// 모든 POJO를 받을 객체
		Command com = null;
		
		
		if(command.equals("/login.do")) {
			// 업캐스팅
			com = new LoginCon();
			
		}else if(command.equals("/join.do")) {
			com = new JoinCon();
			
		}else if(command.equals("/gomain.do")) {
			com = new GoMainCon();
			
		}else if(command.equals("/delete.do")) {
			com = new DeleteCon();
			
		}else if(command.equals("/logout.do")) {
			com = new LogoutCon();
			
		}else if(command.equals("/update.do")) {
			com = new UpdateCon();
			
		}else if(command.equals("/senSel.do")) {
			com = new SensingCon();
			
		}else if(command.equals("/goboardmain.do")) {
			com = new GoBoardMain();
			
		}else if(command.equals("/goviewboard.do")) {
			com = new GoViewBoard();
			
		}else if(command.equals("/write.do")) {
			com = new WriteCon();
			
		}
		
		
		
		
		
		
		if(com != null) {
			nextPage = com.execute(request, response);
		}
		// =======================================
		// 페이지 이동 처리
		if(nextPage != null) {
			if(nextPage.contains("redirect")) {
				// 리다이렉트 방식
				response.sendRedirect(nextPage.split(":")[1]);
			}else {
				// 포워드 방식
				RequestDispatcher rd = request.getRequestDispatcher(nextPage);
				rd.forward(request, response);
			}
		}
		
		
//======================================================================
	}

}
