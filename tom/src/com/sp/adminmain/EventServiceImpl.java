package com.sp.adminmain;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.common.FileManager;
import com.sp.common.dao.CommonDAO;

@Service("adminmain.eventService")
public class EventServiceImpl implements EventService{
	@Autowired
	private CommonDAO dao;
	@Autowired
	private FileManager fileManager;
	
	@Override
	public int insertEvent(Event dto, String path) throws Exception {
		int result=0;
		
		try {
			if(dto.getUpload() !=null && !dto.getUpload().isEmpty()) {
				String newFilename=fileManager.doFileUpload(dto.getUpload(), path);
				dto.setEventFilename(newFilename);
				result=dao.insertData("event.insertEvent", dto);
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}

	@Override
	public int dataCount(Map<String, Object> map) {
		int result=0;
		
		try {
			result=dao.getIntValue("event.dataCount", map);
		} catch (Exception e) {
			System.out.println();
		}
		return result;
	}

	@Override
	public Event readEvent(int eventNum) {
		Event dto=null;
		
		try {
			dto=dao.getReadData("event.readEvent", eventNum);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return dto;
	}

	@Override
	public List<Event> eventlist(Map<String, Object> map) {
		List<Event> list=null;
		try {
			list=dao.getListData("event.eventlist", map);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return list;
	}

	
}
