package com.sp.notice;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.common.dao.CommonDAO;


@Service("notice.OvoNoticeService")
public class OvoNoticeServiceImpl implements OvoNoticeService {
	@Autowired
	private CommonDAO dao;

	@Override
	public int insertOvoNotice(OvoNotice ovonotice, String mode) throws Exception {
		int result=0;
		
		try {
			int ovoNoticeNum=dao.getIntValue("ovonotice.maxovoNoticeNum")+1;
			ovonotice.setOvoNoticeNum(ovoNoticeNum);
			
			if(mode.equals("created")){
				ovonotice.setGroupNum(ovoNoticeNum);
				ovonotice.setOrderNo(0);
				ovonotice.setDepth(0);
			}
			
			result=dao.insertData("ovonotice.insertOvoNotice", ovonotice);
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}

	@Override
	public int dataCount(Map<String, Object> map) {
		int result=0;
		try {
			result=dao.getIntValue("ovonotice.dataCount",map);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
	}

	@Override
	public List<OvoNotice> listOvoNotice(Map<String, Object> map) throws Exception {
		List<OvoNotice> list=null;
		try {
			list=dao.getListData("ovonotice.listOvoNotice", map);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return list;
	}

	@Override
	public OvoNotice readOvoNotice(int ovoNoticeNum) {
		OvoNotice ovonotice=null;
		try {
			ovonotice=dao.getReadData("ovonotice.readOvoNotice", ovoNoticeNum);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return ovonotice;
	}

	@Override
	public OvoNotice preReadOvoNotice(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OvoNotice nextReadOvoNotice(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateHitCount(int num) {
		// TODO Auto-generated method stub
		return 0;
	}

	
}
