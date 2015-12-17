package com.board.dao;

import org.jsoup.Jsoup;
import org.jsoup.nodes.*;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Repository;
import java.util.*;
@Repository
public class BoardManager {
	public List<String> koreaBookRecommend(int page){
		List<String> list=new ArrayList<String>();
		try{
			Document document=Jsoup.connect("http://www.aladin.co.kr/shop/common/wbest.aspx?BestType=Bestseller&BranchType=1&CID=0&page="+page+"&cnt=300&SortOrder=1").get();
			Elements elements=document.select("div.ss_book_box a img");
			for(int i=0;i<elements.size();i++){
				System.out.println(elements.get(i));
			}
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		return list;
	}
}
