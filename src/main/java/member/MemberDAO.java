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
		//register.jsp���� MemberDAO�� ��ü�� �������. 
		//��ü�� ����� ������ ������ȣ���� �ȴ�.
		System.out.println("������ ����");
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("����̺� �ε� ����!");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	public MemberDTO register(MemberDTO dto) {
		//register.jsp���� ���޵Ǿ� �� dto���� �� ���� �Ǿ����� Ȯ���ϴ� �۾�
		System.out.println(dto.getId());
		System.out.println(dto.getPwd());
		System.out.println(dto.getName());
		System.out.println(dto.getAddr());
		System.out.println(dto.getTel());
		
		return null;
	}
}
