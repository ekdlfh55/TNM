package com.sp.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class adminMusicstoryController {
	@RequestMapping(value="/admin/musicstory",method=RequestMethod.GET)
	public ModelAndView musicstory() throws Exception {
		ModelAndView mav=new ModelAndView(".four.menu3.admin.musicstory");	
		return mav;
	}
}
