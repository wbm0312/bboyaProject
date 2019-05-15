package wi.dao.face;

import java.util.Date;

import wi.model.LoginDto;
import wi.model.Member;

public interface MemberDao {
	
	// 회원등록하기
	public void insertMember(Member member) throws Exception;
	
	// 아이디 중복체크하기
	public String selectCheckId(String mem_id) throws Exception;
	
	// 로그인 처리
	public Member login(LoginDto loginDto) throws Exception;
	
	// 로그인 유지
	public void keepLogin(String mem_id, String sessionId, Date next) throws Exception;
	

	
}
