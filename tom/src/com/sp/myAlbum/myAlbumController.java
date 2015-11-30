package com.sp.myAlbum;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sp.member.SessionInfo;

@Controller
public class myAlbumController {
	@RequestMapping(value="/myalbum/mypage",method=RequestMethod.GET)
	public ModelAndView mypage(HttpSession session) throws Exception {
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return new ModelAndView("member/login");
		}
		
		ModelAndView mav=new ModelAndView(".four.menu2.myalbum.mypage");	
		return mav;
	}
	
}
