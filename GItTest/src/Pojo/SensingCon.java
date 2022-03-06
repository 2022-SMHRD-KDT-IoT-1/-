package Pojo;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberVO;
import model.Sensor_valueDAO;
import model.Sensor_valueVO;

public class SensingCon implements Command {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
	
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO) session.getAttribute("vo");
		
		
		
		String mb_id = vo.getMb_id();
		System.out.println(mb_id);
		
		
		Sensor_valueDAO dao = new Sensor_valueDAO();
		List<Sensor_valueVO> list = dao.sensingCheck(mb_id);
		
		request.setAttribute("list", list);
		
		return "Sensing_value.jsp";
		
	}
}
