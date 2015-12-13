package com.sp.adminmain;

import java.io.File;

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
	public ModelAndView eventList() throws Exception {
		ModelAndView mav=new ModelAndView("admin/adminevent/eventlist");
		
		return mav;
	}
	
	// 이벤트 추가 폼
	@RequestMapping(value="/admin/event/eventcreatedform", method=RequestMethod.POST)
	public ModelAndView musicstoryCreatedForm(HttpSession session) throws Exception{
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return new ModelAndView("member/login");
		}
		
		ModelAndView mav=new ModelAndView("admin/adminevent/eventcreated");
	      mav.addObject("mode", "created");
	      
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
}
