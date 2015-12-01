package com.board.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import java.util.*;

public interface BoardMapper {
	 
	    @Select("SELECT no,subject,name,dbday,hit,group_tab,num "
	    	   +"FROM (SELECT no,subject,name,TO_CHAR(regdate,'YYYY-MM-DD') as dbday,hit,group_tab,rownum as num "
	    	   +"FROM (SELECT no,subject,name,regdate,hit,group_tab "
	    	   +"FROM board ORDER BY group_id DESC,group_step ASC)) "
	    	   +"WHERE num BETWEEN #{start} AND #{end}")
	    public List<BoardVO> boardListData(Map map);
	    
	    @Select("SELECT COUNT(*) FROM board")
	    public int boardRowCount();
	    
	    @SelectKey(keyProperty="no",before=true,resultType=int.class,
	    		statement="SELECT NVL(MAX(no)+1,1) as no FROM board")
	    @Insert("INSERT INTO board VALUES("
	    	   +"#{board_no, jdbcType=INTEGER},"
	    	   +"#{nickname, jdbcType=VARCHAR},"
	    	   +"#{subject, jdbcType=VARCHAR},"
	    	   +"#{free_content, jdbcType=VARCHAR},"
	    	   +"#{free_pw, jdbcType=VARCHAR},"
	    	   +"SYSDATE,0,"
	    	   +"(SELECT NVL(MAX(group_id)+1,1) FROM board),"
	    	   +"0,0,0,0)")
	    public void boardInsert(BoardVO vo);
	  
	    @Update("UPDATE board SET "
	    	   +"hit=hit+1 "
	    	   +"WHERE no=#{no}")
	    public void boardHitIncrement(int no);
	    
	    @Select("SELECT no,name,subject,content,"
	    	  +"TO_CHAR(regdate,'YYYY-MM-DD') as dbday,hit "
	    	  +"FROM board WHERE no=#{no}")
	    public BoardVO boardContentData(int no);
}
