package member;

import common.JDBCUtil;

import java.sql.*;

public class MemberDAO {
	static Connection conn = null;
	static PreparedStatement pstmt = null;
	static ResultSet rs = null;

	private static final String ADMIN_CNt =
			"SELECT " +
			"   count(*) cnt " +
			"FROM " +
			"   member_tb " +
			"WHERE " +
			"   mb_auth = 'admin' " +
			"AND " +
			"   mb_is_view = 'Y' " +
			"AND " +
			"   mb_is_del = 'N'";

	private static final String GET_MEMBER =
			"SELECT " +
			"   * " +
			"FROM " +
			"   member_tb " +
			"WHERE " +
			"   mb_id = ? " +
			"AND " +
			"   mb_pw = ? " +
			"AND mb_is_view = ? " +
			"AND mb_is_del = ? ";

	public static MemberDTO getAdmin(MemberDTO dto) {
		MemberDTO dto2 = null;
		try {
			String getMember = "";
			getMember = GET_MEMBER + "AND mb_auth = ?";
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(getMember);
			pstmt.setString(1, dto.getMb_id());
			pstmt.setString(2, dto.getMb_pw());
			pstmt.setString(3, dto.getMb_is_view());
			pstmt.setString(4, dto.getMb_is_del());
			pstmt.setString(5, dto.getMb_auth());

			rs = pstmt.executeQuery();
			while(rs.next()) {
				dto2 = new MemberDTO();
				dto2.setMb_id(rs.getString("mb_id"));
				dto2.setMb_name(rs.getString("mb_name"));
				dto2.setMb_auth(rs.getString("mb_auth"));
			}
			System.out.println(dto);
			System.out.println(getMember);
			System.out.println(dto2);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
		return dto2;
	}

	public static int adminCnt() {
		int cnt = 0;
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(ADMIN_CNt);

			rs = pstmt.executeQuery();
			while(rs.next()) {
				cnt = rs.getInt("cnt");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}


		return cnt;
	}

}
