package com.nt.pojo;

import java.util.List;

public class PageBean<Info> {
	private int currPage;//当前页数
    private int pageSize;//每页显示的记录数
    private int totalCount;//总记录数
    private int totalPage;//总页数
    private List<Info> lists;//每页的显示的数据
	
	public PageBean() {
		super();
	}
	public int getCurrPage() {
		return currPage;
	}
 
	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}

	public int getPageSize() {
		return pageSize;
	}
 
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
 
	public int getTotalCount() {
		return totalCount;
	}
 
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
 
	public int getTotalPage() {
		return totalPage;
	}
 
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
 
	public List<Info> getLists() {
		return lists;
	}
 
	public void setLists(List<Info> lists) {
		this.lists = lists;
	}


}
