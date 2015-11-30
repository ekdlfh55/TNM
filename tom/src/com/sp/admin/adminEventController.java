package com.sp.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class adminEventController {
	@RequestMapping(value="/admin/event",method=RequestMethod.GET)
	public ModelAndView artist() throws Exception {
		ModelAndView mav=new ModelAndView(".four.menu3.admin.event");	
		return mav;
	}
}
