package wi.controller;

import javax.servlet.http.HttpServletRequest;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import wi.dto.Member;
import wi.service.face.MemberService;

@Controller
public class MemberController {

	@Autowired MemberService memberService;
	
	
	/* =============================================================
	*                      회원가입 및 수정 탈퇴 
	*  =============================================================                    
	*/ 	
	
	// 회원 등록 폼
	@RequestMapping(value="/join/form", method=RequestMethod.GET)
	public String joinForm() throws Exception {
		return "/member/join";
	}
	
	// 회원 등록하기
	@RequestMapping(value="/join/register", method=RequestMethod.POST)
    public String joinMember(Member member, RedirectAttributes redirectAttributes) throws Exception {
		// 비밀번호 암호화 처리 
		String hashPw = BCrypt.hashpw(member.getMem_pw(), BCrypt.gensalt());
		member.setMem_pw(hashPw);
		memberService.joinMember(member); 
		
		redirectAttributes.addFlashAttribute("msg", "Registered"); 
		return "redirect:/member/join";
	}
	

	// 아이디 중복체크
	@ResponseBody
    @RequestMapping(value="/join/checkId", method=RequestMethod.POST) 
	public int checkId(HttpServletRequest req) throws Exception {
	  
		String mem_id = req.getParameter("mem_id"); 
		String idCheck = memberService.checkId(mem_id);
	  
	    int result = 0; // 아이디가 존재하지 않는 경우
	  
	    if(idCheck != null) { // 아이디가 이미 존재하는 경우 
	    	result = 1; 	  
	    } 
	    return result; 
	 }

	
	




}

