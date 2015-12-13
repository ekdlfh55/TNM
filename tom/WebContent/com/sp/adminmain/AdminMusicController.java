package com.sp.adminmain;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller("adminmain.adminMusicController")
public class AdminMusicController {
	@RequestMapping(value="/admin/music")
	public ModelAndView music(@RequestParam (defaultValue="list")String active)throws Exception{
		ModelAndView mav= new ModelAndView(".four.admin.adminmusic.main");
		
		mav.addObject("active",active);
		
		return mav;
	}
	@RequestMapping(value="admin/music/musiclist")
	public ModelAndView musicList() throws Exception{
		ModelAndView mav=new ModelAndView("admin/adminmusic/musiclist");
		
		return mav;
	}
	
	@RequestMapping(value="admin/music/musiccreated")
	public ModelAndView musiccreatedForm() throws Exception{
		ModelAndView mav=new ModelAndView("admin/adminmusic/musiccreated");
			mav.addObject("mode", "created");
	      
			return mav;
	}

}
