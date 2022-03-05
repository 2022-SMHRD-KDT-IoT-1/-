package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberVO;
import model.Sensor_valueDAO;
import model.Sensor_valueVO;

@WebServlet("/Sensor_value")
public class Sensor_value extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO) session.getAttribute("vo");

		String sensor_seq = request.getParameter("sensor_seq");
		String sensing_value = request.getParameter("sensing_value");
		String mb_id = request.getParameter("mb_id");
		
		int sensor_seqs = Integer.parseInt(sensor_seq);
		double sensing_values = Double.parseDouble(sensing_value);
		
		//String mb_id = "gur5841";
		//System.out.println(sensor_seq+", "+sensing_value+", "+mb_id);
		
		Sensor_valueDAO dao = new Sensor_valueDAO();
		Sensor_valueVO svo = new Sensor_valueVO(sensor_seqs, sensing_values, mb_id);
		int cnt = dao.insert(svo);
		
	    response.setStatus(200);
	    
		
	}

}
