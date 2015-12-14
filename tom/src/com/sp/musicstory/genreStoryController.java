package com.sp.musicstory;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class genreStoryController {
	@RequestMapping(value="musicstory/artistStroy",method=RequestMethod.GET)
	public ModelAndView artistStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","아티스트 갤러리");
		mav.addObject("subject","지금 주목받는 아티스트와 레이블의 비하인드 스토리! 지금바로 확인해보세요!");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/cartoonStroy",method=RequestMethod.GET)
	public ModelAndView cartoonStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","공감카툰");
		mav.addObject("subject","카투니스트와 함께 즐기는 우리의 일상 이야기,음악이야기!");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/interviewStroy",method=RequestMethod.GET)
	public ModelAndView interviewStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","릴레이 인터뷰");
		mav.addObject("subject","미러볼뮤직 마스코트 DJ미러볼이 전하는 바톤터치! 인디뮤지션 릴레이 인터뷰");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/chatStroy",method=RequestMethod.GET)
	public ModelAndView chatStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","금주의 차트");
		mav.addObject("subject","한 주간 가자 인기 있었던 국내외 음악을 꼼꼼하게 짚어드립니다.");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/classStroy",method=RequestMethod.GET)
	public ModelAndView classStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","톡톡 클래식");
		mav.addObject("subject","클래식 어렵지 않아요^^ 이야기가 있는 톡톡 클래식과 함꼐 매력적인 클래식 여행을 떠나요!");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/clubStroy",method=RequestMethod.GET)
	public ModelAndView clubStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","CLUB");
		mav.addObject("subject","지금 주목받는 아티스트와 레이블의 비하인드 스토리! 지금바로 확인해보세요!");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/hiphopStroy",method=RequestMethod.GET)
	public ModelAndView hiphopStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","HIPHOP");
		mav.addObject("subject","힙합엘이가 소개하는 차별화된 음악세계 One Step Closer To HipHop!");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/rnbStroy",method=RequestMethod.GET)
	public ModelAndView rnbStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","RNB");
		mav.addObject("subject","One step Two setp go TO Rnb!");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/edmStroy",method=RequestMethod.GET)
	public ModelAndView edmStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","EDM");
		mav.addObject("subject","한국 최고의 댄스뮤직 매거진&커뮤니티 Below의 일랙트로닉 뮤직 댄스 플레이!");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/jazzStroy",method=RequestMethod.GET)
	public ModelAndView jazzStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","JAZZ");
		mav.addObject("subject","한국최초 재즈 매거진 MMJAZZ편집장 김희준이 전하는 고품격 재즈 이야기 Jazz Travel!");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/underStroy",method=RequestMethod.GET)
	public ModelAndView underStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","언더커버뮤직");
		mav.addObject("subject","팝뮤지션을 비교 분석하여 숨겨진 원석을 발견한다! 에디터 한명륜의 언터커버 뮤직");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/starStroy",method=RequestMethod.GET)
	public ModelAndView starStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","별님의 선택");
		mav.addObject("subject","그들은 어떤 음악을 들을까? 아티스트들이 직접 선택한 그곡!");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/hiddenStroy",method=RequestMethod.GET)
	public ModelAndView hiddenStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","이주의 히든트랙");
		mav.addObject("subject","한 주간 발매된 국내외 인디음악 궁금하세요? 새로운 음악을 발견하는 재미를 느껴보세요!");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/liveStroy",method=RequestMethod.GET)
	public ModelAndView liveStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","라이브세션");
		mav.addObject("subject","쇼케이스,콘서트,내한 공연까지 현장에서 전하는 생생한 후기 총집합!");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/indiStroy",method=RequestMethod.GET)
	public ModelAndView indiStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","인디차트");
		mav.addObject("subject","길에서 음악을 만나다.라이브로 들려주는 각양각색 뮤지션의 진솔한 음악이야기!");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/issuStroy",method=RequestMethod.GET)
	public ModelAndView issuStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","이슈포커스");
		mav.addObject("subject","지금 음악계에는 무슨일이? 이슈와 트랜드에 따라 모아보는 음악들!");
		
		return mav;
	}
}
