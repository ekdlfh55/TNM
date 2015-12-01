package com.sp.account;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class acoountController {
	@RequestMapping(value="/myalbum/account")
	public ModelAndView guest() throws Exception {
		ModelAndView mav=new ModelAndView(".four.menu5.account.account");	
		return mav;
}
}