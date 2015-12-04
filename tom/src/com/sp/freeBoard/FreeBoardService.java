package com.sp.freeBoard;

import java.util.List;
import java.util.Map;

public interface FreeBoardService {
	public int insertFreeBoard(FreeBoard dto);
	public List<FreeBoard> listFreeBoard(Map<String, Object> map);
	public int dataCount(Map<String, Object> map);
	public FreeBoard readFreeBoard(int num);
	public int updateHitCount(int num);
	public FreeBoard preReadFree(Map<String, Object> map);
	public FreeBoard nextReadFree(Map<String, Object> map);
	public int updateFreeBoard(FreeBoard dto);
	public int deleteFreeBoard(int num);
	
	public int deleteFreeBoardId(String userId, String root);
}
