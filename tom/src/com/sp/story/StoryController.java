package com.sp.story;

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

import com.sp.adminmain.MusicStory;
import com.sp.adminmain.MusicStoryService;
import com.sp.common.MyUtil;
import com.sp.member.SessionInfo;

@Controller("story.storyController")
public class StoryController {
	
	@Autowired
	private MusicStoryService service;
	@Autowired
	private MyUtil myUtil;
	
	@RequestMapping(value="story/story",method=RequestMethod.GET)
	public ModelAndView StoryForm(HttpServletRequest req,
			@RequestParam(value="pageNo", defaultValue="1") int current_page,
			@RequestParam(value="searchKey", defaultValue="subject") String searchKey,
	        @RequestParam(value="searchValue", defaultValue="") String searchValue
			) throws Exception{
		String cp= req.getContextPath();
		  
		int numPerPage = 4;
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
		if(start<0) start=0;  // 주의
	
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
		String urlList= cp+"/story/story.do";
		String urlArticle= cp+"/story/article.do?pageNo=" + current_page;
		
		if(!searchValue.equals("")) {
        	params = "searchKey=" +searchKey + 
        	             "&searchValue=" + URLEncoder.encode(searchValue, "utf-8");	
        }
			
		ModelAndView mav=new ModelAndView(".story.story");
		
		mav.addObject("title","장르별");
		mav.addObject("list",list);
		mav.addObject("urlArticle", urlArticle);
		mav.addObject("dataCount",dataCount);
        mav.addObject("pageIndexList", myUtil.pageIndexList(current_page, total_page, urlList));
		
		return mav;
	}
	
	@RequestMapping(value="/story/article")
	public ModelAndView article(
			HttpSession session,
			@RequestParam(value="num") int num,
			@RequestParam(value="pageNo") String pageNo,
			@RequestParam(value="searchKey", defaultValue="subject") String searchKey,
			@RequestParam(value="searchValue", defaultValue="") String searchValue
			) throws Exception{
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		
		searchValue=URLDecoder.decode(searchValue, "utf-8");
		
		//조회수 증가
		service.updateHitCount(num);
		
		//해당 레코드 가져오기
		MusicStory dto=service.readMusicStory(num);
		
		if(dto==null)
			return new ModelAndView("redirect:/story/article.do?pageNo="+pageNo);
		
		ModelAndView mav= new ModelAndView(".story.article");
		
		mav.addObject("dto", dto);
		mav.addObject("pageNo", pageNo);
		
		return mav;
	}
}
