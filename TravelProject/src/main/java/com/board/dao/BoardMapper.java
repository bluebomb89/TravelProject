package com.board.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;
import org.springframework.web.multipart.MultipartFile;

import java.util.*;

public interface BoardMapper {
	@Select("SELECT NVL(MAX(board_tno)+1,1) as board_tno FROM travel_board")
	public int boardsequence();

	@Insert("INSERT INTO travel_board VALUES(#{board_tno},#{board_sub},'이미지게시판',SYSDATE,#{board_like},#{board_filename},#{board_filesize})")
	public void boardInsert(BoardVO vo);
	
	@SelectKey(keyProperty="board_cont_no",resultType=int.class,before=true,statement="SELECT NVL(MAX(board_cont_no)+1,1) as board_cont_no FROM travel_board_cont")
	@Insert("INSERT INTO travel_board_cont VALUES(#{board_cont_no},#{board_tno},#{board_filename},#{board_filesize},#{board_cont_cont})")
	public void boardContInsert(BoardcontVO cvo);
	
	@Select("SELECT * FROM travel_board order by board_tno desc")
	public List<BoardVO> boardListData();
	
	@Select("SELECT * FROM travel_board_cont order by board_tno desc, board_cont_no asc")
	public List<BoardcontVO> boardContListData();
}
