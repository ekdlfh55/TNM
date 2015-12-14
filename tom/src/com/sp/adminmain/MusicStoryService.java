package com.sp.adminmain;

import java.util.List;
import java.util.Map;

public interface MusicStoryService {
	public int insertMusicStory(MusicStory dto, String path)throws Exception;
	public List<MusicStory> listMusicStory(Map<String, Object> map);
	public int dataCount(Map<String,Object> map);
	public MusicStory readMusicStory(int num);
	public int updateHitCount(int num);
	public int updateMusicStory(MusicStory dto);
	public int deleteMusicStory(int num);
}
