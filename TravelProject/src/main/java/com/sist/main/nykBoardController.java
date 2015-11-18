package com.sist.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class nykBoardController {
	@RequestMapping("")
	public String nykimg(){
		return "";
	}
}
