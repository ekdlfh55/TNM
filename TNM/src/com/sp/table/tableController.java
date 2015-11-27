package com.sp.table;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class tableController {
	@RequestMapping(value="/table/freeTable")
	public ModelAndView guest() throws Exception {
		ModelAndView mav=new ModelAndView(".four.menu1.table.freeTable");	
		return mav;
	}
}
