package com.sp.Faq;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class faqController {
	@RequestMapping(value="/faq/faq")
	public ModelAndView faq() throws Exception {
		ModelAndView mav=new ModelAndView(".faq.faq");	
		return mav;
	}
}
