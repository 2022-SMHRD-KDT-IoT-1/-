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

//		String temperature = request.getParameter("temperature");
//		String humidity = request.getParameter("humidity");
//		String xacceleration = request.getParameter("xacceleration");
//		String yacceleration = request.getParameter("yacceleration");
//		String zacceleration = request.getParameter("zacceleration");
//		String heart_rate = request.getParameter("heart_rate");
		
		String tem = request.getParameter("Tc");
		String hum = request.getParameter("hum");
		String xac = request.getParameter("xac");
		String yac = request.getParameter("yac");
		String zac = request.getParameter("zac");
		String heart_rate = request.getParameter("heart_rate");
		String mb_id = request.getParameter("mb_id");
		
//		double temperatures = Double.parseDouble(temperature);
//		double humiditys = Double.parseDouble(humidity);
//		double xaccelerations = Double.parseDouble(xacceleration);
//		double yaccelerations = Double.parseDouble(yacceleration);
//		double zxaccelerations = Double.parseDouble(zacceleration);
//		int heart_rates = Integer.parseInt(heart_rate);
		
		double temperatures = Double.parseDouble(tem);
		double humiditys = Double.parseDouble(hum);
		double xaccelerations = Double.parseDouble(xac);
		double yaccelerations = Double.parseDouble(yac);
		double zxaccelerations = Double.parseDouble(zac);
		int heart_rates = Integer.parseInt(heart_rate);
		
		//String mb_id = "gur5841";
		//System.out.println(sensor_seq+", "+sensing_value+", "+mb_id);
		
		Sensor_valueDAO dao = new Sensor_valueDAO();
		Sensor_valueVO svo = new Sensor_valueVO(temperatures, humiditys,xaccelerations, yaccelerations,zxaccelerations,heart_rates,mb_id);
		int cnt = dao.insert(svo);
		
	    response.setStatus(200);
	    
		
	}

}
