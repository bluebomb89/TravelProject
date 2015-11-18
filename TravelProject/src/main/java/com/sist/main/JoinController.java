package com.sist.main;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.member.dao.MemberDAO;

@Controller
public class JoinController {
	@Resource(name="mdao")
	private MemberDAO dao;
	
	@RequestMapping("member/dddd.do")
	public String join_form(){
		return "member/dddd";
	}
}
