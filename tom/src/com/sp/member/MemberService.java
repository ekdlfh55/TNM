package com.sp.member;

public interface MemberService {
	public int insertMember(Member member) throws Exception;
	public int updateMember(Member member) throws Exception;
	public int deleteMember(String userId) throws Exception;
}
