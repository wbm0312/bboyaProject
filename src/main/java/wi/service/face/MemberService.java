package wi.service.face;

import java.util.Date;

import wi.model.LoginDto;
import wi.model.Member;

public interface MemberService {
	
	// 회원등록하기
	public void joinMember(Member membe) throws Exception;
	
	// 아이디 중복 체크
    public String checkId(String mem_id) throws Exception;
    
    // 로그인 처리
    public Member login(LoginDto loginDto) throws Exception;
    
    // 로그인 유지 
    public void keepLogin(String mem_id, String sessionId, Date next) throws Exception;
    


}
