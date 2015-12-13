package com.sp.share;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sp.member.SessionInfo;

@Controller
public class shareController {
	@RequestMapping(value="/share/share",method=RequestMethod.GET)
	public ModelAndView shareForm(){
		ModelAndView mav=new ModelAndView(".share.share");
		mav.addObject("title", "≈ËDJ");
		return mav;
	}
	
	@RequestMapping(value="/share/created",method=RequestMethod.GET)
	public ModelAndView createForm(HttpSession session)throws Exception{
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		
		if(info==null){
			return new ModelAndView("redirect:/member/login");
		}
		
		ModelAndView mav=new ModelAndView(".share.created");
		mav.addObject("title","djΩ≈√ª«œ±‚");
		mav.addObject("mode","created");
		
		return mav;
	}
}
