package com.signal.board.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.signal.board.model.MemberVO;
import com.signal.board.repository.IMemberRepository;

@Service
public class MemberService implements IMemberService {
	@Autowired
	IMemberRepository memberRepository;

	
	@Override
	public void insertMember(MemberVO member) {
		memberRepository.insertMember(member);
	}
	
	
//	@Override
//	public MemberVO getMemberInfo(String memberid) {
//		System.out.print("서비스 오픈");
//		System.out.println(memberid);
//		return memberRepository.getMemberInfo(memberid);
//	}
	
	
}
