package com.sp.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class joinController {
	
	@RequestMapping(value="/member/join",method=RequestMethod.GET)
	public ModelAndView joinForm(){
		ModelAndView mav=new ModelAndView(".member.join");
		mav.addObject("mode","created");
		mav.addObject("title", "회원 가입");
		return mav;
	}
}
