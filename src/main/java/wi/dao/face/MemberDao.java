package wi.dao.face;

import wi.dto.Member;

public interface MemberDao {
	
	// 회원등록하기
	public void insertMember(Member member) throws Exception;
	
	// 아이디 중복체크하기
	public String selectCheckId(String mem_id) throws Exception;
	
	// 로그인 처리

	
}
