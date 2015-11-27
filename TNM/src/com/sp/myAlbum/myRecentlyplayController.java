package com.sp.myAlbum;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class myRecentlyplayController {
	
	@RequestMapping(value="/myalbum/recentlyplay",method=RequestMethod.GET)
	public ModelAndView recently() throws Exception {
		ModelAndView mav=new ModelAndView(".four.menu2.myalbum.recentlyplay");	
		return mav;
	}
}
