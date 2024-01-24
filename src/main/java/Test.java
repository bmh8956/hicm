import board.BoardDAO;
import board.BoardDTO;
import common.Paging;

public class Test {
	public static void main(String[] args) {
		for(int i=0;i<1000;i++) {
			BoardDTO dto = new BoardDTO();
			dto.setCt_seq(87);
			dto.setMb_seq(42);
			dto.setBd_type("user");
			dto.setBd_title("test" + i);
			dto.setBd_content("content" + i);
			dto.setBd_img("img" + i);
			dto.setMb_id("bmh" + i);
			int res = BoardDAO.insert(dto);
		}

	}
}
