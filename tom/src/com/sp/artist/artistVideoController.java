package com.sp.artist;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class artistVideoController {
	@RequestMapping(value="/artist/video")
	public ModelAndView guest() throws Exception {
		ModelAndView mav=new ModelAndView(".four.menu4.artist.video");	
		return mav;
	}
}
