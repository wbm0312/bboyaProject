package wi.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import wi.dao.face.JoinDao;
import wi.dto.Member;

@Repository
public class JoinDaoImpl implements JoinDao {

	@Autowired SqlSession sqlSession;
	String namespace = "JoinMapper.";
	
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
	 

	

}
