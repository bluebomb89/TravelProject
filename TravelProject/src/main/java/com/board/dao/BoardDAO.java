package com.board.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.*;

@Repository
public class BoardDAO {
	@Autowired
	private BoardMapper mapper;
	 public List<BoardVO> boardListData(Map map)
	 {
		 return mapper.boardListData(map);
	 }
	 public int boardTotalpage()
	 {
		 int count=mapper.boardRowCount();
		 return (int)(Math.ceil(count/10.0));
	 }
	 public void boardInsert(BoardVO vo)
	 {
		 mapper.boardInsert(vo);
	 }
	 public BoardVO boardContentData(int no)
	 {
		 mapper.boardHitIncrement(no);
		 return mapper.boardContentData(no);
	 }
}
