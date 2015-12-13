package com.sp.customer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller("customer.customerController")
public class customerController {
	@RequestMapping("/customer/main")
	public ModelAndView main(@RequestParam (defaultValue="home")String active) throws Exception{
		ModelAndView mav=new ModelAndView(".customer.main");
		
		mav.addObject("active",active);
		
		return mav;
				
	}
}
