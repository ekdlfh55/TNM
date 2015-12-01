package com.sp.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("member.JoinController")
public class JoinController {
	
	@Autowired
	private MemberService service;
	
	@RequestMapping(value="/member/join",method=RequestMethod.GET)
	public ModelAndView joinForm(){
		ModelAndView mav=new ModelAndView(".member.join");
		mav.addObject("mode","created");
		mav.addObject("title", "ȸ�� ����");
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
			mav.addObject("title", "ȸ�� ����");
			mav.addObject("message", "���̵� �ߺ����� ������ ȸ�������� �����߽��ϴ�.");
		}
		
		return mav;
	}
	

			
}
