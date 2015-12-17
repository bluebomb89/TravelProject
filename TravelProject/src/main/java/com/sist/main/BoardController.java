package com.sist.main;

import javax.annotation.Resource;
import javax.xml.ws.RequestWrapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.board.dao.*;
import com.member.dao.*;
import java.util.*;
import java.io.File;
import java.text.*;

@Controller
public class BoardController {
	@Autowired
	private BoardDAO dao;	  
	@RequestMapping("img.tvl")
	public String member_insert(Model model){
		List<BoardVO> list=dao.boardListData();
		model.addAttribute("list", list);
		List<BoardcontVO> clist=dao.boardContListData();
		model.addAttribute("clist", clist);
		return "board/board";
	}
	@RequestMapping("travel_insert.tvl")
	public String travel_insert(Model model){
		/*System.out.println("1");*/
		return "board/board_insert";
		/*model.addAllAttributes(arg0)(arg0)*/
	}
	
	 @RequestMapping("insert_ok.tvl")
	   public String board_insert_ok(BoardVO vo,BoardcontVO cvo) throws Exception{
		 // ������ �ѹ�
		 int sequence=dao.boardsequence();
		 String path="/home/sist/jasb/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/TravelProject/board/image/";
		 String spath="/home/sist/jasb/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/TravelProject/board/image/contimage/";
		
		 // Ÿ��Ʋ DB���� 
		 if(vo.getBoard_mainimage()==null || vo.getBoard_mainimage().getSize()<1){
		 	vo.setBoard_filename("");
			vo.setBoard_filesize("");
		 }else{
		 	String fn="";
			String fs="";
			MultipartFile mf=vo.getBoard_mainimage();
			String name=mf.getOriginalFilename();
			File file=new File(path+name);
			mf.transferTo(file);
			fs=String.valueOf(mf.getSize());
			vo.setBoard_filename(name);
			vo.setBoard_filesize(fs);
		 }
		 vo.setBoard_tno(sequence);
		 dao.boardInsert(vo);
		 
		 // 
		 boolean conts=true;
		 int count=1;
		 List<MultipartFile> list=cvo.getFiles();
		 List<String> cont=cvo.getTv_cont();
		 for(int i=0; i<list.size(); i++){
			 cvo.setBoard_tno(sequence);
			 String cfs="";
			 MultipartFile cmf=list.get(i);
			 String cname=cmf.getOriginalFilename();
			 File file=new File(spath+cname);
			 cmf.transferTo(file);
			 cfs=String.valueOf(cmf.getSize());
			 cvo.setBoard_filename(cname);
			 cvo.setBoard_filesize(cfs);
			 String contc=cont.get(i);
			 cvo.setBoard_cont_cont(contc);
			 dao.boardContInsert(cvo);
		 }
		 return "redirect:/img.tvl";
	   }
	 @RequestMapping("koreabook.tvl")
	 public String koreabook(){
		 return "board/koreabook";
	 }
	 @RequestMapping("usabook.tvl")
	 public String usabook(){
		 return "board/usabook";
	 }
}
