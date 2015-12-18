package com.sist.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.bandi.bandiManager;
import com.main.bandi.bandiVO;

import java.util.*;
@Controller
public class MainController {
	@Autowired
	private bandiManager bm;
	
   @RequestMapping("main.tvl")
   public String mainView(Model model) throws Exception{
	   List<bandiVO> vo =bm.bandiAllData();
	   model.addAttribute("list", vo);
      return "main";
   }
}

