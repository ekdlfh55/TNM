package com.sp.freeBoard;

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


@Controller("freeBoard.freeBoardController")
public class FreeBoardController {
	@Autowired
	private FreeBoardService service;
	@Autowired
	private MyUtil myUtil;
	
	   @RequestMapping(value="/freeBoard/list")
	   public ModelAndView list(HttpServletRequest req,
	         @RequestParam(value="pageNum", defaultValue="1") int current_page,
	         @RequestParam(value="searchKey", defaultValue="subject") String searchKey,
	         @RequestParam(value="searchValue", defaultValue="") String searchValue
	         )throws Exception{
		   String cp= req.getContextPath();
		   
		   int numPerPage = 10;
		   int total_page = 0;
		   int dataCount;
	      
	      if (req.getMethod().equalsIgnoreCase("GET")) {
	         searchValue = URLDecoder.decode(searchValue, "UTF-8");
	      }
	      Map<String, Object> map = new HashMap<String, Object>();
	      map.put("searchKey", searchKey);
	      map.put("searchValue", searchValue);

	      dataCount = service.dataCount(map);
	      if(dataCount != 0)
	    	  total_page=myUtil.getPageCount(numPerPage, dataCount);
	      
	      // 다른 사람이 자료를 삭제하여 전체 페이지수가 변화 된 경우
	      if(total_page < current_page) 
	            current_page = total_page;
	      
	      // 리스트에 출력할 데이터를 가져오기
	        int start = (current_page - 1) * numPerPage ;   
	        if(start<0) start=0;
	        map.put("start", start);

	      //글 리스트
	      List<FreeBoard> list = service.listFreeBoard(map);
	      
	   // 리스트의 글번호
	        int listNum, n = 0;
	        Iterator<FreeBoard> it=list.iterator();
	        while(it.hasNext()) {
	            FreeBoard data = it.next();
	            listNum = dataCount - (start + n);
	            data.setListNum(listNum);
	            n++;
	        }
	        
	        String params = "";
	        String urlList = cp+"/freeBoard/list.do";
	        String urlArticle = cp+"/freeBoard/article.do?pageNum=" + current_page;
	        if(!searchValue.equals("")) {
	        	params = "searchKey=" +searchKey + 
	        	             "&searchValue=" + URLEncoder.encode(searchValue, "utf-8");	
	        }
	      
	        
	        if(params.length()!=0) {
	            urlList = cp+"/freeBoard/list.do?" + params;
	            urlArticle = cp+"/freeBoard/article.do?pageNum=" + current_page + "&"+ params;
	        }
	      
	      ModelAndView mav=new ModelAndView(".four.menu1.freeBoard.list");
	      mav.addObject("list",list);
	      mav.addObject("urlArticle", urlArticle);
	      mav.addObject("pageNum", current_page);
	      mav.addObject("dataCount",dataCount);
	      mav.addObject("pageIndexList", myUtil.pageIndexList(current_page, total_page, urlList));
	      
	      return mav;   
	   }
	   
	
	@RequestMapping(value="/freeBoard/created", method=RequestMethod.GET)
	public ModelAndView createdForm(HttpSession session) throws Exception{
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null){
			return new ModelAndView("redirect:/member/login");
		}
		ModelAndView mav=new ModelAndView(".four.menu1.freeBoard.created");
		mav.addObject("mode","created");
		return mav;
	}
	@RequestMapping(value="/freeBoard/created", method=RequestMethod.POST)
	public ModelAndView createdSubmit(HttpSession session, FreeBoard dto) throws Exception{
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null){
			return new ModelAndView("redirect:/member/login");
		}
		dto.setUserId(info.getUserId());
		
		service.insertFreeBoard(dto);
		
		return new ModelAndView("redirect:/freeBoard/list");
	}
	
		/*@RequestMapping(value="/freeBoard/freeBoard")
		public ModelAndView guest() throws Exception {
			ModelAndView mav=new ModelAndView(".four.menu1.freeBoard.freeBoard");	
			return mav;
		}
	*/
	@RequestMapping(value="/freeBoard/article")
	public ModelAndView article(
			HttpSession session,
			@RequestParam(value="num") int num,
			@RequestParam(value="pageNum") String pageNum,
			@RequestParam(value="searchKey", defaultValue="subject") String searchKey,
			@RequestParam(value="searchValue", defaultValue="") String searchValue			
			) throws Exception{
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null){
			return new ModelAndView("redirect:/member/login");
		}
		searchValue=URLDecoder.decode(searchValue, "utf-8");
		
		//조회수 증가
		service.updateHitCount(num);
		
		//해당 레코드 가져오기
		FreeBoard dto=service.readFreeBoard(num);
		if(dto==null)
			return new ModelAndView("redirect:/freeBoard/list.do?pageNum="+pageNum); 		//
		
		//이전글, 다음글
		/*searchValue=URLDecoder.decode(searchValue, "utf-8");*/
		
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("searchKey", searchKey);
		map.put("searchValue", searchValue);
		map.put("num", num);
		
		
		String params= "pageNum="+pageNum;
		if(!searchValue.equals("")){
			params += "&searchKey=" + searchKey +
						"&searchValue=" + URLEncoder.encode(searchValue, "utf-8");
		}
		
		ModelAndView mav=new ModelAndView(".four.menu1.freeBoard.article");
		mav.addObject("dto", dto);

		mav.addObject("pageNum", pageNum);
		mav.addObject("params", params);
		
		return mav;
	}
	@RequestMapping(value="/freeBoard/update", method=RequestMethod.GET)
	public ModelAndView updateForm(HttpSession session,
			@RequestParam(value="num") int num,
			@RequestParam(value="pageNum") String pageNum
			)throws Exception{
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null){
			return new ModelAndView("redirect:/member/login");
		}
		
		FreeBoard dto=(FreeBoard)service.readFreeBoard(num);
		if(dto==null){
			return new ModelAndView("redirect:/freeBoard/list?pageNum="+pageNum);
		}
		
		if(! info.getUserId().equals(dto.getUserId())){
			return new ModelAndView("redirect:/freeBoard/list?pageNum="+pageNum);
		}
		
		ModelAndView mav=new ModelAndView(".four.menu1.freeBoard.created");
		mav.addObject("dto", dto);
		mav.addObject("mode", "update");
		mav.addObject("pageNum", pageNum);
		
		return mav;		
	}
	@RequestMapping(value="/freeBoard/update", method=RequestMethod.POST)
	public ModelAndView updateSubmit(
			HttpSession session,
			FreeBoard dto,
			@RequestParam(value="pageNum") String pageNum
			) throws Exception{
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null){
			return new ModelAndView("redirect:/member/login");
		}
		
		//수정하기
		service.updateFreeBoard(dto);
		
		return new ModelAndView("redirect:/freeBoard/list?pageNum="+pageNum);		
	}
	//삭제하기
	@RequestMapping(value="/freeBoard/delete")
	public ModelAndView delete(HttpSession session,
			@RequestParam(value="num") int num,
			@RequestParam(value="pageNum") String pageNum
			)throws Exception{
		
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(info==null){
			return new ModelAndView("redirect:/member/login");
		}
		
		//해당 레코드 가져오기
		FreeBoard dto=service.readFreeBoard(num);
		if(dto==null){
			return new ModelAndView("redirect:/freeBoard/list?pageNum="+pageNum);
		}
		if(! info.getUserId().equals(dto.getUserId()) && ! info.getUserId().equals("admin")){
			return new ModelAndView("redirect:/freeBoard/list?pageNum="+pageNum);
		}
		service.deleteFreeBoard(num);
		
		return new ModelAndView("redirect:/freeBoard/list?pageNum="+pageNum);
	}
	//댓글===================
	//댓글 추가
	@RequestMapping(value="/freeBoard/insertReply", method=RequestMethod.POST)
	public void insertReply(
			HttpServletResponse resp, HttpSession session, Reply dto
			) throws Exception{
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		
		String state="true";
		if(info==null){			//로그인 되지 않은 경우
			state="loginFail";
		}else{
			dto.setUserId(info.getUserId());
			int result=service.insertReply(dto);
			if(result==0)
				state="false";
		}
	
			//작업결과를 json으로 전송
		JSONObject ob=new JSONObject();
		ob.put("state", state);
		
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out= resp.getWriter();
		out.print(ob.toString());
	}
	//댓글 리스트
	@RequestMapping(value="/freeBoard/listReply")
	public ModelAndView listReply(
			@RequestParam(value="num") int num
			,@RequestParam(value="pageNo", defaultValue="1") int current_page			
			) throws Exception{
		
		int numPerPage= 5;
		int total_page=0;
		int dataCountReply=0;
		
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("num", num);
		
		dataCountReply= service.replyDataCount(map);
		total_page=myUtil.getPageCount(numPerPage, dataCountReply);
		if(current_page>total_page)
			current_page=total_page;
		
		   int start = (current_page - 1) * numPerPage;
		   if(start<0) start=0;
	        map.put("start", start);

	        List<Reply> listReply=service.listReply(map);
	        
	        /*Iterator<Reply> it=listReply.iterator();
	        while(it.hasNext()){
	       Reply data=it.next();
	        	data.setContent(data.getContent().replaceAll("\n", "<br>"));
	
	        }*/

	        /*ModelAndView mav=new ModelAndView(".four.menu1.freeBoard.listReply");*/
	        ModelAndView mav=new ModelAndView("menu1/freeBoard/listReply");
	        
	        mav.addObject("listReply", listReply);
	        mav.addObject("dataCountReply", dataCountReply);
	        mav.addObject("pageNo", current_page);
	        //AJAX 인자 두개
	        mav.addObject("pageIndexList", myUtil.pageIndexList(current_page, total_page));
	       
	        
	        return mav;     		
	}
	@RequestMapping(value="/freeBoard/deleteReply", method=RequestMethod.POST)
	public void deleteReply(
			HttpSession session,
			HttpServletResponse resp,
			@RequestParam(value="pageNo", defaultValue="1") int current_page,
			@RequestParam int replyNum
			) throws Exception{
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		
		String state="true";
		if(info==null){   //로그인 되지 않은 경우
			state="loginFail";			
			
		}else{
			int result=service.deleteReply(replyNum);
			if(result==0)
				state="false";
		}
		JSONObject ob=new JSONObject();
		ob.put("state", state);
		
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out=resp.getWriter();
		out.print(ob.toString());
	}
	
}


