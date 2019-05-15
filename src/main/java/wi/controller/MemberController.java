package wi.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import wi.model.LoginDto;
import wi.model.Member;
import wi.service.face.MemberService;

@Controller
public class MemberController {

	@Autowired MemberService memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);	
	
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

	
	/* =============================================================
	*                        로그인 관련 처리 
	*  =============================================================                    
	*/ 		
	
	// 로그인 폼
	@RequestMapping(value="/login/form", method=RequestMethod.GET)
	public String loginForm(LoginDto loginDto) throws Exception {
		return "/member/login";
	}
	
	// 로그인 처리
	@ResponseBody
	@RequestMapping(value="/login/action", method=RequestMethod.POST)
	public void memberLogin(LoginDto loginDto, HttpSession session, Model model, Member member) throws Exception {
		
		logger.info("memberLogin" + new Date());
		
		// 아이디 비밀번호 일치 확인
		member = memberService.login(loginDto);		
		// 불일치 할 경우
		if (member == null || !BCrypt.checkpw(loginDto.getMem_pw(), member.getMem_pw())) {
			return;
		}		
		// 일치 할 경우
		model.addAttribute("member",member);		
		// 로그인 유지를 선택 한 경우
		if(loginDto.isMemberCookie()) {
			// 로그인 유지 유효기간 : 하루
			int amount = 60 * 60 * 24;
			// 로그인 유지 유효 일자
			Date sessionLimit = new Date(System.currentTimeMillis() + (1000 * amount)); // 밀리초 = 1000분의 1초 
			
			// 로그인 유지 기간 갱신( 아이디, 세션아이디, 유효일자 )
			memberService.keepLogin(member.getMem_id(), session.getId(), sessionLimit);
		}			
	}




}

