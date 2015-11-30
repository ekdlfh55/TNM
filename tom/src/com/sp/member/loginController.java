package com.sp.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller("member.loginController")
public class loginController {
	
	@Autowired
	private MemberService serviec;
	
	// 로그인
	@RequestMapping(value="/member/login",method=RequestMethod.GET)
	public String loginForm() throws Exception{
		
		return "member/login";
	}
	
	// 로그인 확인
	@RequestMapping(value="/member/login", method=RequestMethod.POST)
	public ModelAndView loginSubmit(HttpSession session, @RequestParam String userId, @RequestParam String userPwd) throws Exception {
		Member dto=service.readMember(userId);
		// 일치 확인
		if(dto==null||dto.getEnabled()==0||!dto.getUserPwd().equals(userPwd)) {
			String msg="아이디 또는 패스워드가 일치하지 않네요ㅠ_ㅠ!! 다시한번 확인해 주세요~!";
			ModelAndView mav=new ModelAndView("member/login");
			mav.addObject("message", msg);
			return mav;
		}
		
		SessionInfo info=new SessionInfo();
		info.setUserId(dto.getUserId());
		info.setUserName(dto.getUserName());
		
		// 세션에 로그인 정보 저장
		session.setAttribute("member", info);
		
		return new ModelAndView("redirect:/");
	}
	// 로그아웃
	@RequestMapping(value="/member/logout")
	public String logout(HttpSession session) throws Exception {
		// 세션에 저장된 정보 지우기
		session.removeAttribute("member");
		// 세션 초기화
		session.invalidate();
		
		return "redirect:/";
	}
}
