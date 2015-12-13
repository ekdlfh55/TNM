package com.sp.adminmain;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sp.member.SessionInfo;

@Controller("adminmain.adminAlbumController")
public class AdminMusicAlbumController {
	@Autowired
	private MusicAlbumService service;
	
	@RequestMapping(value="/admin/musicalbum")
	public ModelAndView musicAlbum(
		@RequestParam (defaultValue="list")String active) throws Exception {
		ModelAndView mav=new ModelAndView(".four.admin.musicadminalbum.main");
		
		mav.addObject("active", active);
		
		return mav;
	}
	
	@RequestMapping(value="/admin/musicalbum/musicalbumlist")
	public ModelAndView musicalbumList() throws Exception {
		ModelAndView mav=new ModelAndView("admin/adminmusicalbum/musicalbumlist");
		
		return mav;
	}
	

	@RequestMapping(value="/admin/musicalbum/musicalbumcreatedform",method=RequestMethod.POST)
	public ModelAndView musicalbumCreatedForm(HttpSession session) throws Exception{
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return new ModelAndView("member/login");
		}
		
		ModelAndView mav=new ModelAndView("admin/adminmusicalbum/musicalbumcreated");
	      mav.addObject("mode", "created");
	      
	      return mav;
	}
	@RequestMapping(value="/admin/musicalbum/musicalbumcreated",method=RequestMethod.POST)
	public String musicalbumCreatedSubmit(HttpSession session, MusicAlbum dto) throws Exception{
		String root=session.getServletContext().getRealPath("/");
		String path=root+File.separator+"uploads"+File.separator+"musicAlbum";
		
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return "redirect:/member/login";
		}
		
		dto.setUserId(info.getUserId());
		service.insertMusicAlbum(dto, path);

	    return "redirect:/admin/musicalbum";
	}
}
