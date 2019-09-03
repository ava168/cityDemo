package com.nt.service;

import java.util.HashMap;
import java.util.List;

import com.nt.pojo.Info;
import com.nt.pojo.PageBean;

public interface InfoService {
	
//	int  selectCount(HashMap<String,Object> map);
	PageBean<Info> findByPage(int currentPage, HashMap<String, Object> map);

	void saveInfo(Info info);

	Object searchPage(int currentPage, String payforType, String stateType, String infoType);

	PageBean<Info> findPageById(int currentPage, String info_id);

	void pass(String info_id);

	void payfor(String info_id);

	PageBean<Info> findInfo(int currentPage, String type);

	List<Info> selectAllInfo();

	Info getInfoById(int id);

	

}
