package com.sp.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("member.loginController")
public class loginController {
	
	@RequestMapping(value="/member/login",method=RequestMethod.GET)
	public String loginForm() throws Exception{
		
		return "member/login";
	}
}
