package com.sp.member;

import java.util.List;
import java.util.Map;

public interface MemberService {
	public int insertMember(Member member) throws Exception;
	public int updateMember(Member member) throws Exception;
	public int deleteMember(String userId) throws Exception;
	public Member readMember(String userId);
	
	public int dataCount(Map<String, Object> map);
	public List<Member> listMember(Map<String, Object> map);
}
