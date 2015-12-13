package com.sp.adminmain;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.common.FileManager;
import com.sp.common.dao.CommonDAO;

@Service("adminmain.artistService")
public class ArtistServiceImpl implements ArtistService {
	@Autowired
	private CommonDAO dao;
	@Autowired
	private FileManager fileManager;

	@Override
	public int insertArtist(Artist dto, String path) throws Exception {
		int result=0;
		
		try {
			if(dto.getUpload()!=null && !dto.getUpload().isEmpty()) {
				String newFilename=fileManager.doFileUpload(dto.getUpload(), path);
				dto.setImageFilename(newFilename);
				result=dao.insertData("artist.insertArtist", dto);
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
			result=dao.getIntValue("artist.dataCount", map);
		} catch (Exception e) {
			System.out.println();
		}
		return result;
	}

	@Override
	public Artist readArtist(int artistNum) {
		Artist dto=null;
		
		try {
			dto=dao.getReadData("artist.readArtist", artistNum);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return dto;
	}

	@Override
	public List<Artist> artistlist(Map<String, Object> map) {
		List<Artist> list=null;
		
		try {
			list=dao.getListData("artist.artistlist", map);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return list;
	}

}
