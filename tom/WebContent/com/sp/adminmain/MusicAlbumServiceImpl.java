package com.sp.adminmain;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.common.FileManager;
import com.sp.common.dao.CommonDAO;

@Service("amdinmain.musicalbumService")
public class MusicAlbumServiceImpl implements MusicAlbumService{
	@Autowired
	private CommonDAO dao;
	@Autowired
	private FileManager fileManager;

	@Override
	public int insertMusicAlbum(MusicAlbum dto, String path) throws Exception {
		int result=0;
		
		try {
			if(dto.getUpload()!=null && !dto.getUpload().isEmpty()) {
				String  newFilename=fileManager.doFileUpload(dto.getUpload(), path);
				dto.setPhoto(newFilename);
				result=dao.insertData("musicAlbum.insertMusicAlbum", dto);
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}

}
