package Pojo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {
	
	// 틀
	// 추상 메서드
	
	public String execute(HttpServletRequest request, HttpServletResponse response);
	
}
