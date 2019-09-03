package com.nt.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.dao.InfoMapper;
import com.nt.pojo.Info;
import com.nt.pojo.PageBean;
import com.nt.service.InfoService;

@Service
public class InfoServiceImpl implements InfoService {
	@Autowired
	private InfoMapper infoMapper;

	/*
	 * @Override public int selectCount(HashMap<String,Object> map) { return
	 * infoMapper.selectCount(type); }
	 */

	@Override
	public PageBean<Info> findByPage(int currentPage, HashMap<String, Object> map) {
		PageBean<Info> pageBean = new PageBean<Info>();

		// 每页显示的数据
		int pageSize = 3;
		pageBean.setPageSize(pageSize);

		// 给前端数据重命名int a = Integer.parseInt(str)
		String typeFlag =  (String) map.get("type");
		int type=Integer.parseInt(typeFlag);
		String mainWord = (String) map.get("mainWord");

		// 得到type固定的总记录数
		int totalCount = infoMapper.selectCount(type, mainWord);
		// 封装总记录数
		pageBean.setTotalCount(totalCount);
		// 封装总页数
		double tc = totalCount;
		// 向上取整
		Double num = Math.ceil(tc / pageSize);
		// intValue指的是失去小数位
		int totalPage = num.intValue();
		pageBean.setTotalPage(num.intValue());

		// 每页显示的数据
		List<Info> list = new ArrayList<Info>();
		int star = (currentPage - 1) * pageSize;
		if (star <= 0) {
			star = 0;
			currentPage = 1;
		}

		if (currentPage > totalPage) {
			currentPage = totalPage;
			star = (currentPage - 1) * pageSize;

		}
		// 封装当前页数
		pageBean.setCurrPage(currentPage);
		int size = pageBean.getPageSize();
//		map.put("star", (currentPage - 1) * pageSize);
//		map.put("size", pageBean.getPageSize());
		list=infoMapper.findAllType(size,star,type,mainWord);
		pageBean.setLists(list);

		return pageBean;

	}

	@Override
	public void saveInfo(Info info) {
		infoMapper.save(info);

	}

	@Override
	public PageBean<Info> searchPage(int currentPage, String payforType, String stateType, String infoType) {
		PageBean<Info> page = new PageBean<Info>();
		// 封装页面大小
		page.setPageSize(3);

		int count = infoMapper.getCount(payforType, stateType, infoType);
		if (count == 0) {
			return page;
		}
		page.setTotalCount(count);
		double size = 3.0;
		int totolPage = (int) Math.ceil(count / size);
		page.setTotalPage(totolPage);
		if (currentPage <= 0) {
			currentPage = 1;
		}
		if (currentPage >= totolPage) {
			currentPage = totolPage;
		}
		page.setCurrPage(currentPage);
		int star = (currentPage - 1) * page.getPageSize();
		page.setLists(infoMapper.getPageList(payforType, stateType, infoType, star, page.getPageSize()));
		return page;
	}

	@Override
	public PageBean<Info> findPageById(int currentPage, String info_id) {
		PageBean<Info> page = new PageBean<Info>();
		// 封装页面尺寸
		double size = 3;
		page.setPageSize((int) size);

		// 封装总条数
		int count = infoMapper.getCountById(info_id);
		page.setTotalCount(count);

		if(count==0) {
			return page;
		}
		// 封装总页数
		int totolPage = (int) Math.ceil(count / size);
		page.setTotalPage(totolPage);

		// 封装当前页
		if (currentPage <= 0) {
			currentPage = 1;
		}
		if (currentPage >= page.getTotalPage()) {
			currentPage = page.getTotalPage();
		}
		page.setCurrPage(currentPage);

		int star = (page.getCurrPage() - 1) * page.getPageSize();
		page.setLists(infoMapper.getPageListById( info_id,star,page.getPageSize()));
		return page;
	}

	@Override
	public void pass(String info_id) {
		infoMapper.pass(info_id);
		
	}

	@Override
	public void payfor(String info_id) {
		infoMapper.payfor(info_id);
		
	}


	@Override
	public PageBean<Info> findInfo(int currentPage, String type) {
		PageBean<Info> page=new PageBean<Info>();
		double size=2;
		page.setPageSize((int) size);
		int totolCount =infoMapper.findInfo(type);
		if(totolCount==0) {
			return page;
		}
		page.setTotalCount(totolCount);
		int totolPage=(int) Math.ceil(totolCount/size);
		page.setTotalPage(totolPage);
		
		if(currentPage<=0) {
			currentPage=1;
		}
		if(currentPage>=totolPage) {
			currentPage=totolPage;
		}
		page.setCurrPage(currentPage);
		int TYPE=Integer.parseInt(type);
		int star=(currentPage-1)*page.getPageSize();
		page.setLists(infoMapper.findInfo2(TYPE,currentPage,star,page.getPageSize()));
		return page;
	}

	@Override
	public List<Info> selectAllInfo() {
		List<Info> list=new ArrayList<Info>();
		list=infoMapper.selectAllInfo();
		return list;
	}

	@Override
	public Info getInfoById(int id) {
		Info info=infoMapper.getInfoById(id);
		return info;
	}

}
