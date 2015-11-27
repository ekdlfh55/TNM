package com.sp.myAlbum;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class myManyplayController {
	
	@RequestMapping(value="/myalbum/manyplay",method=RequestMethod.GET)
	public ModelAndView manyplay() throws Exception {
		ModelAndView mav=new ModelAndView(".four.menu2.myalbum.manyplay");	
		return mav;
	}
}
