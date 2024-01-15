package board;

import lombok.Data;

import java.util.Date;

@Data
public class BoardDTO {
	private int bd_seq;
	private int mb_seq;
	private int ct_seq;
	private String bd_type;
	private String bd_title;
	private String bd_content;
	private String bd_img;
	private String bd_is_view;
	private String bd_is_del;
	private Date bd_regdate;
	private Date bd_del_date;
}
