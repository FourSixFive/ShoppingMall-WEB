package kr.ac.kopo.vo;

public class MemberVO {
	
	private String id;
	private String password;
	private String name;
	private String phone;
	private char sex;
	private int postcode;
	private String basicAddr;
	private String detailAddr;
	private int point;
	private String regDate;
	private String email;
	
	public MemberVO() {
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public char getSex() {
		return sex;
	}

	public void setSex(char sex) {
		this.sex = sex;
	}

	public int getPostcode() {
		return postcode;
	}

	public void setPostcode(int postcode) {
		this.postcode = postcode;
	}

	public String getBasicAddr() {
		return basicAddr;
	}

	public void setBasicAddr(String basicAddr) {
		this.basicAddr = basicAddr;
	}

	public String getDetailAddr() {
		return detailAddr;
	}

	public void setDetailAddr(String detailAddr) {
		this.detailAddr = detailAddr;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRedDate(String regDate) {
		this.regDate = regDate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + ", phone=" + phone + ", sex=" + sex
				+ ", postcode=" + postcode + ", basicAddr=" + basicAddr + ", detailAddr=" + detailAddr + ", point="
				+ point + ", regDate=" + regDate + ", email=" + email + "]";
	}
	
}
