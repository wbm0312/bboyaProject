package wi.service.impl;


import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wi.dao.face.MemberDao;
import wi.model.LoginDto;
import wi.model.Member;
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

	// 로그인 처리 
	@Override
	public Member login(LoginDto loginDto) throws Exception {
		return memberDao.login(loginDto);
	}

	// 로그인 유지 
	@Override
	public void keepLogin(String mem_id, String sessionId, Date next) throws Exception {
		memberDao.keepLogin(mem_id, sessionId, next);		
	}



	
}
