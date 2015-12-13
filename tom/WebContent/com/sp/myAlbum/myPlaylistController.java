package com.sp.myAlbum;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class myPlaylistController {
	
	@RequestMapping(value="/myalbum/playlist",method=RequestMethod.GET)
	public ModelAndView playlist() throws Exception {
		ModelAndView mav=new ModelAndView(".four.menu2.myalbum.playlist");	
		return mav;
	}
}
