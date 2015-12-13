package com.sp.genre;

import java.io.PrintWriter;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sp.common.MyUtil;
import com.sp.member.SessionInfo;

import net.sf.json.JSONObject;

@Controller("genre.genreController")
public class GenreController {
	@Autowired
	private GenreService service;
	
	@Autowired
	private MyUtil myUtil;

	@RequestMapping(value="/genre/created", method=RequestMethod.GET)
	public ModelAndView createdForm(HttpSession session) throws Exception{
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null){
			return new ModelAndView("redirect:/member/login");
		}
		ModelAndView mav=new ModelAndView(".four.menu1.genre.created");
		mav.addObject("mode","created");
		return mav;
	}
	
	@RequestMapping(value="/genre/created", method=RequestMethod.POST)
	public ModelAndView createdSubmit(HttpSession session, Genre dto) throws Exception{
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null){
			return new ModelAndView("redirect:/member/login");
		}
		dto.setUserId(info.getUserId());
		
		service.insertGenre(dto);
		
		return new ModelAndView("redirect:/genre/list");
	}

	@RequestMapping(value="/genre/list")
	public ModelAndView list(HttpServletRequest req,
			@RequestParam(value="pageNum", defaultValue="1") int current_page,
			@RequestParam(value="searchKey", defaultValue="subject") String searchKey,
			@RequestParam(value="searchValue", defaultValue="") String searchValue
			)throws Exception{
		String cp = req.getContextPath();

		int numPerPage = 10;
		int total_page =0;
		int dataCount;
		
		if (req.getMethod().equalsIgnoreCase("GET")) {
			searchValue = URLDecoder.decode(searchValue, "UTF-8");
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchKey", searchKey);
		map.put("searchValue", searchValue);

		dataCount = service.dataCount(map);
		if(dataCount !=0)
			total_page = myUtil.getPageCount(numPerPage, dataCount);
		
		if(total_page < current_page)
			current_page = total_page;

		int start = (current_page - 1) * numPerPage;
		if(start<0) start=0;  // 주의

		map.put("start", start);
		
		
		List<Genre> list = service.listGenreBoard(map);
		
		// 글번호 만들기
		int listNum, n = 0;
		Iterator<Genre> it = list.iterator();
		while (it.hasNext()) {
			Genre data = it.next();
			listNum = dataCount - (start+n);
			data.setListNum(listNum);
			n++;
		}
				
		String params = "";
		String urlList= cp+"/genre/list.do";
		String urlArticle= cp+"/genre/article.do?pageNum=" +current_page;
	
		 if(!searchValue.equals("")) {
	        	params = "searchKey=" +searchKey + 
	        	             "&searchValue=" + URLEncoder.encode(searchValue, "utf-8");	
	        }
	        
        if(params.length()!=0) {
            urlList = cp+"/genre/list.do?" + params;
            urlArticle = cp+"/genre/article.do?pageNum=" + current_page + "&"+ params;
        }
		
		ModelAndView mav=new ModelAndView(".four.menu1.genre.list");
		mav.addObject("title","가요게시판");
		mav.addObject("list",list);
		mav.addObject("dataCount",dataCount);
		mav.addObject("pageNum", current_page);
		mav.addObject("urlArticle", urlArticle);
		mav.addObject("pageIndexList",
				myUtil.pageIndexList(current_page, total_page, urlList));
		return mav;	
	}
	

	@RequestMapping(value="/genre/article")
	public ModelAndView article(
			HttpSession session,
			@RequestParam(value="num") int num,
			@RequestParam(value="pageNum") String pageNum,
			@RequestParam(value="searchKey", defaultValue="subject") String searchKey,
			@RequestParam(value="searchValue", defaultValue="") String searchValue
			) throws Exception{
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return new ModelAndView("redirect:/member/login");
		}
		searchValue = URLDecoder.decode(searchValue, "utf-8");

		// 조회수 증가
		service.updateHitCount(num);

		// 해당 레코드 가져 오기
		Genre dto = service.readGenre(num);
		if(dto==null)
			return new ModelAndView("redirect:/genre/list?pageNum="+pageNum);
		

        // 스마트에디터를 사용하므로 <br>로 변경하지 않음
        // dto.setContent(dto.getContent().replaceAll("\n", "<br>"));
        
		// 이전 글, 다음 글
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchKey", searchKey);
		map.put("searchValue", searchValue);
		map.put("num", num);

		 
		String params = "pageNum="+pageNum;
		if(!searchValue.equals("")) {
		    params += "&searchKey=" + searchKey + 
		                    "&searchValue=" + URLEncoder.encode(searchValue, "utf-8");
		}
		
		ModelAndView mav=new ModelAndView(".four.menu1.genre.article");
		/*mav.addObject("subMenu", "2");*/
		
		mav.addObject("dto", dto);
		
		mav.addObject("pageNum", pageNum);
		mav.addObject("params", params);
		
        return mav;
	}
	
	@RequestMapping(value="/genre/update",method=RequestMethod.GET)
	public ModelAndView updateForm(
			HttpSession session,
			@RequestParam(value="num") int num,
			@RequestParam(value="pageNum") String pageNum
			) throws Exception {
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return new ModelAndView("redirect:/member/login.do");
			
		}
		Genre dto= (Genre)service.readGenre(num);
		
		if(dto==null || ! dto.getUserId().equals(info.getUserId())) {
			return new ModelAndView("redirect:/genre/list?pageNum="+pageNum);
		}
		
		ModelAndView mav=new ModelAndView(".four.menu1.genre.created");
		mav.addObject("dto",dto);
		mav.addObject("mode", "update");
		mav.addObject("pageNum",pageNum);
		
		return mav;
		
	}
	
	@RequestMapping(value="/genre/update",method=RequestMethod.POST)
	public ModelAndView updateSubmit(
			HttpSession session,
			Genre dto,
			@RequestParam(value="pageNum") String pageNum
			)throws Exception{
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		
		if(info==null){
			return new ModelAndView("redirect:/member/login");
		}
		
		//수정하기
		service.updateGenre(dto);
		
		return new ModelAndView("redirect:/genre/list?pageNum="+pageNum);
		
		/*if(info==null) {
			return new ModelAndView("redirect:/member/login.do");
		}
		service.updateGenre(dto);
		return new ModelAndView("redirect:/genre/article.do?num="+dto.getNum()+"&pageNum"+pageNum);
		*/
	}
	
	@RequestMapping(value="/genre/delete")
	public String delete(
			HttpSession session,
			@RequestParam int num,
			@RequestParam String pageNum
			)throws Exception{
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null) {
			return "redirect:/member/login.do";
		}
		Genre dto=service.readGenre(num);
		if(dto.getUserId().equals(info.getUserId()) || info.getUserId().equals("admin")) service.deleteGenre(num);
			
			return "redirect:/genre/list.do?pageNum="+pageNum;
	}
	
	@RequestMapping(value="/genre/insertGenreReply", method=RequestMethod.POST)
	public void insertGenreReply(
			HttpServletResponse resp,
			HttpSession session,
			GenreReply dto
			)throws Exception {
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		String state="true";
		if(info==null) {
			state="loginFail";
		}else {
			dto.setUserId(info.getUserId());
			int result=service.insertGenreReply(dto);
			if(result==0)
				state="false";
		}
		JSONObject job=new JSONObject();
		job.put("state", state);
		
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.print(job.toString());
	
	}
	
	@RequestMapping(value="/genre/listReply")
	public ModelAndView listReply(
			@RequestParam(value="num") int num,
			@RequestParam(value="pageNo", defaultValue="1") int current_page
			)throws Exception {
		
		int numPerPage=5;
		int total_page=0;
		int dataCountReply=0;
		
		Map<String, Object>map= new HashMap<String, Object>();
		map.put("num", num);
		
		dataCountReply =service.dataCountReply(map);
		total_page=myUtil.getPageCount(numPerPage, dataCountReply);
		
		if(total_page <current_page)
			current_page=total_page;
		
		int start = (current_page -1) * numPerPage;
		map.put("start", start);
		if(start<0) start=0;  // 주의
		List<GenreReply> listReply= service.listReply(map);
		
		/*Iterator<GenreReply> it= listReply.iterator();
		while (it.hasNext()) {
			GenreReply data=it.next();
			data.setContent(data.getContent().replaceAll("\n", "<br>"));
			
		}*/
		ModelAndView mav = new ModelAndView("menu1/genre/listReply");
		
			
		/*System.out.println("sdfsdf");*/
		mav.addObject("listReply", listReply);
		mav.addObject("dataCountReply",dataCountReply);
		mav.addObject("pageNo",current_page);
		mav.addObject("pageIndexList",myUtil.pageIndexList(current_page, total_page));
		return mav;
	}
	
	@RequestMapping(value="/genre/deleteReply", method=RequestMethod.POST)
	public void deleteReply(
			HttpServletResponse resp,
			HttpSession session,
			@RequestParam int replyNum,
			GenreReply dto
			)throws Exception {
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		String state="true";
		if(info==null) {
			state="loginFail";
		}else {
			int result=service.deleteReply(replyNum);
			if(result==0)
				state="false";
		}
		JSONObject job=new JSONObject();
		job.put("state", state);
		
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out=resp.getWriter();
		out.print(job.toString());
	}
	
	
	
	

	
}





