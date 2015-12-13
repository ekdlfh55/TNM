package com.sp.music;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class chatController {

	@RequestMapping(value="/music/chat",method=RequestMethod.GET)
	public ModelAndView chatForm(){
		ModelAndView mav=new ModelAndView(".music.chat");
		mav.addObject("title", "ล่ ย๗ฦฎ");
		return mav;
	} 
}
