package com.sp.member;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.common.dao.CommonDAO;

@Service("member.memberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private CommonDAO dao;
	
	@Override
	public int insertMember(Member member) throws Exception {
		int result=0;
		try {
			if(member.getEmail1() != null && member.getEmail1().length()!=0 &&
					member.getEmail2() != null && member.getEmail2().length()!=0)
				member.setEmail(member.getEmail1() + "@" + member.getEmail2());
			
			if(member.getTel1() != null && member.getTel1().length()!=0 &&
					member.getTel2() != null && member.getTel2().length()!=0 &&
							member.getTel3() != null && member.getTel3().length()!=0)
				member.setTel(member.getTel1() + "-" + member.getTel2() + "-" + member.getTel3());
			
			dao.insertData("member.insertMember1", member);
			dao.insertData("member.insertMember2", member);
			
			result=1;
			
		} catch (Exception e) {
			System.out.println(e.toString());
			
			throw e;
		}
		return result;
	}

	@Override
	public int updateMember(Member member) throws Exception {
		int result=0;
		try {
			if(member.getEmail1() != null && member.getEmail1().length()!=0 &&
					member.getEmail2() != null && member.getEmail2().length()!=0)
				member.setEmail(member.getEmail1() + "@" + member.getEmail2());
			
			if(member.getTel1() != null && member.getTel1().length()!=0 &&
					member.getTel2() != null && member.getTel2().length()!=0 &&
							member.getTel3() != null && member.getTel3().length()!=0)
				member.setTel(member.getTel1() + "-" + member.getTel2() + "-" + member.getTel3());
			
			dao.updateData("updateMember1", member);
			dao.updateData("updateMember2", member);
			
			result=1;
			
		} catch (Exception e) {
			System.out.println(e.toString());
			
			throw e;
		}
		
		return result;
	}

	@Override
	public int deleteMember(String userId) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Member readMember(String userId) {
		Member dto=null;
		
		try {
			dto=dao.getReadData("member.readMember", userId);
			
			if(dto!=null) {
				if(dto.getEmail()!=null) {
					String [] s=dto.getEmail().split("@");
					dto.setEmail1(s[0]);
					dto.setEmail2(s[1]);
				}

				if(dto.getTel()!=null) {
					String [] s=dto.getTel().split("-");
					dto.setTel1(s[0]);
					dto.setTel2(s[1]);
					dto.setTel3(s[1]);
				}
			}
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return dto;
	}

	@Override
	public int dataCount(Map<String, Object> map) {
		int result=0;
		try {
			result=dao.getIntValue("member.dataCount",map);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}

	@Override
	public List<Member> listMember(Map<String, Object> map) {
		List<Member> list =null;
		try {
			list=dao.getListData("member.listMember",map);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return list;
	}

}
