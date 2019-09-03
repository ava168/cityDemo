package com.nt.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.nt.pojo.User;
@Repository
public interface UserMapper {
	
	public int save(User user);

	public User select(User user);

	public User selectByUserName(String uname);

	public List<User> selectAllUser();

	public List<User> selectAllUser1(@Param("id")int id);

	public int userCount(@Param("user_id")int user_id);

	public List<User> selectUserPage(@Param("star")int star,@Param("user_id") int user_id,@Param("pageSize") int pageSize);

	public int deleteUserById(@Param("user_id")int id);

	public void updateUser(User user);
	

}
