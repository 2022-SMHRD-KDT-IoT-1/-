package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberVO;


@WebServlet("/goMain")
public class goMain extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// �������κ��� vo ��������
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO) session.getAttribute("vo");
		
		if(vo != null) {
			System.out.println("�α��� ����");
		}else {
			System.out.println("�α��� ����");
		}
		
		// ������ ������� �̵�
		RequestDispatcher rd = request.getRequestDispatcher("index.html");
		rd.forward(request, response);
	}

}
