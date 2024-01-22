package category;

import common.JDBCUtil;
import member.MemberDTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO {
	static Connection conn = null;
	static PreparedStatement pstmt = null;
	static ResultSet rs = null;

	private static final String INSERT_CATE =
			"INSERT INTO " +
			"   category_tb (ct_name, ct_parent) " +
			"VALUES ( ? , ? )";

	private static final String GET_LIST =
			"SELECT " +
			"   * " +
			"FROM " +
			"   category_tb " +
			"WHERE " +
			"   ct_is_del = 'N' " +
			"AND " +
			"   ct_is_view = 'Y' " +
			"AND " +
			"   ct_parent = 0 " +
			"ORDER BY " +
			"   ct_seq ASC";

	private static final String DELETE =
			"UPDATE " +
			"   category_tb " +
			"SET " +
			"   ct_is_del = 'Y' " +
			"WHERE " +
			"   ct_seq = ?";

	private static final String GET_LIST_SUB =
			"SELECT " +
			"   * " +
			"FROM " +
			"   category_tb " +
			"WHERE " +
			"   ct_is_del = 'N' " +
			"AND " +
			"   ct_is_view = 'Y' " +
			"AND " +
			"   ct_parent = ? " +
			"ORDER BY " +
			"   ct_seq ASC";

	public static int set_category(CategoryDTO dto) {
		int result = 0;
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(INSERT_CATE);
			pstmt.setString(1, dto.getCt_name());
			pstmt.setInt(2, dto.getCt_parent());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
		return result;
	}

	public static List<CategoryDTO> get_list() {
		List<CategoryDTO> list = new ArrayList<>();
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(GET_LIST);

			rs = pstmt.executeQuery();
			while(rs.next()) {
				CategoryDTO dto = new CategoryDTO();
				dto.setCt_seq(rs.getInt("ct_seq"));
				dto.setCt_name(rs.getString("ct_name"));
				dto.setCt_parent(rs.getInt("ct_parent"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
		return list;
	}

	public static int delete(CategoryDTO dto) {
		int result = 0;
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(DELETE);
			pstmt.setInt(1, dto.getCt_seq());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
		return result;
	}

	public static List<CategoryDTO> get_list_sub(CategoryDTO dto1) {
		List<CategoryDTO> list = new ArrayList<>();
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(GET_LIST_SUB);
			pstmt.setInt(1, dto1.getCt_parent());

			rs = pstmt.executeQuery();
			System.out.println(GET_LIST_SUB);
			System.out.println(dto1.getCt_parent());
			while(rs.next()) {
				CategoryDTO dto = new CategoryDTO();
				dto.setCt_seq(rs.getInt("ct_seq"));
				dto.setCt_name(rs.getString("ct_name"));
				dto.setCt_parent(rs.getInt("ct_parent"));
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
