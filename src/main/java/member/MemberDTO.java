package member;

import lombok.Data;

import java.util.Date;

@Data
public class MemberDTO {

	private int mb_seq;
	private String mb_auth;
	private String mb_id;
	private String mb_pw;
	private String mb_name;
	private String mb_gender;
	private String mb_img;
	private String mb_is_view;
	private String mb_is_del;
	private Date mb_regdate;
	private Date mb_del_date;
	private boolean loginType;
}
