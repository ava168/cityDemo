package com.nt.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.nt.pojo.Info;

public interface InfoMapper {

	public int selectCount(@Param("type")int type, @Param("mainWord")String mainWord);

	/*
	 * public List<Info> findByPage(HashMap<String, Object> map);
	 * 
	 * public int selectType(HashMap<String, Object> map);
	 */

	public List<Info> selectByMassage(@Param("mainWord")String mainWord, @Param("star")int star, @Param("size")int size);

	public List<Info> selectByPhone(@Param("mainWord")String mainWord,@Param("star")int star, @Param("size")int size);

	public List<Info> selectByAddress(@Param("mainWord")String mainWord, @Param("star")int star, @Param("size")int size);

	public List<Info> selectById(@Param("mainWord")String mainWord,@Param("star")int star, @Param("size")int size);

	public List<Info> selectByTitle(@Param("mainWord")String mainWord, @Param("star")int star, @Param("size")int size);

	public List<Info> selectByLinkman(@Param("mainWord")String mainWord, @Param("star")int star, @Param("size")int size);

	public void save(Info info);

	public int getCount(@Param("payforType")String payforType,@Param("stateType")String stateType, @Param("infoType")String infoType);

	public List<Info> getPageList(@Param("payforType")String payforType, @Param("stateType")String stateType,
			                     @Param("infoType")String infoType,
			                       @Param("star")int star, @Param("pageSize")int pageSize);

	public int getCountById(@Param("info_id")String info_id);

	public List<Info> getPageListById(@Param("info_id")String info_id, @Param("star")int star,@Param("pageSize")int pageSize);

	public void pass(@Param("info_id")String info_id);

	public void payfor(@Param("info_id")String info_id);

	public int findInfo(@Param("type")String type);

	public List<Info> findInfo2(@Param("TYPE")int TYPE, @Param("currentPage")int currentPage, @Param("star")int star, @Param("pageSize")int pageSize);

	public List<Info> selectAllInfo();

	public Info getInfoById(@Param("id")int id);

	public List<Info> findAllType(@Param("size")int size, @Param("star")int star, @Param("type")int type, @Param("mainWord")String mainWord);

}
