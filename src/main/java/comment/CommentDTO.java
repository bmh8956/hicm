package comment;

import lombok.Data;

import java.util.Date;

@Data
public class CommentDTO {
	private int cm_seq;
	private int mb_seq;
	private int bd_seq;
	private String cm_content;
	private int cm_parent;
	private String cm_is_view;
	private String cm_is_del;
	private Date cm_regdate;
	private Date cm_del_date;
}
