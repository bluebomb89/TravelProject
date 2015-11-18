package com.sist.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JoinController {
	@RequestMapping("member/dddd.do")
	public String join_form(){
		return "member/dddd";
	}
}
