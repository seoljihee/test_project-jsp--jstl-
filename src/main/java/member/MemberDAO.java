package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
		Connection con;
		PreparedStatement ps;
		ResultSet rs;

	public MemberDAO() {
		//register.jsp에서 MemberDAO의 객체를 만들었다. 
		//객체를 만들면 저절로 생성자호출이 된다.
		System.out.println("생성자 실행");
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("드라이브 로드 성공!");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	public MemberDTO register(MemberDTO dto) {
		//register.jsp에서 전달되어 온 dto값이 잘 전달 되었는지 확인하는 작업
		System.out.println(dto.getId());
		System.out.println(dto.getPwd());
		System.out.println(dto.getName());
		System.out.println(dto.getAddr());
		System.out.println(dto.getTel());
		
		return null;
	}
}
