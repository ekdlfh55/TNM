package com.sp.story;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sp.member.SessionInfo;

@Controller("story.storyController")
public class StoryController {
	@Autowired
	private StoryService service;
	// 스토리 생성
	@RequestMapping(value="/story/created",method=RequestMethod.GET)
	public ModelAndView storycreatedForm(HttpSession session) throws Exception {
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		
		if(info==null) {
			return new ModelAndView(".member.login");
		}
		ModelAndView mav=new ModelAndView(".story.created");
		mav.addObject("mode", "created");
		return mav;
	}
	
	@RequestMapping(value = "story/created", method = RequestMethod.POST)
	public String storycreatedSubmit(HttpSession session, Story story) throws Exception {
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		
		if(info==null) {
			return ".member/login";
		}
		String root = session.getServletContext().getRealPath("/");
		String pathname= root + File.separator + "uploads" + File.separator + "stroy";
		story.setUserId(info.getUserId());
		service.insertStory(story, pathname);
		
		return "redirect:/story/list.do";
	}
	
}	

