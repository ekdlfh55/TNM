package com.sp.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class adminAlbumController {
	@RequestMapping(value="/admin/album",method=RequestMethod.GET)
	public ModelAndView album() throws Exception {
		ModelAndView mav=new ModelAndView(".four.menu3.admin.album");	
		return mav;
	}
}
