package wi.service.face;

import wi.dto.Member;

public interface MemberService {
	
	// 회원등록하기
	public void joinMember(Member member) throws Exception;
	
	// 아이디 중복 체크
    public String checkId(String mem_id) throws Exception;


}
