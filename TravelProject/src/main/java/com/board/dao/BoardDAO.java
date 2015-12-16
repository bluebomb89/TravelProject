package com.board.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.*;

@Repository
public class BoardDAO {
	@Autowired
	private BoardMapper mapper;
	public int boardsequence(){
		return mapper.boardsequence();
	}
	public void boardInsert(BoardVO vo){
		mapper.boardInsert(vo);
	}
	public void boardContInsert(BoardcontVO cvo){
		mapper.boardContInsert(cvo);
	}
	public List<BoardVO> boardListData(){
		return mapper.boardListData();
	}
	public List<BoardcontVO> boardContListData(){
		return mapper.boardContListData();
	}
}
