package com.sp.musicstory;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sp.adminmain.MusicStory;
import com.sp.adminmain.MusicStoryService;
import com.sp.common.MyUtil;

@Controller("musicstory.storyController")
public class StoryController {
	
	@Autowired
	private MusicStoryService service;
	@Autowired
	private MyUtil myUtil;
	
	@RequestMapping(value="musicstory/story",method=RequestMethod.GET)
	public ModelAndView StoryForm(HttpServletRequest req,
			@RequestParam(value="pageNum", defaultValue="1") int current_page,
			@RequestParam(value="searchKey", defaultValue="subject") String searchKey,
	        @RequestParam(value="searchValue", defaultValue="") String searchValue
			) throws Exception{
		String cp= req.getContextPath();
		  
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
		String urlList= cp+"/musicstory/story.do";
		String urlArticle= cp+"/musicstory/article.do?pageNum=" + current_page;
		
		if(!searchValue.equals("")) {
        	params = "searchKey=" +searchKey + 
        	             "&searchValue=" + URLEncoder.encode(searchValue, "utf-8");	
        }
			
		if(params.length()!=0) {
            urlList = cp+"/musicstory/musicstorylist.do?" + params;
            urlArticle = cp+"/musicstory/article.do?pageNum=" + current_page + "&"+ params;
        }
		
		ModelAndView mav=new ModelAndView(".musicstory.story");
		
		mav.addObject("title","장르별");
		mav.addObject("list",list);
		mav.addObject("urlArticle", urlArticle);
		mav.addObject("dataCount",dataCount);
        mav.addObject("pageIndexList", myUtil.pageIndexList(current_page, total_page, urlList));
		
		return mav;
	}
}
