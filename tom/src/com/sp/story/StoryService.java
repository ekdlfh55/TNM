package com.sp.story;

import java.util.List;
import java.util.Map;

public interface StoryService {
	public int insertStory(Story story, String mode);
	public List<Story> listStory(Map<String, Object> map);
	public int dataCount (Map<String, Object> map);
	
	public int updateHitCount(int num);
	
	public Story readStory(int num);
	public Story preReadStory(Map<String, Object> map);
	public Story nextReadStory(Map<String, Object> map);
	
	public int updateStory(Story story, String pathname);
	public int deleteStory(int num, String pathname);
}
