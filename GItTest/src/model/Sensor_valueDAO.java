package model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Sensor_valueDAO {

	private static SqlSessionFactory sqlSessionFactory;
	
	// 초기화 블럭 --> 기본적으로 생성자가 실행되기 직전
	// static 초기화 블럭 --> static 변수들이 메모리에 올라간 순간
	static {
		try {
			String resource = "SensingMapper/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);					
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// =================================================================
	
	public int insert(Sensor_valueVO svo) {
		
		SqlSession session = sqlSessionFactory.openSession(true);		
		int cnt = session.insert("Sensor_value", svo);		
		
		session.close();
		return cnt;
	}
	
	public List<Sensor_valueVO> sensingCheck(String mb_id) {
		SqlSession session = sqlSessionFactory.openSession();
		// 2. Mapper에 정의해둔 sql문 사용
		List<Sensor_valueVO> list = session.selectList("selectSensing", mb_id);	
		// 3. session 닫기
		session.close();
		return list;
	}
	
}
