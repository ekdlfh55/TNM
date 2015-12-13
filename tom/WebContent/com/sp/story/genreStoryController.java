package com.sp.story;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class genreStoryController {
	@RequestMapping(value="story/ganreStroy",method=RequestMethod.GET)
	public ModelAndView ganreStroyForm(){
		ModelAndView mav=new ModelAndView(".story.ganreStroy");
		mav.addObject("title","¿Â∏£∫∞");
		
		return mav;
	}
}
