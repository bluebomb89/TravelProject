package com.board.dao;

import org.jsoup.Jsoup;
import org.jsoup.nodes.*;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Repository;
import java.util.*;
@Repository
public class BoardManager {
	public List<KoreaBookVO> koreaBookRecommend(int page) throws Exception{
		List<KoreaBookVO> list=new ArrayList<KoreaBookVO>();
			Document document=Jsoup.connect("http://www.aladin.co.kr/shop/common/wbest.aspx?BestType=Bestseller&BranchType=1&CID=0&page="+page+"&cnt=300&SortOrder=1").get();
			Elements imgElements=document.select("div.ss_book_box > table > tbody > tr > td > table > tbody > tr > td > a > img");
			Elements contElements=document.select("div.ss_book_list li a.bo3 b");
			for(int i=0;i<imgElements.size();i=i+3){
				if(i==60) i++;
				KoreaBookVO kvo=new KoreaBookVO();
				kvo.setImg(imgElements.get(i).attr("src"));
				kvo.setCont(contElements.get(i/3).text());
				list.add(kvo);
				if(i==122) i--;
				if(i==124) i++;
			}	
		return list;
	}
	public List<KoreaBookVO> koreaBookBest(int page) throws Exception{
		List<KoreaBookVO> list=new ArrayList<KoreaBookVO>();
		Document document=Jsoup.connect("http://www.aladin.co.kr/shop/book/Recommend2010/type2.aspx?ViewRowsCount=25&ViewType=Detail&SortOrder=2&page="+page+"&PublishDay=84&CID=114976&CustReviewRankStart=&CustReviewRankEnd=&CustReviewCountStart=&CustReviewCountEnd=&PriceFilterMin=&PriceFilterMax=").get();
		Elements imgElements=document.select("div.ss_book_box > table > tbody > tr > td > table > tbody > tr > td > a > img");
		Elements contElements=document.select("div.ss_book_box li a.bo3 b");
		for(int i=0;i<imgElements.size();i=i+3){
			KoreaBookVO kvo=new KoreaBookVO();
			kvo.setImg(imgElements.get(i).attr("src"));
			kvo.setCont(contElements.get(i/3).text());
//			kvo.setRealcont(cont.get);
			list.add(kvo);
		}
		return list;
	}
	public List<UsaBookVO> UsaBookBest(int page) throws Exception{
		List<UsaBookVO> list=new ArrayList<UsaBookVO>();
		Document document=Jsoup.connect("http://foreign.aladin.co.kr/shop/common/wbest.aspx?BestType=ForeignEnglish&BranchType=7&CID=0&page="+page+"&cnt=200&SortOrder=1").get();
		Elements imgElements=document.select("div.ss_book_box > table > tbody > tr > td > table > tbody > tr > td > a >img");
		Elements contElements=document.select("div.ss_book_list > ul > li > a.bo3 b");
		for(int i=0;i<contElements.size();i=i+2){
			UsaBookVO uvo=new UsaBookVO();
			uvo.setImg(imgElements.get(i).attr("src"));
			uvo.setCont(contElements.get(i/2).text());
			if(i-1==6) i++;
			if(i==11) i++;
			if(i==18) i++;
			if(i==20) i++;
			list.add(uvo);			
		}
		return list;
	}
}
