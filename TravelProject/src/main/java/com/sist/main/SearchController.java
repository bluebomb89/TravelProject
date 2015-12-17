package com.sist.main;
import com.main.search.*;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchController {
	@Autowired
	private SearchManager smr;
	@RequestMapping("travel_search.tvl")
	public String travel_search(SearchVO vo,String searchText) throws Exception{
		System.out.println(searchText);
		smr.movie_parse(searchText);
		return "main";
	}
}
