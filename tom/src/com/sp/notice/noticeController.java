package com.sp.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class noticeController {
	@RequestMapping(value="/notice/service",method=RequestMethod.GET)
	public ModelAndView noticeForm(){
		ModelAndView mav=new ModelAndView(".notice.service");
		mav.addObject("title", "고객지원센터");
		return mav;
	}
}
