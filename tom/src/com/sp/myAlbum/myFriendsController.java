package com.sp.myAlbum;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class myFriendsController {
	
	@RequestMapping(value="/myalbum/friends",method=RequestMethod.GET)
	public ModelAndView friends() throws Exception {
		ModelAndView mav=new ModelAndView(".four.menu2.myalbum.friends");	
		return mav;
	}	
}
