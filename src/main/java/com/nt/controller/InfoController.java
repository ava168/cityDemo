package com.nt.controller;

import java.text.ParseException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.nt.pojo.Info;
import com.nt.service.InfoService;
import com.nt.utils.FcantUtils;

@Controller
@RequestMapping("/info")
public class InfoController {
	@Autowired
	private InfoService infoService;

	// String type,String mainWord表示前台参数
	@RequestMapping("/searchShow")
	public ModelAndView getPage(@RequestParam(defaultValue = "1") int currentPage, Model model, String type,
			String mainWord, HttpSession session) {
		HashMap<String, Object> map = new HashMap<>();
		if (type == null&& mainWord == null) {
			map = (HashMap<String, Object>) session.getAttribute("MAP");
		} else {
			map.put("type", type);
			map.put("mainWord", mainWord);
			session.setAttribute("MAP", map);
		}

		ModelAndView mav = new ModelAndView();
		model.addAttribute("pagemsg", infoService.findByPage(currentPage, map));// 回显分页数据
		mav.setViewName("find");
		return mav;
	}

	@RequestMapping("/infoAdd")
	public ModelAndView infoAdd(Info info, ModelAndView model) throws ParseException {
		Date date = new Date();
		info.setInfo_data(FcantUtils.formatDate(date));
		infoService.saveInfo(info);
		model.setViewName("indextemp");
		return model;
	}

	@RequestMapping("/seachForInfo")
	public ModelAndView seachForInfo(@RequestParam(defaultValue = "1") int currentPage, String payforType,
			String stateType, String infoType, HttpSession session) {
//		System.out.println(payforType);
//		System.out.println(stateType);
//		System.out.println(infoType);
		ModelAndView mav = new ModelAndView();
		if (payforType == null) {
			Map<String, Object> map = new HashMap<String, Object>();
			map = (Map<String, Object>) session.getAttribute("KEY");
			payforType = (String) map.get("payforType");
			stateType = (String) map.get("stateType");
			infoType = (String) map.get("infoType");
		} else {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("payforType", payforType);
			map.put("stateType", stateType);
			map.put("infoType", infoType);
			session.setAttribute("KEY", map);
		}
		mav.addObject("InfoPage", infoService.searchPage(currentPage, payforType, stateType, infoType));
		mav.setViewName("findInfo");
		return mav;

	}
	
	@RequestMapping("/InfoSearchPageById")
	public ModelAndView InfoSearchPageById(String info_id ,@RequestParam(defaultValue = "1") int currentPage) {
		ModelAndView mav=new ModelAndView();
		mav.addObject("INFOPAGE",infoService.findPageById(currentPage,info_id));
		mav.setViewName("pageForInfo");
		return mav;
		
	}
	
	@RequestMapping("/set")
	@ResponseBody
	public Map<String, Object> pass(String info_id ,int type) {
		Map<String , Object> map=new HashMap<String, Object>();
		System.out.println(info_id);
		System.out.println(type);
		//傳值成功
		if(type==1) {
			infoService.pass(info_id);
			map.put("flag", 1);
		}
		if(type==0) {
			infoService.payfor(info_id);
			map.put("flag",1);
		}
		
		return map;
		
	}
	
	@RequestMapping("/findInfo")
	public ModelAndView findInfo(@RequestParam(defaultValue = "1") int currentPage,String type,HttpSession session) {
		ModelAndView model=new ModelAndView();
		if(type==null) {
			type=(String) session.getAttribute("TYPE");
		}else {
			session.setAttribute("TYPE", type);
		}
		model.addObject("INFOPAGE",infoService.findInfo(currentPage,type));
		model.setViewName("findInfoTop");
		return model;
		
	}
	
	@RequestMapping("/findInfo3")
	public String  findInfo3(HttpSession session) {	
		List<Info> list=infoService.selectAllInfo();
		Info info1=new Info();
		Info info2=new Info();
		Info info3=new Info();
		Info info4=new Info();
		Info info5=new Info();
		Info info6=new Info();
		Info info7=new Info();
		Info info8=new Info();
		Info info9=new Info();
		Info info10=new Info();
		Info info11=new Info();
		
		session.setAttribute("INFO", list);
		for (int i = 0; i < list.size(); i++) {
			if(list.get(i).getInfo_type().equals("招聘信息")) {
				info1=list.get(i);
			}
			if(list.get(i).getInfo_type().equals("培训信息")) {
				info2=list.get(i);
			}
			if(list.get(i).getInfo_type().equals("房屋信息")) {
				info3=list.get(i);
			}
			if(list.get(i).getInfo_type().equals("求购信息")) {
				info4=list.get(i);
			}
			if(list.get(i).getInfo_type().equals("招商引资")) {
				info5=list.get(i);
			}
			if(list.get(i).getInfo_type().equals("公寓信息")) {
				info6=list.get(i);
			}
			if(list.get(i).getInfo_type().equals("求职信息")) {
				info7=list.get(i);
			}
			if(list.get(i).getInfo_type().equals("家教信息")) {
				info8=list.get(i);
			}
			
		}
		System.out.println(info8);
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("info1", info1);
		map.put("info2", info2);
		map.put("info3", info3);
		map.put("info4", info4);
		map.put("info5", info5);
		map.put("info6", info6);
		map.put("info7", info7);
		map.put("info8", info8);
		map.put("info9", info9);
		map.put("info10", info10);
		map.put("info11", info11);
		session.setAttribute("MAP", map);
		return "indextemp";
		
		
	}
	
	@RequestMapping("/findInfo2")
	public ModelAndView findInfo(String type) {
		ModelAndView model=new ModelAndView();
		System.out.println(type);
		int id=Integer.parseInt(type);
		Info info=infoService.getInfoById(id);
		model.addObject("INFO", info);
		model.setViewName("singleshow");
		return model;
		
	}
	
	
	
	
}
