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
	
	// �α���
	@RequestMapping(value="/member/login",method=RequestMethod.GET)
	public String loginForm() throws Exception{
		
		return "member/login";
	}
	
	// �α��� Ȯ��
	@RequestMapping(value="/member/login", method=RequestMethod.POST)
	public ModelAndView loginSubmit(HttpSession session, @RequestParam String userId, @RequestParam String userPwd) throws Exception {
		Member dto=service.readMember(userId);
		// ��ġ Ȯ��
		if(dto==null||dto.getEnabled()==0||!dto.getUserPwd().equals(userPwd)) {
			String msg="���̵� �Ǵ� �н����尡 ��ġ���� �ʳ׿��_��!! �ٽ��ѹ� Ȯ���� �ּ���~!";
			ModelAndView mav=new ModelAndView("member/login");
			mav.addObject("message", msg);
			return mav;
		}
		
		SessionInfo info=new SessionInfo();
		info.setUserId(dto.getUserId());
		info.setUserName(dto.getUserName());
		
		// ���ǿ� �α��� ���� ����
		session.setAttribute("member", info);
		
		return new ModelAndView("redirect:/");
	}
	// �α׾ƿ�
	@RequestMapping(value="/member/logout")
	public String logout(HttpSession session) throws Exception {
		// ���ǿ� ����� ���� �����
		session.removeAttribute("member");
		// ���� �ʱ�ȭ
		session.invalidate();
		
		return "redirect:/";
	}
}
