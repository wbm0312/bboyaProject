package wi.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wi.dao.face.MemberDao;
import wi.dto.Member;
import wi.service.face.MemberService;

@Service
public class MemberServiceImpl implements MemberService{

	 @Autowired MemberDao memberDao;
	
	// 회원 등록하기
	@Override
	public void joinMember(Member member)throws Exception {		
		memberDao.insertMember(member);
	}

	// 아이디 중복체크
	@Override public String checkId(String mem_id) throws Exception { 
		return memberDao.selectCheckId(mem_id); 
	}


	
}
