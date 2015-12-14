package com.sp.customer.notice;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sp.common.MyUtil;
import com.sp.member.SessionInfo;

@Controller("notice.noticeContoller")
public class NoticeController {
	
	@Autowired
	private NoticeService service;
	
	@Autowired
	private MyUtil myUtil;
	
	
	@RequestMapping(value="/notice/list")
	public ModelAndView list(HttpServletRequest req,
			@RequestParam(value="pageNo", defaultValue="1") int current_page,
			@RequestParam(value="searchKey", defaultValue="subject") String searchKey,
			@RequestParam(value="searchValue", defaultValue="") String searchValue
			) throws Exception {
   	    String cp = req.getContextPath();
   	    
		int numPerPage = 10;  // �� ȭ�鿡 �����ִ� �Խù� ��
		int total_page = 0;
		int dataCount = 0;
   	    
		if(req.getMethod().equalsIgnoreCase("GET")) { // GET ����� ���
			searchValue = URLDecoder.decode(searchValue, "utf-8");
		}
		
        // ��ü ������ ��
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("searchKey", searchKey);
        map.put("searchValue", searchValue);

        dataCount = service.dataCount(map);
        if(dataCount != 0)
            total_page = myUtil.getPageCount(numPerPage,  dataCount) ;

        // �ٸ� ����� �ڷḦ �����Ͽ� ��ü ���������� ��ȭ �� ���
        if(total_page < current_page) 
            current_page = total_page;

        // 1�������� ��� ��������Ʈ ��������
        List<Notice> noticeList = null;
        if(current_page==1) {
          noticeList=service.listNoticeTop();
        }
        
        // ����Ʈ�� ����� �����͸� ��������
        int start = (current_page - 1) * numPerPage;
        if(start<0)
        	start=0;
        map.put("start", start);

        // �� ����Ʈ
        List<Notice> list = service.listNotice(map);

        // ����Ʈ�� ��ȣ
        int listNum, n = 0;
        Iterator<Notice> it=list.iterator();
        while(it.hasNext()) {
            Notice data = (Notice)it.next();
            listNum = dataCount - (start + n);
            data.setListNum(listNum);
            n++;

        }
        
        String params = "";
        String urlList = cp+"/notice/main.do?active=notice"; 
        String urlArticle = cp+"/notice/article.do?pageNo=" + current_page;
        if(!searchValue.equals("")) {
        	params = "searchKey=" +searchKey + 
        	             "&searchValue=" + URLEncoder.encode(searchValue, "utf-8");	
        }
        if(params.equals("")) {
           urlList = cp+"/notice/main.do?active=notice";
           urlArticle = cp+"/notice/article.do?pageNo=" + current_page;
        } else {
            urlList = cp+"/notice/main.do?active=notice" + params;
            urlArticle = cp+"/notice/article.do?pageNo=" + current_page + "&"+ params;
        }

        
        ModelAndView mav=new ModelAndView("customer/notice/list");

		
        mav.addObject("noticeList", noticeList);
        mav.addObject("list", list);
        mav.addObject("urlArticle", urlArticle);
        mav.addObject("pageNo", current_page);
        mav.addObject("dataCount", dataCount);
        mav.addObject("pageIndexList", myUtil.pageIndexList(current_page, total_page, urlList));		
		
		return mav;
	}
	
	@RequestMapping(value="/notice/created",method=RequestMethod.GET)
	public ModelAndView createdForm(HttpSession session) throws Exception {
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return new ModelAndView("member/login");
		}
		
		if(! info.getUserId().equals("admin")) {
			return new ModelAndView("redirect:/customer/main.do?active=notice");
		}
		
		ModelAndView mav=new ModelAndView(".customer.notice.created");
		mav.addObject("mode", "created");
		mav.addObject("title","�������� �ۼ�");
		return mav;
	}
	
	@RequestMapping(value="/notice/created",method=RequestMethod.POST)
	public ModelAndView createdSubmit(
			HttpSession session,
			Notice dto
			) throws Exception {
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return new ModelAndView("member/login/");
		}
		
		if(! info.getUserId().equals("admin")) {
			return new ModelAndView("redirect:/customer/main.do?active=notice");
		}
		
		// ����
		
		dto.setUserId(info.getUserId());
		service.insertNotice(dto);
		
		ModelAndView mav=new ModelAndView("redirect:/customer/main.do?active=notice");
		return mav;
	}
	
	@RequestMapping(value="/notice/article")
	public ModelAndView article(
			@RequestParam(value="num") int num,
			@RequestParam(value="pageNo") String pageNo,
			@RequestParam(value="searchKey", defaultValue="subject") String searchKey,
			@RequestParam(value="searchValue", defaultValue="") String searchValue
			) throws Exception {
		
		searchValue = URLDecoder.decode(searchValue, "utf-8");
		service.updateHitCount(num);

		Notice dto = service.readNotice(num);
		if(dto==null)
			new ModelAndView("redirect:/customer/main.do?active=notice?pageNo="+pageNo);
		
		
		// ��ü ���μ�
        dto.setContent(dto.getContent().replaceAll("\n", "<br>"));
        
	
		ModelAndView mav=new ModelAndView(".customer.notice.article");
		
		mav.addObject("dto", dto);
		mav.addObject("pageNo", pageNo);

		return mav;
	}
		
	@RequestMapping(value="/notice/update", method=RequestMethod.GET)
	public ModelAndView updateForm(
			HttpSession session,
			@RequestParam(value="num") int num,
			@RequestParam(value="pageNo") String pageNo
			) throws Exception {
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return new ModelAndView("member/login");
		}
		
		if(! info.getUserId().equals("admin"))
			return new ModelAndView("redirect:/notice/main.do?active=notice&pageNo="+pageNo);
		
		Notice dto = (Notice) service.readNotice(num);
		if(dto==null) {
			return new ModelAndView("redirect:/notice/main.do?active=notice&pageNo="+pageNo);
		}

		
			
		ModelAndView mav=new ModelAndView(".customer.notice.created");
		mav.addObject("mode", "update");
		mav.addObject("title","�������� ����");
		mav.addObject("pageNo", pageNo);
		mav.addObject("dto", dto);
	
		
		return mav;
	}
	
	@RequestMapping(value="/notice/update",method=RequestMethod.POST)
	public String updateSubmit(
			HttpSession session, 
			Notice dto,
			@RequestParam(value="pageNo") String pageNo
			) throws Exception {
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return "member/login";
		}
		
		if(! info.getUserId().equals("admin"))
			return "redirect:/notice/main.do?";

		dto.setUserId(info.getUserId());
		service.updateNotice(dto);
		
		return "redirect:/customer/main.do?active=notice";
	}
	
	@RequestMapping(value="/notice/delete", method=RequestMethod.GET)
	public String delete(
			HttpSession session,
			@RequestParam(value="num") int num,
			@RequestParam(value="pageNo") String pageNo
			) throws Exception {
		
				
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return ".member.login";
		}
		
		if(! info.getUserId().equals("admin"))
			return "redirect:/customer/main.do?active=notice";
		
		// ���� �����
		service.deleteNotice(num);
		
		return "redirect:/customer/main.do?active=notice";
	}
}
