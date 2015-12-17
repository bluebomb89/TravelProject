package com.sist.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.main.ReviewManager;

@Controller
public class ReviewController {
	@Autowired
    private ReviewManager rm;
	@RequestMapping("review/review.tvl")
	public String review_main(String page,Model model)
	{
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		List<String> list=rm.review_data(curpage);
		int totalpage=rm.revie_totalpage();
		model.addAttribute("curpage", curpage);
		model.addAttribute("totalpage", totalpage);
		model.addAttribute("list", list);
		model.addAttribute("jsp", "../review/review.jsp");
		return "movie/main";
	}
	@RequestMapping("review/find.tvl")
	public String review_find(String movie_title)
	throws Exception
	{
		
		rm.review_find(movie_title);
		return "redirect:/review/review.tvl";
	}
}








