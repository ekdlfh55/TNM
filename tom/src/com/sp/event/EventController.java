package com.sp.event;

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

import com.sp.adminmain.Event;
import com.sp.adminmain.EventService;
import com.sp.common.MyUtil;

@Controller("event.eventController")
public class EventController {
	
	@Autowired
	private EventService service;
	
	@Autowired
	private MyUtil myUtil;
	
	
	@RequestMapping(value="/event/event",method=RequestMethod.GET)
	public ModelAndView eventlist(HttpServletRequest req,
			 @RequestParam(value="pageNum", defaultValue="1") int current_page		 
	         ) throws Exception{
		String cp= req.getContextPath();
		
		int numPerPage = 10;
		int total_page =0;
		int dataCount;
		
	
		Map<String, Object> map = new HashMap<String, Object>();
		
		dataCount = service.dataCount(map);
		
		if(dataCount !=0)
			total_page = myUtil.getPageCount(numPerPage, dataCount);
		
		if(total_page < current_page)
			current_page = total_page;
		
		int start = (current_page - 1) * numPerPage;
		if(start<0) start=0;
		
		map.put("start", start);
		
		List<Event> list=service.listEvent(map);
		int listNum,n=0;
		Iterator<Event> it=list.iterator();
		while(it.hasNext()){
			Event data= it.next();
			listNum = dataCount - (start + n);
			data.setListNum(listNum);
			n++;
		}
		
		String params = "";
		String urlList = cp+"/event/event.do";
		String urlArticle= cp+"/event/article.do?pageNum=" + current_page;

		if(params.length()!=0) {
            urlList = cp+"/event/eventlist.do?" + params;
            urlArticle = cp+"/event/article.do?pageNum=" + current_page + "&"+ params;
        }
		
		ModelAndView mav=new ModelAndView(".event.event");
		
		mav.addObject("title","¿Ã∫•∆Æ");
		mav.addObject("list",list);
		mav.addObject("urlArticle", urlArticle);
		mav.addObject("dataCount",dataCount);
        mav.addObject("pageIndexList", myUtil.pageIndexList(current_page, total_page, urlList));
        
		return mav;
	}

}
