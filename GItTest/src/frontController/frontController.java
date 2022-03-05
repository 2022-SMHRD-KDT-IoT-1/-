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

// ��� ��û�� �� FrontController�� ���ؾ� ����ǵ���
// ���� .do�� �پ������� �� �������� �ްڴ�.
// insert.do, login.do
@WebServlet("*.do")
public class frontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		// ��û�� ��ü URI�� ��������
		String requestURI = request.getRequestURI();
		// http://localhost:8081/Command/login.do
		
		// ContextPath ��������
		String contextPath = request.getContextPath();
		// http://localhost:8081/Command
		
		// URL ���θ� ��������
		String command = requestURI.substring(contextPath.length());
		// /login.do
		
		// ������ �̵��� ������
		String nextPage = null;
		
		// ��� POJO�� ���� ��ü
		Command com = null;
		
		
		if(command.equals("/login.do")) {
			// ��ĳ����
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
		// ������ �̵� ó��
		if(nextPage != null) {
			if(nextPage.contains("redirect")) {
				// �����̷�Ʈ ���
				response.sendRedirect(nextPage.split(":")[1]);
			}else {
				// ������ ���
				RequestDispatcher rd = request.getRequestDispatcher(nextPage);
				rd.forward(request, response);
			}
		}
		
		
//======================================================================
	}

}
