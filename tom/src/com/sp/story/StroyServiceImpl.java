package com.sp.story;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.sp.common.FileManager;
import com.sp.common.dao.CommonDAO;

public class StroyServiceImpl implements StoryService {
	
	@Autowired
	private CommonDAO dao;
	
	@Autowired
	private FileManager fileManager;

	@Override
	public int insertStory(Story story, String pathname) {
		int result=0;
		try {
			//파일 업로드
			if(!story.getUpload().isEmpty()) {
				String newFile=fileManager.doFileUpload(story.getUpload(), pathname);
				
				if(newFile!=null) {
					story.setOriginalFilename(story.getUpload().getOriginalFilename());
					story.setSaveFilename(newFile);
				}
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}

	@Override
	public List<Story> listStory(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int dataCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateHitCount(int num) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Story readStory(int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Story preReadStory(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Story nextReadStory(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateStory(Story story, String pathname) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteStory(int num, String pathname) {
		// TODO Auto-generated method stub
		return 0;
	}

}
