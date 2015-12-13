package com.sp.adminmain;

import java.util.List;
import java.util.Map;

public interface EventService {
	public int insertEvent(Event dto, String path) throws Exception;
	public int dataCount(Map<String,Object> map);
	
	public Event readEvent(int eventNum);
	public List<Event> eventlist(Map<String, Object> map);
}
