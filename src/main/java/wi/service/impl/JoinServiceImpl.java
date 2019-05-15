package wi.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wi.dao.face.JoinDao;
import wi.dto.Member;
import wi.service.face.JoinService;

@Service
public class JoinServiceImpl implements JoinService{

	 @Autowired JoinDao joinDao;
	
	// 회원 등록하기
	@Override
	public void joinMember(Member member)throws Exception {		
		joinDao.insertMember(member);
	}

	// 아이디 중복체크
	@Override public String checkId(String mem_id) throws Exception { 
		return joinDao.selectCheckId(mem_id); 
	}


	
}
