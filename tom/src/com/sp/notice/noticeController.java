package com.sp.notice;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sp.member.SessionInfo;

@Controller
public class noticeController {
	@RequestMapping(value="/notice/service",method=RequestMethod.GET)
	public ModelAndView noticeForm(){
		ModelAndView mav=new ModelAndView(".notice.service");
		mav.addObject("title", "고객지원센터");
		return mav;
	}
	
	@RequestMapping(value="/notice/ovoCreated",method=RequestMethod.GET)
	public ModelAndView ovocreatedForm(HttpSession session) throws Exception {
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return new ModelAndView("member/login");
		}
		
		ModelAndView mav=new ModelAndView(".notice.ovoCreated");
		mav.addObject("mode", "created");
		mav.addObject("title","1:1질문게시판");
		
		return mav;
	}
}
