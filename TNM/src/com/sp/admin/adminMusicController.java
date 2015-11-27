package com.sp.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class adminMusicController {
	@RequestMapping(value="/admin/music",method=RequestMethod.GET)
	public ModelAndView music() throws Exception {
		ModelAndView mav=new ModelAndView(".four.menu3.admin.music");	
		return mav;
	}
}
