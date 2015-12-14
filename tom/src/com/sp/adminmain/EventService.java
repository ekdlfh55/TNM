package com.sp.adminmain;

import java.util.List;
import java.util.Map;

public interface EventService {
	public int insertEvent(Event dto, String path) throws Exception;
	public List<Event> listEvent(Map<String,Object> map);
	public int dataCount(Map<String,Object> map);
	public Event readEvent(int eventNum);
	public int updateEvent(Event dto);
	
}
