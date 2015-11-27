package com.sp.myAlbum;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class myFanController {
	
	@RequestMapping(value="/myalbum/fan",method=RequestMethod.GET)
	public ModelAndView fan() throws Exception {
		ModelAndView mav=new ModelAndView(".four.menu2.myalbum.fan");	
		return mav;
	}	
}
