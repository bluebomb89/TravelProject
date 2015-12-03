package com.board.dao;
/*
BOARD_TNO                                 NOT NULL NUMBER
BOARD_SUB                                 NOT NULL CLOB
BOARD_MAINIMAGE                           NOT NULL VARCHAR2(200)
BOARD_NAME                                NOT NULL VARCHAR2(200)
BOARD_SYSDATE                                      DATE
BOARD_LIKE                                         NUMBER
 */
import java.util.*;

import org.springframework.web.multipart.MultipartFile;
public class BoardVO {
	private int board_tno;
	private String board_sub;
	private MultipartFile board_mainimage;
	private String board_name;
	private Date board_sysdate;
	private int board_like;
	private String board_filename;
	private String board_filesize;
	
	
	public String getBoard_filename() {
		return board_filename;
	}
	public void setBoard_filename(String board_filename) {
		this.board_filename = board_filename;
	}
	public String getBoard_filesize() {
		return board_filesize;
	}
	public void setBoard_filesize(String board_filesize) {
		this.board_filesize = board_filesize;
	}
	public int getBoard_tno() {
		return board_tno;
	}
	public void setBoard_tno(int board_tno) {
		this.board_tno = board_tno;
	}
	public String getBoard_sub() {
		return board_sub;
	}
	public void setBoard_sub(String board_sub) {
		this.board_sub = board_sub;
	}
	public MultipartFile getBoard_mainimage() {
		return board_mainimage;
	}
	public void setBoard_mainimage(MultipartFile board_mainimage) {
		this.board_mainimage = board_mainimage;
	}
	public String getBoard_name() {
		return board_name;
	}
	public void setBoard_name(String board_name) {
		this.board_name = board_name;
	}
	public Date getBoard_sysdate() {
		return board_sysdate;
	}
	public void setBoard_sysdate(Date board_sysdate) {
		this.board_sysdate = board_sysdate;
	}
	public int getBoard_like() {
		return board_like;
	}
	public void setBoard_like(int board_like) {
		this.board_like = board_like;
	}
	
}