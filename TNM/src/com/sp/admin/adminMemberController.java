package com.sp.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class adminMemberController {
	@RequestMapping(value="/admin/member",method=RequestMethod.GET)
	public ModelAndView member() throws Exception {
		ModelAndView mav=new ModelAndView(".four.menu3.admin.member");	
		return mav;
	}
}
