package com.sp.adminmain;

import java.util.List;
import java.util.Map;

public interface ArtistService {
	public int insertArtist(Artist dto, String path) throws Exception;
	public int dataCount(Map<String,Object> map);
	
	public Artist readMusicStory(int artistnum);
	public List<Artist> artistlist(Map<String, Object> map);
}
