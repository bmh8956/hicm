package category;

import lombok.Data;

@Data
public class CategoryDTO {
	private int ct_seq;
	private String ct_name;
	private String ct_is_view;
	private String ct_is_del;
	private int ct_parent;
}
