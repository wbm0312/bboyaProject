package wi.dao.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import wi.dao.face.MemberDao;
import wi.model.LoginDto;
import wi.model.Member;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired SqlSession sqlSession;
	String namespace = "MemberMapper.";
	
	// 회원등록하기
	@Override
	public void insertMember(Member member) throws Exception {
		sqlSession.insert(namespace + "insertMember", member);
	}

	// 아이디 중복체크 하기
    @Override
    public String selectCheckId(String mem_id) throws Exception {
	    return sqlSession.selectOne(namespace + "checkId", mem_id); 
	}

    // 로그인 처리 
	@Override
	public Member login(LoginDto loginDto) throws Exception {
		return sqlSession.selectOne(namespace + "login", loginDto);
	}

	// 로그인 유지 
	@Override
	public void keepLogin(String mem_id, String sessionId, Date next) throws Exception {
		Map<String, Object> paramMap = new HashMap();
		paramMap.put("mem_id", mem_id);
		paramMap.put("sessionId", sessionId);
		paramMap.put("next", next);
		
        sqlSession.update(namespace + "keepLogin", paramMap); 
		
	}



	

}
