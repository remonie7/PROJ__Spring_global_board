package com.signal.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.signal.board.model.MemberVO;
import com.signal.board.service.IMemberService;

@Controller
public class MemberController {

	@Autowired
	IMemberService MemberService;
	
	@RequestMapping(value = "/member/registerform", method = RequestMethod.GET)
	public String insertMember(Model model) {
		return "member/registerform";
	}
	
	@RequestMapping(value = "/member/registerform", method = RequestMethod.POST)
	public String insertBoardMember(MemberVO member, Model model) {
		MemberService.insertMember(member);
		return "redirect:/member/registerform";
	}

//	@RequestMapping(value = "/member/logincheckform")
//	public String getMemberInfo(@RequestParam String memberId, @RequestParam String memberPw,
//			Model model) {
//
//		System.out.println(memberId);
//
//		MemberVO member = MemberService.getMemberInfo(memberId);
//		model.addAttribute("member", member);
//		System.out.println(member.getMemberId());
//		return "member/loginform";
//
//	}

	@RequestMapping(value = "/member/loginform", method = RequestMethod.GET)
	public String loginMember(Model model) {
		return "member/loginform";
	}


}
