package com.sp.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("mainController")
@RequestMapping(value="/main.do")
public class MainController {
	 
	@RequestMapping(method=RequestMethod.GET)
	public String method() {
		return ".mainLayout";
	}
}
