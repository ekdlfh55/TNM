package com.sp.event;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("event.eventController")
public class EventController {
	
	@RequestMapping(value="event/event",method=RequestMethod.GET)
	public ModelAndView eventlist(){
		ModelAndView mav=new ModelAndView(".event.event");
		
		mav.addObject("title","¿Ã∫•∆Æ");
		
		
		return mav;
	}

}
