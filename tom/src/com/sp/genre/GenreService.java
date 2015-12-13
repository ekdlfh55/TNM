package com.sp.genre;

import java.util.List;
import java.util.Map;

public interface GenreService {
	public int insertGenre(Genre dto);
	public List<Genre> listGenreBoard(Map<String, Object> map);
	public int dataCount(Map<String, Object> map);
	public Genre readGenre(int num);
	public int updateHitCount(int num);
	public int updateGenre(Genre dto);
	public int deleteGenre(int num);
	
	public int insertGenreReply(GenreReply dto);
	public List<GenreReply> listReply(Map<String, Object>map);
	public int dataCountReply(Map<String, Object>map);
	public int deleteReply(int replyNum);
}
