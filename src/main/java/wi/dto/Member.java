package wi.dto;

import java.sql.Date;

public class Member {
	
	/*
	 * Member에 대한 권한 설정 ( mem_case_no로 분류 ) 
	 */
    private int mem_no;
    private int mem_case_no; // 0 = ADMIN, 1=USER, 2=HOST
    private String mem_id;
    private String mem_pw;
    private String mem_name;
    private Date mem_birth;
    private String mem_phone;
    private int mem_activation; // 0 = 멤버비활성화, 1 = 멤버활성화
    private String mem_uKey;
    
	@Override
	public String toString() {
		return "Member [mem_no=" + mem_no + ", mem_case_no=" + mem_case_no + ", mem_id=" + mem_id + ", mem_pw=" + mem_pw
				+ ", mem_name=" + mem_name + ", mem_birth=" + mem_birth + ", mem_phone=" + mem_phone
				+ ", mem_activation=" + mem_activation + ", mem_uKey=" + mem_uKey + ", getMem_no()=" + getMem_no()
				+ ", getMem_case_no()=" + getMem_case_no() + ", getMem_id()=" + getMem_id() + ", getMem_pw()="
				+ getMem_pw() + ", getMem_name()=" + getMem_name() + ", getMem_birth()=" + getMem_birth()
				+ ", getMem_phone()=" + getMem_phone() + ", getMem_activation()=" + getMem_activation()
				+ ", getMem_uKey()=" + getMem_uKey() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	public int getMem_case_no() {
		return mem_case_no;
	}
	public void setMem_case_no(int mem_case_no) {
		this.mem_case_no = mem_case_no;
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
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public Date getMem_birth() {
		return mem_birth;
	}
	public void setMem_birth(Date mem_birth) {
		this.mem_birth = mem_birth;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	public int getMem_activation() {
		return mem_activation;
	}
	public void setMem_activation(int mem_activation) {
		this.mem_activation = mem_activation;
	}
	public String getMem_uKey() {
		return mem_uKey;
	}
	public void setMem_uKey(String mem_uKey) {
		this.mem_uKey = mem_uKey;
	}

    
}
