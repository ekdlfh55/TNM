package com.sp.adminmain;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sp.common.MyUtil;
import com.sp.member.Member;
import com.sp.member.MemberService;

@Controller("adminmain.adminMemberController")
public class AdminMemberController {
	
	@Autowired
	private MemberService service;
	
	@Autowired
	private MyUtil myUtil;
	
	@RequestMapping(value="/admin/member")
	public ModelAndView member(@RequestParam (defaultValue="list")String active) throws Exception {
		ModelAndView mav=new ModelAndView(".four.admin.adminmember.main");	
		
		mav.addObject("active", active);
		
		return mav;
	}
	
	@RequestMapping(value="admin/member/memberlist")
	public ModelAndView memberList(HttpServletRequest req,
			@RequestParam(value="pageNo", defaultValue="1") int current_page,
			@RequestParam(value="searchKey", defaultValue="subject") String searchKey,
			@RequestParam(value="searchValue", defaultValue="") String searchValue
			) throws Exception {
		
		String cp = req.getContextPath();
		
		int numPerPage = 10;
		int total_page =0;
		int dataCount;
		
		if (req.getMethod().equalsIgnoreCase("GET")) {
			searchValue = URLDecoder.decode(searchValue, "UTF-8");
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchKey", searchKey);
		map.put("searchValue", searchValue);

		dataCount = service.dataCount(map);
		if(dataCount !=0)
			total_page = myUtil.getPageCount(numPerPage, dataCount);
		
		if(total_page < current_page)
			current_page = total_page;

		int start = (current_page - 1) * numPerPage;
		if(start<0) start=0;  // ÁÖÀÇ

		map.put("start", start);
		
		List<Member> list=service.listMember(map);
		
		String params = "";
		String urlList= "";
		String urlArticle= "";
		
		if(!searchValue.equals("")) {
        	params = "searchKey=" +searchKey + 
        	             "&searchValue=" + URLEncoder.encode(searchValue, "utf-8");	
        }
		
		ModelAndView mav=new ModelAndView("admin/adminmember/memberlist");
		
		mav.addObject("list",list);
		mav.addObject("urlArticle", urlArticle);
		mav.addObject("dataCount",dataCount);
        mav.addObject("pageIndexList", myUtil.pageIndexList(current_page, total_page, urlList));
		
		return mav;
	}
}
