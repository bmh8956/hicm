package common;


import org.json.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

public class Common {
	static Connection conn = null;
	static PreparedStatement pstmt = null;
	static ResultSet rs = null;

	private static final String ALL_TABLES =
			"select " +
			"   * " +
			"from " +
			"   user_tables";

	private static final String ALL_COLS =
			"select " +
			"   COLUMN_NAME, data_type " +
			"from " +
			"   USER_TAB_COLUMNS " +
			"where " +
			"UPPER(TABLE_NAME) = ?";

	public JSONArray all_tables() {
		JSONArray jo = new JSONArray();
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(ALL_TABLES);

			rs = pstmt.executeQuery();
			while(rs.next()) {
				Map<String, Object> map = new HashMap<>();
				map.put("name", rs.getString("TABLE_NAME"));
				jo.put(map);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}

		return jo;
	}

	public JSONArray all_cols(String tb) {
//		List<Map> cols = new ArrayList<>();
		JSONArray jo = new JSONArray();
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(ALL_COLS);
			pstmt.setString(1, tb);

			rs = pstmt.executeQuery();
			while(rs.next()) {
				Map<String, Object> map = new HashMap<>();
				map.put("name", rs.getString("COLUMN_NAME"));
				map.put("type", rs.getString("DATA_TYPE"));
				jo.put(map);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
		return jo;
	}
}
