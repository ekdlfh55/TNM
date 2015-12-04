package com.sp.notice;

import java.util.List;
import java.util.Map;


public interface OvoNoticeService {
	public int insertOvoNotice(OvoNotice dto,String mode) throws Exception;
	public int dataCount (Map<String,Object> map) throws Exception;
	public List<OvoNotice> listOvoNotice(Map<String, Object> map) throws Exception;
	
	public OvoNotice readOvoNotice(int ovoNoticeNum);
	public OvoNotice preReadOvoNotice(Map<String, Object> map);
	public OvoNotice nextReadOvoNotice(Map<String, Object> map);
	
	public int updateHitCount(int ovoNoticeNum);
	
	
}
