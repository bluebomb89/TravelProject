package com.sist.main;

import org.rosuda.REngine.REXP;
import org.rosuda.REngine.Rserve.RConnection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.bandi.bandiManager;
import com.main.bandi.bandiVO;
import com.main.search.Word;

import java.io.File;
import java.util.*;
@Controller
public class MainController {
	@Autowired
	private bandiManager bm;
	
   @RequestMapping("main.tvl")
   public String mainView(Model model) throws Exception{
	   List<bandiVO> vo =bm.bandiAllData();
	   File file=new File("/home/sist/bookfeel");
	   String sfile="feel<-read.table(\"/home/sist/bookfeel\")";
	   if(!file.exists()) sfile="feel<-read.table(\"/home/sist/feel\")";
		 RConnection rc=new RConnection();
    	 rc.setStringEncoding("utf8");
    	 rc.voidEval(sfile);
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
    	 model.addAttribute("title", "미생");
	   model.addAttribute("list", vo);
      return "main";
   }
}

