package com.care.root.member.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.care.root.member.dto.MemberDTO;

public class MemberDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public MemberDAO() {
		String url = "jdbc:oracle:thin:@210.221.253.215:1521:xe";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url,"g3","1234");
			System.out.println("디비 연결 성공!");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<MemberDTO> memberView() {
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		String sql = "select * from jsp_member";
		try {
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		while(rs.next()) {
			MemberDTO d = new MemberDTO();
			d.setId(rs.getString("id"));
			d.setPwd(rs.getString("pwd"));
			d.setName(rs.getString("name"));
			d.setAddr(rs.getString("addr"));
			
			list.add(d);
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int insertMem(MemberDTO dto) {
		String sql = "insert into jsp_member(id,pwd,name,addr) values(?,?,?,?)";
		int result = 0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPwd());
			ps.setString(3, dto.getName());
			ps.setString(4, dto.getAddr());
			result = ps.executeUpdate();
		}catch(Exception e) {
			
		}
		
		return result;
	}
	
	public MemberDTO memberInfo(String id) {
		String sql = "select * from jsp_member where id=?";
		MemberDTO dto = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next()) {
				dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	public int modify_save(MemberDTO dto) {
		String sql = "update jsp_member set addr=?,name=?,pwd=? where id=?";
		int result = 0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getAddr());
			ps.setString(2, dto.getName());
			ps.setString(3, dto.getPwd());
			ps.setString(4, dto.getId());
			result = ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
