package com.sp.music;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class albumController {
	
	@RequestMapping(value="/music/album",method=RequestMethod.GET)
	public ModelAndView albumForm(){
		ModelAndView mav=new ModelAndView(".music.album");
		mav.addObject("title", "¾Ù¹ü Á¤º¸");
		return mav;
	} 
}
