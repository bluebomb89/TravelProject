package com.sist.main;

import java.lang.reflect.Member;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.tiles3.TilesView;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

import com.member.dao.*;

@Controller
public class JoinController {
	@Resource(name="mdao")
	private MemberDAO dao;
	
	@RequestMapping("join.tvl")
	public String member_insert(){
		
		return "member/member_insert";
	}
	@RequestMapping("member_insert_ok.tvl")
	public String member_insert_ok(MemberVO vo,Model model)
	{
		System.out.println();
		
		dao.memberInsert(vo);
		
		return "member/member_insert_ok";
	}
	@RequestMapping("member_id_check.tvl")
	public String member_isert_ok(String id,Model model) throws Exception{
		String idc=dao.member_id_check(id);
		model.addAttribute("id", idc);
//		return "redirect:/member/member_id_check";
		return "member/member_ajax/member_id_check";
	}
}
