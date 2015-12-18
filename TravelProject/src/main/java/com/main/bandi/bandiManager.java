package com.main.bandi;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Component;
import java.util.*;
@Component
public class bandiManager {
	public List<bandiVO> bandiAllData() throws Exception{
		List<bandiVO> list=new ArrayList<bandiVO>();
		Document document=Jsoup.connect("http://www.bandinlunis.com/front/display/listBest.do").get();
//		System.out.println(document);
		Elements title=document.select("div.prod_list_type > ul > li > dl.prod_info > dt > a");
		Elements review=document.select("div.prod_list_type > ul > li > dl.prod_info > dd.txt_desc > a > em");
		Elements star=document.select("div.prod_list_type > ul > li > dl.prod_info > dd.txt_desc > strong");
//		Elements best=document.select("div.prod_list_type > ul > li > dl.prod_info > dd.txt_ebook > span > a > strong");
		System.out.println(title.size());
		for(int i=0; i<title.size(); i++){
			bandiVO vo=new bandiVO();
			vo.setTitle(title.get(i).text());
			vo.setReview(review.get(i).text().substring(1,2));
			vo.setStar(star.get(i).text());
			list.add(vo);
		}
		return list;
	}
	
}
