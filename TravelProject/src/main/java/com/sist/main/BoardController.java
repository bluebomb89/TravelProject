package com.sist.main;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.member.dao.*;

@Controller
public class BoardController {
	@RequestMapping("img.do")
	public String member_insert(){
		return "board/board";
	}
}
