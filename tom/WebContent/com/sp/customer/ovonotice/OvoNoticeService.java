package com.sp.customer.ovonotice;

import java.util.List;
import java.util.Map;

public interface OvoNoticeService {
	public int insertOvoNotice(OvoNotice dto,String mode) throws Exception;
	public List<OvoNotice> listOvoNotice(Map<String, Object>map);
	public int dataCount(Map<String, Object>map);
	
	public int updateHitCount(int ovoNoticeNum);
	
	public OvoNotice readOvoNotice(int ovoNoticeNum);
}
