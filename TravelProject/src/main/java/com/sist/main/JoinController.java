package com.sist.main;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.member.dao.*;

@Controller
public class JoinController {
	@Resource(name="mdao")
	private MemberDAO dao;
	
	@RequestMapping("member/member_insert.do")
	public String member_insert(){
		return "member/member_insert";
	}
	@RequestMapping("member/member_insert_ok.do")
	public String member_insert_ok(MemberVO vo)
	{
		dao.memberInsert(vo);
		return "redirect:/main/main.do";
	}
}
