package com.sist.main;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@RequestMapping("main/main.do")
	public String mainView(Model model){
		System.out.println("1");
		model.addAttribute("mainview", "mainview.jsp");
		model.addAttribute("categori", "categori.jsp");
		return "main/main";
	}
}
