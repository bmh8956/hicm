package board;

import common.JDBCUtil;
import common.PageDTO;
import common.Paging;

import java.nio.file.Path;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO {
	static Connection conn = null;
	static PreparedStatement pstmt = null;
	static ResultSet rs = null;

	private static final String INSERT =
			"INSERT INTO " +
			"   board_tb (mb_seq, ct_seq, bd_type, bd_title, bd_content, bd_img, mb_id) " +
			"VALUES (?, ?, ?, ?, ?, ?, ?)";

	private static final String GET_LIST =
			"SELECT " +
			"   * " +
			"FROM " +
			"   (SELECT tb.*, rownum rn FROM (" +
			"       SELECT board_tb.*, ct_name FROM board_tb join category_tb on board_tb.ct_seq = category_tb.ct_seq ";
	private static final String GET_COUNT =
			"SELECT count(*) cnt FROM board_tb ";


	public static int insert(BoardDTO dto) {
		int result = 0;
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(INSERT);
			pstmt.setInt(1, dto.getMb_seq());
			pstmt.setInt(2, dto.getCt_seq());
			pstmt.setString(3, dto.getBd_type());
			pstmt.setString(4, dto.getBd_title());
			pstmt.setString(5, dto.getBd_content());
			pstmt.setString(6, dto.getBd_img());
			pstmt.setString(7, dto.getMb_id());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}

		return result;
	}

	public static int totalCount(BoardDTO dto) {
		int tc = 0;
		String getCount = "";
		if(dto.getListType().equals("my")) {
			getCount = " WHERE mb_seq = ?";
		}
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(GET_COUNT + getCount);
			if(dto.getListType().equals("my")) {
				pstmt.setInt(1, dto.getMb_seq());
			}
			rs = pstmt.executeQuery();
			while(rs.next()) {
				tc = rs.getInt("cnt");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
		return tc;
	}

	public static List<BoardDTO> getList(BoardDTO dto, PageDTO pd) {
		List<BoardDTO> list = new ArrayList<>();
		String getList = "";
		if(dto.getListType().equals("my")) {
			getList = "WHERE mb_seq = ? ";
		}
		String pagination = ") tb ) WHERE rn BETWEEN ? AND ?";
		try {
			System.out.println("==============================");
			System.out.println(GET_LIST + getList + pagination);
			System.out.println("==============================");
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(GET_LIST + getList + pagination);
			if(dto.getListType().equals("my")) {
				pstmt.setInt(1, dto.getMb_seq());
				pstmt.setInt(2, pd.getStart());
				pstmt.setInt(3, pd.getEnd());
			}
			rs = pstmt.executeQuery();

			while(rs.next()) {
				BoardDTO bd = new BoardDTO();
				bd.setBd_seq(rs.getInt("bd_seq"));
				bd.setMb_seq(rs.getInt("mb_seq"));
				bd.setCt_seq(rs.getInt("ct_seq"));
				bd.setBd_type(rs.getString("bd_type"));
				bd.setBd_title(rs.getString("bd_title"));
				bd.setBd_content(rs.getString("bd_content"));
				bd.setBd_img(rs.getString("bd_img"));
				bd.setBd_is_del(rs.getString("bd_is_del"));
				bd.setBd_regdate(rs.getDate("bd_regdate"));
				bd.setMb_id(rs.getString("mb_id"));
				bd.setRn(rs.getInt("rn"));
				bd.setCt_name(rs.getString("ct_name"));
				list.add(bd);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}

		return list;
	}
}
