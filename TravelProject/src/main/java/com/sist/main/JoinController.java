package com.sist.main;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.member.dao.*;

@Controller
public class JoinController {
	@Resource(name="mdao")
	private MemberDAO dao;
	
	@RequestMapping("join.tvl")
	public String member_insert(){
		return "member/member_insert";
	}
	@RequestMapping("member/member_insert_ok.tvl")
	public String member_insert_ok(MemberVO vo)
	{
		dao.memberInsert(vo);
		return "redirect:/main/main.tvl";
	}
}
