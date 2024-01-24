package common;

import lombok.Data;

@Data
public class Paging {
	private int pageSize;
	private int blockPage;
	private int totalCount;
	private int totalPage = (int) Math.ceil((double) totalCount/pageSize);
	private int pageNum;
	private int start = (pageNum - 1) * pageSize + 1;
	private int end = pageNum * pageSize;


}
