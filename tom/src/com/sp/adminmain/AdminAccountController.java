package com.sp.adminmain;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller("adminmain.adminAccountController")
public class AdminAccountController {
	@RequestMapping(value="/admin/account")
	public ModelAndView account(@RequestParam (defaultValue="list")String active) throws Exception {
		ModelAndView mav=new ModelAndView(".four.admin.adminaccount.main");	
		
		mav.addObject("active", active);
		
		return mav;
	}
	// 결제리스트
	@RequestMapping(value="admin/account/accountlist")
	public ModelAndView accountList() throws Exception {
		ModelAndView mav=new ModelAndView("admin/adminaccount/accountlist");
		
		return mav;
	}
}
