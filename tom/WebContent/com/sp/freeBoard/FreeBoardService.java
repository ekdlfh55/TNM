package com.sp.freeBoard;

import java.util.List;
import java.util.Map;

public interface FreeBoardService {
	public int insertFreeBoard(FreeBoard dto);
	public List<FreeBoard> listFreeBoard(Map<String, Object> map);
	public int dataCount(Map<String, Object> map);
	public FreeBoard readFreeBoard(int num);
	public int updateHitCount(int num);

	public int updateFreeBoard(FreeBoard dto);
	public int deleteFreeBoard(int num);
	
	public int insertReply(Reply dto);
	public List<Reply> listReply(Map<String, Object> map);
	public int replyDataCount(Map<String, Object> map);
	public int deleteReply(int replyNum);
	
}
