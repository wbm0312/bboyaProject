package wi.model;

public class LoginDto {
	
	private String mem_id; // 아이디
	private String mem_pw; // 비밀번호
	private boolean memberCookie; // 로그인 유지 여부 
	
	
	@Override
	public String toString() {
		return "LoginDto [mem_id=" + mem_id + ", mem_pw=" + mem_pw + ", memberCookie=" + memberCookie + ", getMem_id()="
				+ getMem_id() + ", getMem_pw()=" + getMem_pw() + ", isMemberCookie()=" + isMemberCookie()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public boolean isMemberCookie() {
		return memberCookie;
	}
	public void setMemberCookie(boolean memberCookie) {
		this.memberCookie = memberCookie;
	}
	
	
	
	

}
