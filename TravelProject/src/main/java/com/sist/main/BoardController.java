package com.sist.main;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.board.dao.*;
import com.member.dao.*;
import java.util.*;
import java.text.*;

@Controller
public class BoardController {
	@Autowired
	private BoardDAO dao;
	@RequestMapping("board/board.tvl")
	   public String board_list(String page,Model model)
	   {
		   if(page==null)
			   page="1";
		   int curpage=Integer.parseInt(page);
		   int rowSize=10;
		   int start=(curpage*rowSize)-(rowSize-1);
		   int end=curpage*rowSize;
		   Map map=new HashMap();
		   map.put("start",start);
		   map.put("end", end);
		   List<BoardVO> list=dao.boardListData(map);
		   int totalpage=dao.boardTotalpage();
		   model.addAttribute("list", list);
		   // 현재 페이지
		   model.addAttribute("curpage", curpage);
		   // 총 페이지
		   model.addAttribute("totalpage", totalpage);
		   model.addAttribute("today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		   return "board/list";
	   }
	  
	  
	@RequestMapping("img.tvl")
	public String member_insert(){
		return "board/board";
	}
	@RequestMapping("travel_insert.tvl")
	public String travel_insert(Model model){
		/*System.out.println("1");*/
		return "board/board_insert";
		/*model.addAllAttributes(arg0)(arg0)*/
	}
	
	 @RequestMapping("insert_ok.tvl")
	   public String board_insert_ok(BoardVO vo)
	   {
		   
		   // DB연동 
		   dao.boardInsert(vo);
		   System.out.println("1");
		   return "redirect:/board/board.tvl";
	   }
}
