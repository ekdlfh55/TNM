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
	
/*----------------------------------- 글쓰기 -----------------------------------------*/
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
/*----------------------------------- 가요 리스트  -----------------------------------------*/
	@RequestMapping(value="/genre/gayolist")
	public ModelAndView gayolist(HttpServletRequest req,
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
		String urlList= cp+"/genre/gayolist.do";
		String urlArticle= cp+"/genre/article.do?pageNum=" +current_page;
	
		 if(!searchValue.equals("")) {
	        	params = "searchKey=" +searchKey + 
	        	             "&searchValue=" + URLEncoder.encode(searchValue, "utf-8");	
	        }
	        
        if(params.length()!=0) {
            urlList = cp+"/genre/gayolist.do?" + params;
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
	
/*----------------------------------- 글보기 -----------------------------------------*/
	@RequestMapping(value="/genre/article")
	public ModelAndView gayoarticle(
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

	
/*----------------------------------- 수정 -----------------------------------------*/	
	@RequestMapping(value="/genre/update",method=RequestMethod.GET)
	public ModelAndView gayoupdateForm(
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
	public ModelAndView gayoupdateSubmit(
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

/*----------------------------------- 삭제 -----------------------------------------*/
	@RequestMapping(value="/genre/delete")
	public String gayodelete(
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


/*----------------------------------- 리플 -----------------------------------------*/
	
	
/*----------------------------------- 리플쓰기 -----------------------------------------*/	
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
	
/*----------------------------------- 리플 리스트 -----------------------------------------*/	
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
	
	
/*----------------------------------- 리플삭제 -----------------------------------------*/	
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
	
/*----------------------------------- 팝 리스트 -----------------------------------------*/	
	@RequestMapping(value="/genre/poplist")
	public ModelAndView poplist(HttpServletRequest req,
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
		String urlList= cp+"/genre/poplist.do";
		String urlArticle= cp+"/genre/article.do?pageNum=" +current_page;
	
		 if(!searchValue.equals("")) {
	        	params = "searchKey=" +searchKey + 
	        	             "&searchValue=" + URLEncoder.encode(searchValue, "utf-8");	
	        }
	        
        if(params.length()!=0) {
            urlList = cp+"/genre/poplist.do?" + params;
            urlArticle = cp+"/genre/article.do?pageNum=" + current_page + "&"+ params;
        }
		
		ModelAndView mav=new ModelAndView(".four.menu1.genre.list");
		mav.addObject("title","POP게시판");
		mav.addObject("list",list);
		mav.addObject("dataCount",dataCount);
		mav.addObject("pageNum", current_page);
		mav.addObject("urlArticle", urlArticle);
		mav.addObject("pageIndexList",
				myUtil.pageIndexList(current_page, total_page, urlList));
		return mav;	
	}
	
/*----------------------------------- ost리스트 -----------------------------------------*/	
	@RequestMapping(value="/genre/ostlist")
	public ModelAndView ostlist(HttpServletRequest req,
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
		String urlList= cp+"/genre/ostlist.do";
		String urlArticle= cp+"/genre/article.do?pageNum=" +current_page;
	
		 if(!searchValue.equals("")) {
	        	params = "searchKey=" +searchKey + 
	        	             "&searchValue=" + URLEncoder.encode(searchValue, "utf-8");	
	        }
	        
        if(params.length()!=0) {
            urlList = cp+"/genre/ostlist.do?" + params;
            urlArticle = cp+"/genre/article.do?pageNum=" + current_page + "&"+ params;
        }
		
		ModelAndView mav=new ModelAndView(".four.menu1.genre.list");
		mav.addObject("title","OST게시판");
		mav.addObject("list",list);
		mav.addObject("dataCount",dataCount);
		mav.addObject("pageNum", current_page);
		mav.addObject("urlArticle", urlArticle);
		mav.addObject("pageIndexList",
				myUtil.pageIndexList(current_page, total_page, urlList));
		return mav;	
	}
	
	
/*----------------------------------- 일렉 리스트 -----------------------------------------*/	
	@RequestMapping(value="/genre/eleclist")
	public ModelAndView eleclist(HttpServletRequest req,
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
		String urlList= cp+"/genre/eleclist.do";
		String urlArticle= cp+"/genre/article.do?pageNum=" +current_page;
	
		 if(!searchValue.equals("")) {
	        	params = "searchKey=" +searchKey + 
	        	             "&searchValue=" + URLEncoder.encode(searchValue, "utf-8");	
	        }
	        
        if(params.length()!=0) {
            urlList = cp+"/genre/eleclist.do?" + params;
            urlArticle = cp+"/genre/article.do?pageNum=" + current_page + "&"+ params;
        }
		
		ModelAndView mav=new ModelAndView(".four.menu1.genre.list");
		mav.addObject("title","일렉게시판");
		mav.addObject("list",list);
		mav.addObject("dataCount",dataCount);
		mav.addObject("pageNum", current_page);
		mav.addObject("urlArticle", urlArticle);
		mav.addObject("pageIndexList",
				myUtil.pageIndexList(current_page, total_page, urlList));
		return mav;	
	}
	
/*----------------------------------- 락 리스트 -----------------------------------------*/	
	@RequestMapping(value="/genre/rocklist")
	public ModelAndView rocklist(HttpServletRequest req,
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
		String urlList= cp+"/genre/rocklist.do";
		String urlArticle= cp+"/genre/article.do?pageNum=" +current_page;
	
		 if(!searchValue.equals("")) {
	        	params = "searchKey=" +searchKey + 
	        	             "&searchValue=" + URLEncoder.encode(searchValue, "utf-8");	
	        }
	        
        if(params.length()!=0) {
            urlList = cp+"/genre/rocklist.do?" + params;
            urlArticle = cp+"/genre/article.do?pageNum=" + current_page + "&"+ params;
        }
		
		ModelAndView mav=new ModelAndView(".four.menu1.genre.list");
		mav.addObject("title","록게시판");
		mav.addObject("list",list);
		mav.addObject("dataCount",dataCount);
		mav.addObject("pageNum", current_page);
		mav.addObject("urlArticle", urlArticle);
		mav.addObject("pageIndexList",
				myUtil.pageIndexList(current_page, total_page, urlList));
		return mav;	
	}		

/*----------------------------------- 알앤비 리스트 -----------------------------------------*/	
	@RequestMapping(value="/genre/rblist")
	public ModelAndView rblist(HttpServletRequest req,
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
		String urlList= cp+"/genre/rblist.do";
		String urlArticle= cp+"/genre/article.do?pageNum=" +current_page;
	
		 if(!searchValue.equals("")) {
	        	params = "searchKey=" +searchKey + 
	        	             "&searchValue=" + URLEncoder.encode(searchValue, "utf-8");	
	        }
	        
        if(params.length()!=0) {
            urlList = cp+"/genre/rblist.do?" + params;
            urlArticle = cp+"/genre/article.do?pageNum=" + current_page + "&"+ params;
        }
		
		ModelAndView mav=new ModelAndView(".four.menu1.genre.list");
		mav.addObject("title","알앤비게시판");
		mav.addObject("list",list);
		mav.addObject("dataCount",dataCount);
		mav.addObject("pageNum", current_page);
		mav.addObject("urlArticle", urlArticle);
		mav.addObject("pageIndexList",
				myUtil.pageIndexList(current_page, total_page, urlList));
		return mav;	
	}	
	
	
/*----------------------------------- 랩 리스트 -----------------------------------------*/	
	@RequestMapping(value="/genre/raplist")
	public ModelAndView raplist(HttpServletRequest req,
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
		String urlList= cp+"/genre/raplist.do";
		String urlArticle= cp+"/genre/article.do?pageNum=" +current_page;
	
		 if(!searchValue.equals("")) {
	        	params = "searchKey=" +searchKey + 
	        	             "&searchValue=" + URLEncoder.encode(searchValue, "utf-8");	
	        }
	        
        if(params.length()!=0) {
            urlList = cp+"/genre/raplist.do?" + params;
            urlArticle = cp+"/genre/article.do?pageNum=" + current_page + "&"+ params;
        }
		
		ModelAndView mav=new ModelAndView(".four.menu1.genre.list");
		mav.addObject("title","랩게시판");
		mav.addObject("list",list);
		mav.addObject("dataCount",dataCount);
		mav.addObject("pageNum", current_page);
		mav.addObject("urlArticle", urlArticle);
		mav.addObject("pageIndexList",
				myUtil.pageIndexList(current_page, total_page, urlList));
		return mav;	
	}	
	
	
/*----------------------------------- 인디 리스트 -----------------------------------------*/	
	@RequestMapping(value="/genre/indilist")
	public ModelAndView indilist(HttpServletRequest req,
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
		String urlList= cp+"/genre/indilist.do";
		String urlArticle= cp+"/genre/article.do?pageNum=" +current_page;
	
		 if(!searchValue.equals("")) {
	        	params = "searchKey=" +searchKey + 
	        	             "&searchValue=" + URLEncoder.encode(searchValue, "utf-8");	
	        }
	        
        if(params.length()!=0) {
            urlList = cp+"/genre/indilist.do?" + params;
            urlArticle = cp+"/genre/article.do?pageNum=" + current_page + "&"+ params;
        }
		
		ModelAndView mav=new ModelAndView(".four.menu1.genre.list");
		mav.addObject("title","인디게시판");
		mav.addObject("list",list);
		mav.addObject("dataCount",dataCount);
		mav.addObject("pageNum", current_page);
		mav.addObject("urlArticle", urlArticle);
		mav.addObject("pageIndexList",
				myUtil.pageIndexList(current_page, total_page, urlList));
		return mav;	
	}	
	
	
/*----------------------------------- 트로트 리스트 -----------------------------------------*/	
	@RequestMapping(value="/genre/trotlist")
	public ModelAndView trotlist(HttpServletRequest req,
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
		String urlList= cp+"/genre/trotlist.do";
		String urlArticle= cp+"/genre/article.do?pageNum=" +current_page;
	
		 if(!searchValue.equals("")) {
	        	params = "searchKey=" +searchKey + 
	        	             "&searchValue=" + URLEncoder.encode(searchValue, "utf-8");	
	        }
	        
        if(params.length()!=0) {
            urlList = cp+"/genre/trotlist.do?" + params;
            urlArticle = cp+"/genre/article.do?pageNum=" + current_page + "&"+ params;
        }
		
		ModelAndView mav=new ModelAndView(".four.menu1.genre.list");
		mav.addObject("title","트로트게시판");
		mav.addObject("list",list);
		mav.addObject("dataCount",dataCount);
		mav.addObject("pageNum", current_page);
		mav.addObject("urlArticle", urlArticle);
		mav.addObject("pageIndexList",
				myUtil.pageIndexList(current_page, total_page, urlList));
		return mav;	
	}
	

/*----------------------------------- 제이팝 리스트 -----------------------------------------*/	
	@RequestMapping(value="/genre/jpoplist")
	public ModelAndView jpoplist(HttpServletRequest req,
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
		String urlList= cp+"/genre/jpoplist.do";
		String urlArticle= cp+"/genre/article.do?pageNum=" +current_page;
	
		 if(!searchValue.equals("")) {
	        	params = "searchKey=" +searchKey + 
	        	             "&searchValue=" + URLEncoder.encode(searchValue, "utf-8");	
	        }
	        
        if(params.length()!=0) {
            urlList = cp+"/genre/jpoplist.do?" + params;
            urlArticle = cp+"/genre/article.do?pageNum=" + current_page + "&"+ params;
        }
		
		ModelAndView mav=new ModelAndView(".four.menu1.genre.list");
		mav.addObject("title","제이팝게시판");
		mav.addObject("list",list);
		mav.addObject("dataCount",dataCount);
		mav.addObject("pageNum", current_page);
		mav.addObject("urlArticle", urlArticle);
		mav.addObject("pageIndexList",
				myUtil.pageIndexList(current_page, total_page, urlList));
		return mav;	
	}	
	
	
	
/*----------------------------------- 클래식 리스트 -----------------------------------------*/	
	@RequestMapping(value="/genre/classiclist")
	public ModelAndView classiclist(HttpServletRequest req,
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
		String urlList= cp+"/genre/classiclist.do";
		String urlArticle= cp+"/genre/article.do?pageNum=" +current_page;
	
		 if(!searchValue.equals("")) {
	        	params = "searchKey=" +searchKey + 
	        	             "&searchValue=" + URLEncoder.encode(searchValue, "utf-8");	
	        }
	        
        if(params.length()!=0) {
            urlList = cp+"/genre/classiclist.do?" + params;
            urlArticle = cp+"/genre/article.do?pageNum=" + current_page + "&"+ params;
        }
		
		ModelAndView mav=new ModelAndView(".four.menu1.genre.list");
		mav.addObject("title","클래식게시판");
		mav.addObject("list",list);
		mav.addObject("dataCount",dataCount);
		mav.addObject("pageNum", current_page);
		mav.addObject("urlArticle", urlArticle);
		mav.addObject("pageIndexList",
				myUtil.pageIndexList(current_page, total_page, urlList));
		return mav;	
	}	
	
	
	
/*----------------------------------- 재즈 리스트 -----------------------------------------*/	
	@RequestMapping(value="/genre/jazzlist")
	public ModelAndView jazzlist(HttpServletRequest req,
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
		String urlList= cp+"/genre/jazzlist.do";
		String urlArticle= cp+"/genre/article.do?pageNum=" +current_page;
	
		 if(!searchValue.equals("")) {
	        	params = "searchKey=" +searchKey + 
	        	             "&searchValue=" + URLEncoder.encode(searchValue, "utf-8");	
	        }
	        
        if(params.length()!=0) {
            urlList = cp+"/genre/jazzlist.do?" + params;
            urlArticle = cp+"/genre/article.do?pageNum=" + current_page + "&"+ params;
        }
		
		ModelAndView mav=new ModelAndView(".four.menu1.genre.list");
		mav.addObject("title","재즈게시판");
		mav.addObject("list",list);
		mav.addObject("dataCount",dataCount);
		mav.addObject("pageNum", current_page);
		mav.addObject("urlArticle", urlArticle);
		mav.addObject("pageIndexList",
				myUtil.pageIndexList(current_page, total_page, urlList));
		return mav;	
	}
	
	/*----------------------------------- 기타 리스트 -----------------------------------------*/	
	@RequestMapping(value="/genre/ectlist")
	public ModelAndView ectlist(HttpServletRequest req,
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
		String urlList= cp+"/genre/ectlist.do";
		String urlArticle= cp+"/genre/article.do?pageNum=" +current_page;
	
		 if(!searchValue.equals("")) {
	        	params = "searchKey=" +searchKey + 
	        	             "&searchValue=" + URLEncoder.encode(searchValue, "utf-8");	
	        }
	        
        if(params.length()!=0) {
            urlList = cp+"/genre/ectlist.do?" + params;
            urlArticle = cp+"/genre/article.do?pageNum=" + current_page + "&"+ params;
        }
		
		ModelAndView mav=new ModelAndView(".four.menu1.genre.list");
		mav.addObject("title","기타게시판");
		mav.addObject("list",list);
		mav.addObject("dataCount",dataCount);
		mav.addObject("pageNum", current_page);
		mav.addObject("urlArticle", urlArticle);
		mav.addObject("pageIndexList",
				myUtil.pageIndexList(current_page, total_page, urlList));
		return mav;	
	}		
}





