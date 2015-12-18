package com.sist.main;
import com.main.bandi.bandiManager;
import com.main.bandi.bandiVO;
import com.main.search.*;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.*;
@Controller
public class SearchController {
	@Autowired
	private SearchManager smr;
	@Autowired
	private bandiManager bmr;
	@RequestMapping("travel_search.tvl")
	public String travel_search(SearchVO vo,String searchText,Model model) throws Exception{
		System.out.println(searchText);
		smr.movie_parse(searchText);
		// R연동
		
		// 반디앤루니스 R통계
		List<bandiVO> list=bmr.bandiAllData();
		System.out.println("리스트는!!"+list.size());
		model.addAttribute("list", list);
		return "main";
	}
}
