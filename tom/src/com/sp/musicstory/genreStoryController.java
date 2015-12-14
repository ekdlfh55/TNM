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
		mav.addObject("title","��Ƽ��Ʈ ������");
		mav.addObject("subject","���� �ָ�޴� ��Ƽ��Ʈ�� ���̺��� �����ε� ���丮! ���ݹٷ� Ȯ���غ�����!");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/cartoonStroy",method=RequestMethod.GET)
	public ModelAndView cartoonStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","����ī��");
		mav.addObject("subject","ī���Ͻ�Ʈ�� �Բ� ���� �츮�� �ϻ� �̾߱�,�����̾߱�!");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/interviewStroy",method=RequestMethod.GET)
	public ModelAndView interviewStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","������ ���ͺ�");
		mav.addObject("subject","�̷������� ������Ʈ DJ�̷����� ���ϴ� ������ġ! �ε������ ������ ���ͺ�");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/chatStroy",method=RequestMethod.GET)
	public ModelAndView chatStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","������ ��Ʈ");
		mav.addObject("subject","�� �ְ� ���� �α� �־��� ������ ������ �Ĳ��ϰ� ¤��帳�ϴ�.");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/classStroy",method=RequestMethod.GET)
	public ModelAndView classStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","���� Ŭ����");
		mav.addObject("subject","Ŭ���� ����� �ʾƿ�^^ �̾߱Ⱑ �ִ� ���� Ŭ���İ� �Բ� �ŷ����� Ŭ���� ������ ������!");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/clubStroy",method=RequestMethod.GET)
	public ModelAndView clubStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","CLUB");
		mav.addObject("subject","���� �ָ�޴� ��Ƽ��Ʈ�� ���̺��� �����ε� ���丮! ���ݹٷ� Ȯ���غ�����!");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/hiphopStroy",method=RequestMethod.GET)
	public ModelAndView hiphopStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","HIPHOP");
		mav.addObject("subject","���տ��̰� �Ұ��ϴ� ����ȭ�� ���Ǽ��� One Step Closer To HipHop!");
		
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
		mav.addObject("subject","�ѱ� �ְ��� ������ �Ű���&Ŀ�´�Ƽ Below�� �Ϸ�Ʈ�δ� ���� �� �÷���!");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/jazzStroy",method=RequestMethod.GET)
	public ModelAndView jazzStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","JAZZ");
		mav.addObject("subject","�ѱ����� ���� �Ű��� MMJAZZ������ �������� ���ϴ� ��ǰ�� ���� �̾߱� Jazz Travel!");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/underStroy",method=RequestMethod.GET)
	public ModelAndView underStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","���Ŀ������");
		mav.addObject("subject","�˹������� �� �м��Ͽ� ������ ������ �߰��Ѵ�! ������ �Ѹ���� ����Ŀ�� ����");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/starStroy",method=RequestMethod.GET)
	public ModelAndView starStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","������ ����");
		mav.addObject("subject","�׵��� � ������ ������? ��Ƽ��Ʈ���� ���� ������ �װ�!");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/hiddenStroy",method=RequestMethod.GET)
	public ModelAndView hiddenStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","������ ����Ʈ��");
		mav.addObject("subject","�� �ְ� �߸ŵ� ������ �ε����� �ñ��ϼ���? ���ο� ������ �߰��ϴ� ��̸� ����������!");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/liveStroy",method=RequestMethod.GET)
	public ModelAndView liveStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","���̺꼼��");
		mav.addObject("subject","�����̽�,�ܼ�Ʈ,���� �������� ���忡�� ���ϴ� ������ �ı� ������!");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/indiStroy",method=RequestMethod.GET)
	public ModelAndView indiStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","�ε���Ʈ");
		mav.addObject("subject","�濡�� ������ ������.���̺�� ����ִ� ���簢�� �������� ������ �����̾߱�!");
		
		return mav;
	}
	
	@RequestMapping(value="musicstory/issuStroy",method=RequestMethod.GET)
	public ModelAndView issuStroyForm(){
		ModelAndView mav=new ModelAndView(".musicstory.ganreStroy");
		mav.addObject("title","�̽���Ŀ��");
		mav.addObject("subject","���� ���ǰ迡�� ��������? �̽��� Ʈ���忡 ���� ��ƺ��� ���ǵ�!");
		
		return mav;
	}
}
