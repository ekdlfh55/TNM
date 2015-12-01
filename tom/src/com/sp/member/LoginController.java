package com.sp.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller("member.LoginController")
public class LoginController {
	
	@Autowired
	private MemberService service;
	
	// 로그인
	@RequestMapping(value="/member/login",method=RequestMethod.GET)
	public String loginForm() throws Exception{
		
		return "member/login";
	}
	
	@RequestMapping(value="/member/login",method=RequestMethod.POST)
	public String loginSubmit(HttpServletRequest req,HttpSession session,
			@RequestParam("userId") String userId,
			@RequestParam("userPwd") String userPwd) throws Exception{
		
		Member member = (Member)service.readMember(userId);
		
		if(member==null){
			req.setAttribute("message", "아이디 또는 패스워드를 잘못 입력 하셨습니다.");
			return "member/login";	
		}
		
		if(! member.getUserPwd().equals(userPwd)) {
			req.setAttribute("message", "아이디 또는 패스워드를 잘못 입력 하셨습니다.");
			return "member/login";
		}
		
		SessionInfo info = new SessionInfo();
		info.setUserId(member.getUserId());
		info.setUserName(member.getUserName());
		session.setAttribute("member", info);
		
		return "redirect:/";
	}
	@RequestMapping(value="/member/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		session.removeAttribute("member");
		session.invalidate();
		
		return "redirect:/";
	}
}
