package com.signal.board.model;

public class MemberVO {

	private String memberId;
	private String memberEmail;
	private String memberPwd;
	private String memberRePwd;
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberPwd() {
		return memberPwd;
	}
	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}
	public String getMemberRePwd() {
		return memberRePwd;
	}
	public void setMemberRePwd(String memberRePwd) {
		this.memberRePwd = memberRePwd;
	}
	
	@Override
	public String toString() {
		return "MemberVO [memberId=" + memberId + ", memberEmail=" + memberEmail + ", memberPwd=" + memberPwd
				+ ", memberRePwd=" + memberRePwd + "]";
	}
	
}
