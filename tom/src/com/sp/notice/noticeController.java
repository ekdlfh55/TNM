package com.sp.notice;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sp.common.MyUtil;
import com.sp.member.SessionInfo;

@Controller("notice.noticeController")
public class noticeController {
	@Resource(name="notice.OvoNoticeService")
	private OvoNoticeService service;
	
	@Resource(name = "myUtil")
	private MyUtil myUtil;
	
	
	@RequestMapping(value="/notice/ovo/list",method=RequestMethod.GET)
	public ModelAndView noticeForm(){
		ModelAndView mav=new ModelAndView(".notice.ovo.list");
		mav.addObject("title", "고객지원센터");
		return mav;
	}
	
	@RequestMapping(value="/notice/ovo/created",method=RequestMethod.GET)
	public ModelAndView ovoCreatedForm(HttpSession session) throws Exception {
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return new ModelAndView("member/login");
		}
		
		ModelAndView mav=new ModelAndView(".notice.ovo.created");
		mav.addObject("mode", "created");
		mav.addObject("title","1:1질문게시판");
		
		return mav;
	}
	
	@RequestMapping(value="/notice/ovo/created",method=RequestMethod.POST)
	public String ovoCreatedSubmit(HttpSession session, OvoNotice ovonotice) throws Exception{
	
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return "redirect:/member/login";
		}
		
		ovonotice.setUserId(info.getUserId());
		service.insertOvoNotice(ovonotice, "created");
		
		return "redirect:/notice/ovo/list.do";
	}
	
	@RequestMapping(value="/notice/ove/list")
	public ModelAndView list(HttpServletRequest req,@RequestParam(value = "pageNum", defaultValue = "1") int current_page,
			@RequestParam(value = "searchKey", defaultValue = "subject") String searchKey,@RequestParam(value = "searchValue", defaultValue = "") String searchValue
			) throws Exception {
		
		String cp = req.getContextPath();

		int numPerPage = 10;
		int total_page;
		int dataCount;
		
		if (req.getMethod().equalsIgnoreCase("GET")) {
			searchValue = URLDecoder.decode(searchValue, "UTF-8");
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchKey", searchKey);
		map.put("searchValue", searchValue);
		
		dataCount = service.dataCount(map);
		total_page = myUtil.getPageCount(numPerPage, dataCount);
		
		if (total_page < current_page)
			current_page = total_page;
		
		int start = (current_page - 1) * numPerPage;
		int end = current_page * numPerPage;
		
		map.put("start", start);
		map.put("end", end);
		
		List<OvoNotice> list = service.listOvoNotice(map);
		
		// 글번호
		int listNum, n = 0;
		Iterator<OvoNotice> it = list.iterator();
		while (it.hasNext()) {
			OvoNotice data = it.next();
			listNum = dataCount - (start + n);
			data.setListNum(listNum);
			n++;
		}
		
		String params = "";
		String urlList = cp + "/notice/ovo/list.do";
		String urlArticle = cp + "/notice/ovo/article.do?pageNum=" + current_page;
		
		if (searchValue.length() !=0) {
			params = "searchKey=" + searchKey + "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
		}
		
		if (params.length() != 0) {
			urlList += "?" + params;
			urlArticle += "&" + params;
		}
		
		ModelAndView mav=new ModelAndView(".notice.ovo.list");
		mav.addObject("list", list);
		mav.addObject("dataCount", dataCount);
		mav.addObject("pageNum", current_page);
		mav.addObject("urlArticle", urlArticle);
		mav.addObject("pageIndexList", myUtil.pageIndexList(current_page, total_page, urlList));
		
		return mav;
	}
	

}
