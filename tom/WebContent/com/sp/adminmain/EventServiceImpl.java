package com.sp.adminmain;

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

}
