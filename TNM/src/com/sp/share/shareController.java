package com.sp.share;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class shareController {
	@RequestMapping(value="/share/share",method=RequestMethod.GET)
	public ModelAndView shareForm(){
		ModelAndView mav=new ModelAndView(".share.share");
		mav.addObject("title", "≈ËDJ");
		return mav;
	}
}
