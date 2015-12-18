package com.sist.main;
import com.main.bandi.bandiManager;
import com.main.bandi.bandiVO;
import com.main.search.*;


import javax.servlet.http.HttpServletRequest;

import org.rosuda.REngine.REXP;
import org.rosuda.REngine.Rserve.RConnection;
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
		 RConnection rc=new RConnection();
    	 rc.setStringEncoding("utf8");
    	 rc.voidEval("feel<-read.table(\"/home/sist/feel\")");
    	 REXP p=rc.eval("feel$V1");
    	 String[] word=p.asStrings();
    	 p=rc.eval("feel$V2");
    	 int[] count=p.asIntegers();
    	 rc.close();
    	 List<Word> mList=new ArrayList<Word>();
    	 for(int i=0;i<word.length;i++)
    	 {
    		 if(i>9) break;
    		 Word w=new Word();
    		 w.setWord(word[i]);
    		 w.setCount(count[i]);
    		 mList.add(w);
    	 }
    	 model.addAttribute("mList", mList);
		// 반디앤루니스 R통계
		List<bandiVO> list=bmr.bandiAllData();
		System.out.println("리스트는!!"+list.size());
		model.addAttribute("list", list);
		return "main";
	}
}
