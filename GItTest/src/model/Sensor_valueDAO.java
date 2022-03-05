package model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Sensor_valueDAO {

	private static SqlSessionFactory sqlSessionFactory;
	
	// �ʱ�ȭ �� --> �⺻������ �����ڰ� ����Ǳ� ����
	// static �ʱ�ȭ �� --> static �������� �޸𸮿� �ö� ����
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
		// 2. Mapper�� �����ص� sql�� ���
		List<Sensor_valueVO> list = session.selectList("selectSensing", mb_id);	
		// 3. session �ݱ�
		session.close();
		return list;
	}
	
}
