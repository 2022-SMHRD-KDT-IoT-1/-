package Pojo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {
	
	// Ʋ
	// �߻� �޼���
	
	public String execute(HttpServletRequest request, HttpServletResponse response);
	
}
