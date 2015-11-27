package com.sp.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class adminAccountController {
	@RequestMapping(value="/admin/account",method=RequestMethod.GET)
	public ModelAndView account() throws Exception {
		ModelAndView mav=new ModelAndView(".four.menu3.admin.account");	
		return mav;
	}
}
