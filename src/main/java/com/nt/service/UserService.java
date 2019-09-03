package com.nt.service;

import java.util.List;

import com.nt.pojo.User;

public interface UserService {
    
	public int save(User user);

	public User findUser(User user);

	public User findUserByName(String uname);

	public List<User> findAllUser();
    //查找单个user
	public List<User> findAllUser(int id);

	public Object findByPage(int currentPage, User user);

	public void deleteUserById(int id);

	public void updateUser(User user);
}
