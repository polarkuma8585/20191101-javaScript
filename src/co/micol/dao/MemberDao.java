package co.micol.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.micol.dto.MemberDto;

public class MemberDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "jaeheum";
	private String pw = "jaeheum";

	public MemberDao() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, pw);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<MemberDto> select() { // 여러사람의 데이터 확인
		ArrayList<MemberDto> list = new ArrayList<>();
		// 조회 구문 작성하기
		String sql = "select * from member";
		return list;
	}

	public MemberDto select(String id) { // 한 사람의 데이터 확인
		MemberDto dto = new MemberDto();
		String sql = "select * from member where member_id = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto.setId(rs.getString("member_id"));
				dto.setName(rs.getString("member_name"));
				dto.setPw(rs.getString("member_pw"));
				dto.setGrant(rs.getString("member_grant"));
				dto.setEnterDate(rs.getDate("member_enterdate"));
				dto.setAddr(rs.getString("member_address"));

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return dto;
	}

	public String isLoginCheck(String id, String pw) { // 회원로그인 확인
		String grant = null;
		String sql = "select * from member where member_id = ? and member_pw = ?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				grant = rs.getString("member_grant");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return grant;
	}

	public int insert(MemberDto dto) {
		int n = 0;
		// 추가 구문 작성

		return n;
	}

	public int update(MemberDto dto) {
		int n = 0;
		// 갱신 구문 작성

		return n;
	}

	public int delete(MemberDto dto) {
		int n = 0;
		// 삭제 구문 작성

		return n;
	}

	private void close() {
		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
