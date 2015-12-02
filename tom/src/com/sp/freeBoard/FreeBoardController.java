package com.sp.freeBoard;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sp.common.MyUtil;
import com.sp.member.SessionInfo;

@Controller("freeBoard.freeBoardController")
public class FreeBoardController {
	@Autowired
	private FreeBoardService service;
	@Autowired
	private MyUtil myUtil;
	
	@RequestMapping(value="/table/created", method=RequestMethod.GET)
	public ModelAndView createdForm(HttpSession session) throws Exception{
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null){
			return new ModelAndView("redirect:/member/login");
		}
		ModelAndView mav=new ModelAndView(".four.menu1.table.created");
		mav.addObject("mode","created");
		return mav;
	}
	@RequestMapping(value="/table/created", method=RequestMethod.POST)
	public ModelAndView createdSubmit(HttpSession session, FreeBoard dto) throws Exception{
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null){
			return new ModelAndView("redirect:/member/login");
		}
		dto.setUserId(info.getUserId());
		
		service.insertFreeBoard(dto);
		
		return new ModelAndView("redirect:/table/freeBoard");
	}
	
		@RequestMapping(value="/table/freeBoard")
		public ModelAndView guest() throws Exception {
			ModelAndView mav=new ModelAndView(".four.menu1.table.freeBoard");	
			return mav;
		}
	
	}
