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

@Controller("adminmain.adminEventController")
public class AdminEventController {
	
	@Autowired
	private EventService service;
	
	@Autowired
	private MyUtil myUtil;
	// 이벤트 메인
	@RequestMapping(value="/admin/event")
	public ModelAndView event(@RequestParam (defaultValue="list")String active) throws Exception {
		ModelAndView mav=new ModelAndView(".four.admin.adminevent.main");
		
		mav.addObject("active", active);
		
		return mav;
	}
	
	// 이벤트 리스트
	@RequestMapping(value="admin/event/eventlist")
	public ModelAndView eventList(HttpServletRequest req,
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
		String urlList= "";
		String urlArticle= "";
		
		if(!searchValue.equals("")) {
        	params = "searchKey=" +searchKey + 
        	             "&searchValue=" + URLEncoder.encode(searchValue, "utf-8");	
        }
		if(params.length()!=0) {
            urlList = cp+"/event/eventlist.do?" + params;
            urlArticle = cp+"/event/article.do?pageNum=" + current_page + "&"+ params;
        }
		
		ModelAndView mav=new ModelAndView("admin/adminevent/eventlist");
		
		mav.addObject("list",list);
		mav.addObject("urlArticle", urlArticle);
		mav.addObject("dataCount",dataCount);
        mav.addObject("pageIndexList", myUtil.pageIndexList(current_page, total_page, urlList));
        
		return mav;
	}
	
	// 이벤트 추가 폼
	@RequestMapping(value="/admin/event/eventcreatedform", method=RequestMethod.POST)
	public ModelAndView eventCreatedForm(HttpSession session,
			@RequestParam(value="eventNum", defaultValue="0") int eventNum,
			@RequestParam(value="pageNum", defaultValue="1") String pageNum) throws Exception{
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return new ModelAndView("member/login");
		}
		
		Event dto=service.readEvent(eventNum);
		
		ModelAndView mav=new ModelAndView("admin/adminevent/eventcreated");
	    if(eventNum==0)  
	    	mav.addObject("mode", "created");
	    else
	    	mav.addObject("mode", "update");
	    	mav.addObject("dto", dto);
	    	mav.addObject("pageNum", pageNum);
	      return mav;
	}
	
	// 이벤트 추가 서브밋
	@RequestMapping(value="/admin/eventcreated",method=RequestMethod.POST)
	public String eventCreatedSubmit(HttpSession session,Event dto) throws Exception{
		String root=session.getServletContext().getRealPath("/");
		String path=root+File.separator+"uploads"+File.separator+"event";
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return "redirect:/memeber/login";
		}
		
		dto.setUserId(info.getUserId());
		service.insertEvent(dto, path);
		
		return "redirect:/admin/event";
	}
		
	@RequestMapping(value="/event/article")
	public ModelAndView article(
			HttpSession session, 
			@RequestParam(value="eventNum") int eventNum,
			@RequestParam(value="pageNum") String pageNum,
			@RequestParam(value="searchKey", defaultValue="subject") String searchKey,
			@RequestParam(value="searchValue", defaultValue="") String searchValue			
			) throws Exception {
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null){
			return new ModelAndView("redirect:/member/login");
		}
		searchValue=URLDecoder.decode(searchValue, "utf-8");
		
		Event dto=service.readEvent(eventNum);
		if(dto==null)
			return new ModelAndView("redirect:/event/eventlist.do?pageNum="+pageNum);
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("searchKey", searchKey);
		map.put("searchValue", searchValue);
		map.put("eventNum", eventNum);
		
		String params= "pageNum="+pageNum;
		if(!searchValue.equals("")){
			params += "&searchKey=" + searchKey +
						"&searchValue=" + URLEncoder.encode(searchValue, "utf-8");
		}
		
		ModelAndView mav=new ModelAndView(".event.article");
		mav.addObject("dto", dto);
		mav.addObject("pageNum", pageNum);
		mav.addObject("params", params);
		
		return mav;
	}
	
	@RequestMapping(value="/admin/event/updateeventform", method=RequestMethod.GET)
	public ModelAndView eventUpdateForm(HttpSession session,
			@RequestParam(value="eventNum") int eventNum,
			@RequestParam(value="pageNum") String pageNum
			) throws Exception {
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null){
			return new ModelAndView("redirect:/member/login");
		}
		
		Event dto=(Event)service.readEvent(eventNum);
		if(dto==null) {
			return new ModelAndView("redirect:/event/eventlist?pageNum="+pageNum);
		}
		
		if(! info.getUserId().equals(dto.getUserId())) {
			return new ModelAndView("redirct:/event/eventlist?pageNum="+pageNum);
		}
		
		ModelAndView mav=new ModelAndView(".four.admin.adminevent.main");
		
		mav.addObject("active", "created");
		mav.addObject("eventNum", eventNum);
		mav.addObject("mode", "update");
		
		return mav;
	}
	
	@RequestMapping(value="/admin/updateevent", method=RequestMethod.POST)
	public String eventUpdateSubmit(HttpSession session,
			Event dto,
			@RequestParam(value="pageNum") String pageNum
			) throws Exception {
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return "redirect:/memeber/login";
		}
		
		service.updateEvent(dto);

		return "redirect:/event/event";
	}
}
