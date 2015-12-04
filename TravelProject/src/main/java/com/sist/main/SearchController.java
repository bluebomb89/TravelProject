package com.sist.main;
import com.main.search.*;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchController {
	@RequestMapping("travel_search.tvl")
	public String travel_search(Map map){
//		System.out.println(vo.getSearchTxt());
		System.out.println(map.size());
		return "main";
	}
}
