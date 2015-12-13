package com.sp.customer.ovonotice;

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

@Controller("ovonotice.ovonoticeContoller")
public class OvoNoticeContoller {
	
	@Autowired
	private MyUtil myUtil;
	
	@Autowired
	private OvoNoticeService service;
	
	@RequestMapping(value="/ovonotice/list")
	public ModelAndView list(HttpServletRequest req, 
			@RequestParam(value="pageNo", defaultValue="1")int current_page, 
			@RequestParam(value="searchKey",defaultValue="subject") String searchKey, 
			@RequestParam(value="searchValue",defaultValue="")String searchValue
			) throws Exception{
       
		String cp = req.getContextPath();
		
        int numPerPage = 10;
        int total_page = 0;
        int dataCount = 0;
        
        if (req.getMethod().equalsIgnoreCase("GET")) {
            searchValue = URLDecoder.decode(searchValue, "UTF-8");
         }
        
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("searchKey", searchKey);
        map.put("searchValue", searchValue);

        dataCount = service.dataCount(map);
        total_page=myUtil.getPageCount(numPerPage, dataCount);
        if(current_page>total_page)
			current_page=total_page;
                
        int start=(current_page-1)*numPerPage;
        if(start<0) start=0;
        map.put("start", start);
        
        List<OvoNotice> list=service.listOvoNotice(map);
        
        int listNum, n = 0;
        Iterator<OvoNotice> it=list.iterator();
        while(it.hasNext()){
        	OvoNotice data = it.next();
        	listNum= dataCount- (start + n);
        	data.setListNum(listNum);
        	n++;
        }
        
        String params = "";
        String urlList = ""; 
        String urlArticle = "";
       //여기부터봐야함
        if(!searchValue.equals("")) {
        	params = "searchKey=" +searchKey + 
        	             "&searchValue=" + URLEncoder.encode(searchValue, "utf-8");	
        }
        
        if(params.equals("")) {
            urlList = cp+"/ovonotice/list.do";
            urlArticle = cp+"/ovonotice/article.do?pageNo=" + current_page;
         } else {
             urlList = cp+"/ovonotice/list.do?" + params;
             urlArticle = cp+"/ovonotice/article.do?pageNo=" + current_page + "&"+ params;
         }
      
		ModelAndView mav=new ModelAndView("customer/ovonotice/list");
		
		mav.addObject("list",list);
		mav.addObject("pageNo", current_page);
		mav.addObject("urlArticle", urlArticle);
		mav.addObject("dataCount",dataCount);
        mav.addObject("pageIndexList", myUtil.pageIndexList(current_page, total_page, urlList));
        
		return mav;
	}
	
	@RequestMapping(value="/ovonotice/created",method=RequestMethod.GET)
	public ModelAndView ovoCreatedForm(HttpSession session) throws Exception {
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return new ModelAndView("member/login");
		}
		
		ModelAndView mav=new ModelAndView(".customer.ovonotice.created");
		mav.addObject("mode", "created");
		mav.addObject("title","1:1질문하기");
		
		return mav;
	}
	@RequestMapping(value="/ovonotice/created",method=RequestMethod.POST)
	public ModelAndView ovoCreatedSubmit(HttpSession session, OvoNotice dto) throws Exception{

		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return new ModelAndView("member/login/");
		}
		
		dto.setUserId(info.getUserId());
		service.insertOvoNotice(dto, "created");

		return new ModelAndView("redirect:/customer/main.do?active=ovonotice");
	}
	
	@RequestMapping(value="/ovonotice/article")
	public ModelAndView article(
			HttpSession session,
			@RequestParam int ovoNoticeNum,
			@RequestParam String pageNo
		)throws Exception{
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return new ModelAndView("member/login");
		}
		
		service.updateHitCount(ovoNoticeNum);
		
		OvoNotice dto=service.readOvoNotice(ovoNoticeNum);
		if(dto==null){
			new ModelAndView("redirect:/customer/main.do?active=ovonotice?pageNo="+pageNo);
		}
		
		dto.setContent(dto.getContent().replaceAll("\n", "<br>"));
		 
		ModelAndView mav=new ModelAndView(".customer.ovonotice.article");
		mav.addObject("dto", dto);
		mav.addObject("pageNo", pageNo);
		
		return mav;
	}
	
	
}
