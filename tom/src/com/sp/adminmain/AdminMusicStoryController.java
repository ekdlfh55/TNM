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

@Controller("adminmain.adminMusicstoryController")
public class AdminMusicStoryController {
	@Autowired
	private MusicStoryService service;
	@Autowired
	private MyUtil myUtil;
	
	
	@RequestMapping(value="/admin/musicstory")
	public ModelAndView musicstory(
		@RequestParam (defaultValue="list")String active) throws Exception {
		ModelAndView mav=new ModelAndView(".four.admin.adminmusicstory.main");
		
		mav.addObject("active", active);
		
		return mav;
	}
	
	@RequestMapping(value="/admin/musicstory/musicstorylist")
	public ModelAndView musicstoryList(HttpServletRequest req,
			 @RequestParam(value="pageNum", defaultValue="1") int current_page,
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
		
		List<MusicStory> list=service.listMusicStory(map);
		int listNum,n=0;
		Iterator<MusicStory> it=list.iterator();
		while(it.hasNext()){
			MusicStory data = it.next();
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
		if(params.length()!=0) {
            urlList = cp+"/musicstory/musicstorylist.do?" + params;
            urlArticle = cp+"/musicstory/article.do?pageNum=" + current_page + "&"+ params;
        }
		
		ModelAndView mav=new ModelAndView("admin/adminmusicstory/musicstorylist");
		
		mav.addObject("list",list);
		mav.addObject("urlArticle", urlArticle);
		mav.addObject("dataCount",dataCount);
        mav.addObject("pageIndexList", myUtil.pageIndexList(current_page, total_page, urlList));
        
		return mav;
	}
	
	@RequestMapping(value="/admin/musicstory/musicstorycreatedform",method=RequestMethod.POST)
	public ModelAndView musicstoryCreatedForm(HttpSession session,
			@RequestParam(value="num", defaultValue="0") int num,
			@RequestParam(value="pageNum", defaultValue="1") String pageNum
			) throws Exception{
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return new ModelAndView("member/login");
		}
	
		MusicStory dto=service.readMusicStory(num);
		
		ModelAndView mav=new ModelAndView("/admin/adminmusicstory/musicstorycreated");
		if(num==0)
	          mav.addObject("mode", "created");
		else
		      mav.addObject("mode", "update");
	    	  mav.addObject("dto", dto);
	    	  mav.addObject("pageNum", pageNum);
	    return mav;
	}
	@RequestMapping(value="/admin/musicstorycreated",method=RequestMethod.POST)
	public String musicstoryCreatedSubmit(HttpSession session,MusicStory dto) throws Exception{
		String root=session.getServletContext().getRealPath("/");
		String path=root+File.separator+"uploads"+File.separator+"photo";
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return "redirect:/memeber/login";
		}
		
		dto.setUserId(info.getUserId());
		service.insertMusicStory(dto, path);
		
		return "redirect:/admin/musicstory";
		
	}
	
	@RequestMapping(value="/musicstory/article")
	public ModelAndView article(
			HttpSession session,
			@RequestParam(value="num") int num,
			@RequestParam(value="pageNum") String pageNum,
			@RequestParam(value="searchKey", defaultValue="subject") String searchKey,
			@RequestParam(value="searchValue", defaultValue="") String searchValue			
			) throws Exception{
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null){
			return new ModelAndView("redirect:/member/login");
		}
		searchValue=URLDecoder.decode(searchValue, "utf-8");
		service.updateHitCount(num);
		
		MusicStory dto=service.readMusicStory(num);
		if(dto==null)
			return new ModelAndView("redirect:/musicstory/musicstorylist.do?pageNum="+pageNum);
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("searchKey", searchKey);
		map.put("searchValue", searchValue);
		map.put("num", num);
		
		String params= "pageNum="+pageNum;
		if(!searchValue.equals("")){
			params += "&searchKey=" + searchKey +
						"&searchValue=" + URLEncoder.encode(searchValue, "utf-8");
		}
		
		ModelAndView mav=new ModelAndView(".musicstory.article");
		mav.addObject("dto", dto);
		mav.addObject("pageNum", pageNum);
		mav.addObject("params", params);
		
		return mav;
	}
	
	@RequestMapping(value="/admin/musicstory/updatemusicstoryform", method=RequestMethod.GET)
	public ModelAndView musicstoryUpdateForm(HttpSession session,
			@RequestParam(value="num") int num,
			@RequestParam(value="pageNum") String pageNum
			) throws Exception {
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null){
			return new ModelAndView("redirect:/member/login");
		}
		
		MusicStory dto=(MusicStory)service.readMusicStory(num);
		if(dto==null) {
			return new ModelAndView("redirect:/musicstory/musicstorylist?pageNum="+pageNum);
		}
		
		if(! info.getUserId().equals(dto.getUserId())) {
			return new ModelAndView("redirct:/musicstory/musicstorylist?pageNum="+pageNum);
		}
		
		ModelAndView mav=new ModelAndView(".four.admin.adminmusicstory.main");
		
		mav.addObject("active", "created");
		mav.addObject("num", num);
		mav.addObject("mode", "update");
		
		return mav;
	}
	
	@RequestMapping(value="/admin/updatemusicstory", method=RequestMethod.POST)
	public String musicUpdateSubmit(HttpSession session,
			MusicStory dto,
			@RequestParam(value="pageNum") String pageNum
			) throws Exception {
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return "redirect:/memeber/login";
		}
		
		service.updateMusicStory(dto);

		return "redirect:/musicstory/story";
	}
	@RequestMapping(value="/musicstory/delete")
	public ModelAndView deleteMusicStory(HttpSession session,
			@RequestParam(value="num") int num,
			@RequestParam(value="pageNum") String pageNum
			) throws Exception {
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null){
			return new ModelAndView("redirect:/member/login");
		}
		
		MusicStory dto=service.readMusicStory(num);
		if(dto==null){
			return new ModelAndView("redirect:/musicstory/list?pageNum="+pageNum);
		}
		if(! info.getUserId().equals(dto.getUserId()) && ! info.getUserId().equals("admin")){
			return new ModelAndView("redirect:/musicstory/list?pageNum="+pageNum);
		}
		service.deleteMusicStory(num);
		
		return new ModelAndView("redirect:/musicstory/story");
		
	}
}
