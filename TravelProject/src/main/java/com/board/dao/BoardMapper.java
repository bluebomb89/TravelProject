package com.board.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import java.util.*;

public interface BoardMapper {
	 
	    @Select("SELECT board_no,board_name,board_hit,board_like,board_dbday,num "
	    	   +"FROM (SELECT board_no,board_subject,board_name,TO_CHAR(board_regdate,'YYYY-MM-DD') as board_dbday,board_hit,rownum as num "
	    	   +"FROM (SELECT board_no,board_subject,board_name,board_regdate,board_hit "
	    	   /*+"FROM board ORDER BY group_id DESC,group_step ASC)) "*/
	    	   +"WHERE num BETWEEN #{start} AND #{end}")
	    public List<BoardVO> boardListData(Map map);
	    
	    @Select("SELECT COUNT(*) FROM p3board")
	    public int boardRowCount();
	    
	    @SelectKey(keyProperty="no",before=true,resultType=int.class,
	    		statement="SELECT NVL(MAX(no)+1,1) as no FROM board")
	    @Insert("INSERT INTO board VALUES("
	    	   +"#{board_no, jdbcType=INTEGER},"
	    	   +"#{board_name, jdbcType=VARCHAR},"
	    	   +"#{board_hit, jdbcType=VARCHAR},"
	    	   +"#{board_like, jdbcType=VARCHAR},"
	    	   +"#{board_content, jdbcType=VARCHAR},"
	    	   +"SYSDATE,0,"
	    	   +"(SELECT NVL(MAX(group_id)+1,1) FROM board),"
	    	   +"0,0,0,0,0)")
	    public void boardInsert(BoardVO vo);
	  
	    @Update("UPDATE board SET "
	    	   +"hit=hit+1 "
	    	   +"WHERE no=#{no}")
	    public void boardHitIncrement(int no);
	    
	    @Select("SELECT board_no,board_name,boarD_subject,board_content,"
	    	  +"TO_CHAR(regdate,'YYYY-MM-DD') as board_dbday,board_hit "
	    	  +"FROM board WHERE no=#{no}")
	    public BoardVO boardContentData(int no);
}
