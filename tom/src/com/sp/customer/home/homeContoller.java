package com.sp.customer.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller("home.homeController")
public class homeContoller {
	@RequestMapping(value="/home/list")
	public ModelAndView list() throws Exception{
		ModelAndView mav=new ModelAndView("customer/home/list");
		
		return mav;
	}
}
