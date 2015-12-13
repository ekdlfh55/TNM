package com.sp.adminmain;

import java.io.File;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sp.common.MyUtil;
import com.sp.member.SessionInfo;

@Controller("adminmain.adminArtistController")
public class AdminArtistController {
	@Autowired
	private ArtistService service;
	@Autowired
	private MyUtil myUtil;

	@RequestMapping(value="/admin/artist")
	public ModelAndView artist(
		@RequestParam (defaultValue="list")String active) throws Exception {
		ModelAndView mav=new ModelAndView(".four.admin.adminartist.main");
		
		mav.addObject("active", active);
		
		return mav;
	}
	// 가수리스트
	@RequestMapping(value="admin/artist/artistlist")
	public ModelAndView artistList(HttpServletRequest req,
			@RequestParam(value="pageNo", defaultValue="1") int current_page,
			@RequestParam(value="searchKey", defaultValue="subject") String searchKey,
			@RequestParam(value="searchValue", defaultValue="") String searchValue) throws Exception {
		
		String cp = req. getContextPath();
		
		int numPerPage = 10;
		int total_page = 0;
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
		if(start<0) start=0;  // 주의

		map.put("start", start);
		
		List<Artist> list=service.artistlist(map);
		
		int listNum,n=0;
		Iterator<Artist> it=list.iterator();
		while(it.hasNext()){
			Artist data = it.next();
			listNum = dataCount - (start + n);
			data.setListNum(listNum);
			n++;
		}
		
		String params = "";
		String urlList= "";
		String urlArticle= "";
		
		if(!searchValue.equals("")) {
        	params = "searchKey=" +searchKey + 
        	             "&searchValue=" + URLEncoder.encode(searchValue, "utf-8");	
        }
		
		ModelAndView mav=new ModelAndView("admin/adminartist/artistlist");
		
		mav.addObject("list",list);
		mav.addObject("urlArticle", urlArticle);
		mav.addObject("dataCount",dataCount);
        mav.addObject("pageIndexList", myUtil.pageIndexList(current_page, total_page, urlList));
		
		return mav;
	}
	// 가수 추가 폼
	@RequestMapping(value="/admin/artist/artistcreatedform",method=RequestMethod.POST)
	public ModelAndView artistCreatedForm(HttpSession session) throws Exception{
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return new ModelAndView("member/login");
		}
		
		
		ModelAndView mav=new ModelAndView("admin/adminartist/artistcreated");
	      mav.addObject("mode", "created");
	      
	      return mav;
	}
	// 가수 추가
	@RequestMapping(value="/admin/artistcreated", method=RequestMethod.POST)
	public String artistCreatedSubmit(HttpSession session, Artist dto) throws Exception {
		String root=session.getServletContext().getRealPath("/");
		String path=root+File.separator+"uploads"+File.separator+"artist";
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return "redirect:/member/login";
		}
		
		dto.setUserId(info.getUserId());
		service.insertArtist(dto, path);
		
		return "redirect:/admin/artist";
	}
}
