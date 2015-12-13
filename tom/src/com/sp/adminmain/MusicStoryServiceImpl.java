package com.sp.adminmain;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.common.FileManager;
import com.sp.common.dao.CommonDAO;

@Service("adminmain.musicstoryService")
public class MusicStoryServiceImpl implements MusicStoryService {
	@Autowired
	private CommonDAO dao;
	@Autowired
	private FileManager fileManager;
	@Override
	public int insertMusicStory(MusicStory dto, String path) throws Exception {
		int result=0;
		
		try {
			if(dto.getUpload() !=null && ! dto.getUpload().isEmpty()) {
				String newFilename=fileManager.doFileUpload(dto.getUpload(), path);
				dto.setImageFilename(newFilename);
				result=dao.insertData("musicstory.insertMusicStory", dto);
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
			result=dao.getIntValue("musicstory.dataCount",map);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}
	@Override
	public MusicStory readMusicStory(int num) {
		MusicStory dto=null;
		
		try {
			dto=dao.getReadData("musicstory.readMusicStory",num);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return dto;
	}
	@Override
	public List<MusicStory> listMusicStory(Map<String, Object> map) {
		List<MusicStory> list=null;
		
		try {
			list=dao.getListData("musicstory.listMusicStory",map);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return list;
	}
	@Override
	public int updateHitCount(int num) {
		int result=0;
		
		try {
			result=dao.updateData("musicstory.updatehitCount", num);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
	}
	@Override
	public int updateMusicStory(MusicStory dto) {
		int result=0;
		
		try {
			dao.updateData("musicstory.updateMusicStory", dto);
			//result=1;
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}

}
