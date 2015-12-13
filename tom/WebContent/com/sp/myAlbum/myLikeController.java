package com.sp.myAlbum;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class myLikeController {
	
	@RequestMapping(value="/myalbum/like",method=RequestMethod.GET)
	public ModelAndView like() throws Exception {
		ModelAndView mav=new ModelAndView(".four.menu2.myalbum.like");	
		return mav;
	}
}
