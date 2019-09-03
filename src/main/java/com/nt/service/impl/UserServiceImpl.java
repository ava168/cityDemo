package com.nt.service.impl;

import java.util.ArrayList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import com.nt.dao.UserMapper;
import com.nt.pojo.User;
import com.nt.pojo.UserPageBean;
import com.nt.service.UserService;
import com.nt.utils.AESUtilFinal;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper uMapper;

	@Override
	public int save(User user) {
		//数据加密
		final String key = "1998071819980718";
		user.setUser_password(AESUtilFinal.encrypt(key, user.getUser_password()));
		//存储用户
		int f = uMapper.save(user);
		return f;

	}

	@Override
	public User findUser(User user) {
		final String key = "1998071819980718";
		user.setUser_password(AESUtilFinal.encrypt(key, user.getUser_password()));
		User u = uMapper.select(user);
		return u;
	}

	@Override
	public User findUserByName(@Param("uname") String uname) {
		User u = uMapper.selectByUserName(uname);
		return u;
	}

	@Override
	public List<User> findAllUser() {
		List<User> list = new ArrayList<User>();
		list = uMapper.selectAllUser();
		return list;
	}

	@Override
	public List<User> findAllUser(int id) {
		List<User> list = new ArrayList<User>();
		list = uMapper.selectAllUser1(id);
		return list;
	}

	@Override
	public UserPageBean findByPage(int currentPage, User user) {
		UserPageBean page = new UserPageBean();
		int count;

		// 查询记录总条数并封装
		count = uMapper.userCount(user.getUser_id());// 這裏有問題

		if (count == 0) {
			return page;
		}
		page.setTotalCount(count);

		// 封装当前页数
		if (currentPage <= 0) {
			currentPage = 1;
		}

		// 封装页面尺寸
		double pageSize = 3;
		page.setPageSize((int) pageSize);

		// 封装总页数
		int totalPage = (int) Math.ceil(count / pageSize);
		page.setTotalPage(totalPage);

		if (currentPage >= totalPage) {
			currentPage = totalPage;
		}
		page.setCurrPage(currentPage);
		
		// 计算开始条数
		int star = (currentPage - 1) * page.getPageSize();
		if (user == null) {
			page.setLists(uMapper.selectUserPage(star, 0, page.getPageSize()));
		} else {

			page.setLists(uMapper.selectUserPage(star, user.getUser_id(), page.getPageSize()));
		}

		return page;

	}

	@Override
	public void deleteUserById(int id) {
		uMapper.deleteUserById(id);
	}

	@Override
	public void updateUser(User user) {
		uMapper.updateUser(user);
		
	}

}
