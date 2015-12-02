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
			result=dao.insertData("freeboard.insertFreeBoard", dto);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}

	@Override
	public List<FreeBoard> listFreeBoard(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int dataCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public FreeBoard readFreeBoard(int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateHitCount(int num) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public FreeBoard preReadFree(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FreeBoard nextReadFree(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateFreeBoard(FreeBoard dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteFreeBoard(int num) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteFreeBoardId(String userId, String root) {
		// TODO Auto-generated method stub
		return 0;
	}

}
