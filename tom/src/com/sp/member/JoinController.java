package com.sp.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller("member.JoinController")
public class JoinController {
	
	@Autowired
	private MemberService service;
	
	@RequestMapping(value="/member/join",method=RequestMethod.GET)
	public ModelAndView joinForm(){
		ModelAndView mav=new ModelAndView(".member.join");
		mav.addObject("mode","created");
		mav.addObject("title", "회원 가입");
		return mav;
	}
	@RequestMapping(value="/member/join",method=RequestMethod.POST)
	public ModelAndView joinSubmit(Member dto){
		
		int result=0;	
		
		try {
			 result=service.insertMember(dto);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		ModelAndView mav=new ModelAndView("member/complete");
		if(result==1){
			mav.setViewName("member/complete");		
		}else {
			mav.setViewName(".member.join");
			mav.addObject("mode", "created");
			mav.addObject("title", "회원 가입");
			mav.addObject("message", "아이디 중복등의 사유로 회원가입이 실패했습니다.");
		}
		
		return mav;
	}
	
	@RequestMapping(value="/member/pwd",method=RequestMethod.GET)
	public ModelAndView pwdForm(){
		ModelAndView mav=new ModelAndView(".member.pwd");
		return mav;
	}

	@RequestMapping(value="/member/pwd",method=RequestMethod.POST)
	public ModelAndView pwdSubmit(HttpSession session,@RequestParam(value="userPwd") String userPwd){
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return new ModelAndView("member/login");
		}
		
		Member dto=service.readMember(info.getUserId());
		if(dto==null) {
			session.invalidate();
			return new ModelAndView("redirect:/");
		}
		
		if(dto.getUserPwd().equals(userPwd)) {
			ModelAndView mav=new ModelAndView(".member.join");
			mav.addObject("dto", dto);
			mav.addObject("mode", "update");
			mav.addObject("title", "회원 정보 수정");
			return mav;
		}
		
		ModelAndView mav=new ModelAndView(".member.pwd");
		mav.addObject("message", "패스워드가 일치하지 않습니다.");
		return mav;
	}
	
	@RequestMapping(value="/member/update",method=RequestMethod.POST)
	public ModelAndView updateSubmit(HttpSession session,Member dto) throws Exception {
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return new ModelAndView("member/login");
		}
		
		int result=0;	
		
		try {
			 result=service.updateMember(dto);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		ModelAndView mav=new ModelAndView("member/complete");
		
		if(result==1){
			mav.setViewName("member/complete");
			mav.addObject("title", "회원 정보 수정");
		}		
		
		return mav;
	}
			
}
