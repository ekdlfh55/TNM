package com.sp.story;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class storyController {
	@RequestMapping(value="/story/story",method=RequestMethod.GET)
	public ModelAndView storyForm(){
		ModelAndView mav=new ModelAndView(".story.story");
		mav.addObject("title", "MusicStoy");
		return mav;
	}
	
}	

