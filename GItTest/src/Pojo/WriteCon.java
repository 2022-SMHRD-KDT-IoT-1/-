package Pojo;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.BoardDAO;
import model.BoardVO;

public class WriteCon implements Command {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
String savePath = request.getServletContext().getRealPath("img");
		
		// 2) 최대 크기
		int maxSize = 1024 * 1024 * 5; // 5MB
		
		// 3) 인코딩 타입
		String encoding = "euc-kr";
		
		MultipartRequest multi=null;
		try {
			multi = new MultipartRequest(
					request,
					savePath,
					maxSize,
					encoding,
					new DefaultFileRenamePolicy() // 이름이 중복되는 것을 방지 ex)img.jpg, img1.jpg
					);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		// request.getParameter("name"); 와 같음
		String article_title = multi.getParameter("article_title");
	    String mb_id = multi.getParameter("mb_id");
		String article_content = multi.getParameter("article_content");
		
		// 파일 이름 가져오기
		String article_file = multi.getFilesystemName("file");
		
		BoardVO vo = new BoardVO(article_title, mb_id, article_content, article_file);
		
		// DAO 메서드 사용
		BoardDAO dao = new BoardDAO();
		int cnt = dao.writeBoard(vo);
		
		return "goboardmain.do";
		
	}

} 
