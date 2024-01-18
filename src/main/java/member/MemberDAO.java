package member;

import common.JDBCUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

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

	private static final String SET_JOIN =
			"INSERT INTO " +
			"   member_tb " +
			"(mb_auth, mb_id, mb_pw, mb_name, mb_email, mb_gender) " +
			"VALUES (?, ?, ?, ?, ?, ?)";

	private static final String GET_MEMBER_LIST =
			"SELECT " +
			"   ROW_NUMBER() OVER (ORDER BY m.mb_seq desc) row_num" +
			"   , m.* " +
			"FROM " +
			"   member_tb m " +
			"WHERE " +
			"   m.mb_auth = ? " +
			"ORDER BY " +
			"   m.mb_seq desc";

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

	public static int join(MemberDTO dto) {
		int result = 0;
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(SET_JOIN);
			pstmt.setString(1, dto.getMb_auth());
			pstmt.setString(2, dto.getMb_id());
			pstmt.setString(3, dto.getMb_pw());
			pstmt.setString(4, dto.getMb_name());
			pstmt.setString(5, dto.getMb_email());
			pstmt.setString(6, dto.getMb_gender());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
		return result;
	}

	public static List<MemberDTO> getAdminList() {
		List<MemberDTO> list = new ArrayList<>();
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(GET_MEMBER_LIST);
			pstmt.setString(1, "admin");

			rs = pstmt.executeQuery();
			System.out.println(GET_MEMBER_LIST);
			while(rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setRowNum(rs.getInt("row_num"));
				dto.setMb_id(rs.getString("mb_id"));
				dto.setMb_email(rs.getString("mb_email"));
				dto.setMb_name(rs.getString("mb_name"));
				dto.setMb_regdate(rs.getDate("mb_regdate"));
				dto.setMb_img(rs.getString("mb_img"));
				System.out.println("====================================");
				System.out.println(dto);
				System.out.println("====================================");
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
		return list;
	}
}
