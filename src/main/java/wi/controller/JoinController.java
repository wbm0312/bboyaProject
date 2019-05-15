package wi.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import wi.dto.Member;
import wi.service.face.JoinService;

@Controller
public class JoinController {

	@Autowired JoinService joinService;
	
	
	// 회원 등록 폼
	@RequestMapping(value="/join/form", method=RequestMethod.GET)
	public String joinForm() throws Exception {
		return "/member/join";
	}
	
	// 회원 등록하기
	@RequestMapping(value="/join/register", method=RequestMethod.POST)
    public void joinMember(Member member) throws Exception {
		joinService.joinMember(member); 
	}
	

	// 아이디 중복체크
	@ResponseBody
    @RequestMapping(value="/join/checkId", method=RequestMethod.POST) 
	public int checkId(HttpServletRequest req) throws Exception {
	  
		String mem_id = req.getParameter("mem_id"); String idCheck =
	    joinService.checkId(mem_id);
	  
	    int result = 0; // 아이디가 존재하지 않는 경우
	  
	    if(idCheck != null) { // 아이디가 이미 존재하는 경우 result = 1; 
		  
	    } 
	    return result; 
	 }





}

