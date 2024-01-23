package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BoardDAO {
	static Connection conn = null;
	static PreparedStatement pstmt = null;
	static ResultSet rs = null;




	public static int insert(BoardDTO dto) {
		int result = 1;


		return result;
	}
}
