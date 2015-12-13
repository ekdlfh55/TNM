package com.sp.freeBoard;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.common.dao.CommonDAO;

@Service("freeBoard.freeBoardService")
public class FreeBoardServiceImpl implements FreeBoardService{
	@Autowired
	private CommonDAO dao;
	

	@Override
	public int insertFreeBoard(FreeBoard dto) {
		int result=0;
		
		try {
			result=dao.insertData("freeBoard.insertFreeBoard", dto);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}

	@Override
	public List<FreeBoard> listFreeBoard(Map<String, Object> map) {
		List<FreeBoard> list=null;
		try {
			list=dao.getListData("freeBoard.listFreeBoard", map);
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return list;
	}

	@Override
	public int dataCount(Map<String, Object> map) {
		int result=0;
		try {
			result=dao.getIntValue("freeBoard.dataCount", map);
			/*result=1;	*/	//
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}

	@Override
	public FreeBoard readFreeBoard(int num) {
		FreeBoard dto=null;
		
		try {
			dto=dao.getReadData("freeBoard.readFreeBoard", num);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return dto;
	}

	@Override
	public int updateHitCount(int num) {
		int result=0;
		
		try {
			result=dao.updateData("freeBoard.updateHitCount", num);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}

	
	

	@Override
	public int updateFreeBoard(FreeBoard dto) {
		int result=0;
		try {
			dao.updateData("freeBoard.updateFreeBoard", dto);
	/*		result=1;*/
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}

	@Override
	public int deleteFreeBoard(int num) {
		int result=0;
		
		try {
			dao.deleteData("freeBoard.deleteFreeBoard", num);
		/*	result=1;*/
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}



	@Override
	public int insertReply(Reply dto) {
		int result=0;
		try {
			result=dao.insertData("freeBoard.insertReply", dto);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}

	@Override
	public List<Reply> listReply(Map<String, Object> map) {
		List<Reply> list=null;
		try {
			list=dao.getListData("freeBoard.listReply", map);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return list;
	}


	@Override
	public int replyDataCount(Map<String, Object> map) {
		int result=0;
		try {
			result=dao.getIntValue("freeBoard.replyDataCount", map);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
	}

	@Override
	public int deleteReply(int replyNum) {
		int result=0;
		
		try {
			result=dao.deleteData("freeBoard.deleteReply", replyNum);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}

	
}
