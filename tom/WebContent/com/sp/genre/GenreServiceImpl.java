package com.sp.genre;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.common.dao.CommonDAO;

@Service("genre.genreService")
public class GenreServiceImpl implements GenreService{

	@Autowired
	private CommonDAO dao;
	
	@Override
	public int insertGenre(Genre dto) {
		int result=0;
		
		try {
			result=dao.insertData("genre.insertGenre", dto);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}

	@Override
	public List<Genre> listGenreBoard(Map<String, Object> map) {
		List<Genre> list=null;
		try 
		{
			list=dao.getListData("genre.listGenreBoard",map);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return list;
	}

	@Override
	public int dataCount(Map<String, Object> map) {
		int result=0;
		try {
			result=dao.getIntValue("genre.dataCount",map);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}

	@Override
	public Genre readGenre(int num) {
		Genre dto=null;
		try {
			dto=dao.getReadData("genre.readGenre",num);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return dto;
	}

	@Override
	public int updateHitCount(int num) {
		int result=0;
		try {
			result=dao.updateData("genre.updateHitCount", num);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}


	@Override
	public int updateGenre(Genre dto) {
		int result=0;
		
		try {
			dao.updateData("genre.updateGenre", dto);
			result=1;
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}

	@Override
	public int deleteGenre(int num) {
		int result=0;
		try {
			result =dao.deleteData("genre.deleteGenre", num);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
	}


	@Override
	public int insertGenreReply(GenreReply dto) {
		int result=0;
		try {
			result=dao.insertData("genre.insertGenreReply", dto);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}

	@Override
	public List<GenreReply> listReply(Map<String, Object> map) {
		List<GenreReply> list=null;
		try {
			list=dao.getListData("genre.listReply",map);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return list;
	}

	@Override
	public int dataCountReply(Map<String, Object> map) {
		int result=0;
		try {
			result=dao.getIntValue("genre.dataCountReply",map);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}

	@Override
	public int deleteReply(int replyNum) {
		int result=0;
		try {
			result=dao.deleteData("genre.deleteReply", replyNum);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}


}
