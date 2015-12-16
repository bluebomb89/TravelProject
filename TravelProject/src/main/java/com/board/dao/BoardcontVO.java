package com.board.dao;
/*
 BOARD_CONT_NO                                                  NOT NULL NUMBER
 BOARD_TNO                                                               NUMBER
 BOARD_FILENAME                                                 NOT NULL VARCHAR2(500)
 BOARD_FILESIZE                                                 NOT NULL VARCHAR2(500)
 BOARD_CONT_CONT                                                         CLOB
 */
import java.util.*;

import org.springframework.web.multipart.MultipartFile;
public class BoardcontVO {
	private int board_cont_no;
	private int board_tno;
	private String board_filename;
	private String board_filesize;
	private String board_cont_cont;
	private List<String> filenameList=new ArrayList<String>();
	private List<Integer> filesizeList=new ArrayList<Integer>();
	private List<MultipartFile> files;
	private List<String> tv_cont;
	
	public List<String> getTv_cont() {
		return tv_cont;
	}
	public void setTv_cont(List<String> tv_cont) {
		this.tv_cont = tv_cont;
	}
	public List<MultipartFile> getFiles() {
		return files;
	}
	public void setFiles(List<MultipartFile> files) {
		this.files = files;
	}
	public int getBoard_cont_no() {
		return board_cont_no;
	}
	public void setBoard_cont_no(int board_cont_no) {
		this.board_cont_no = board_cont_no;
	}
	public int getBoard_tno() {
		return board_tno;
	}
	public void setBoard_tno(int board_tno) {
		this.board_tno = board_tno;
	}
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
	public String getBoard_cont_cont() {
		return board_cont_cont;
	}
	public void setBoard_cont_cont(String board_cont_cont) {
		this.board_cont_cont = board_cont_cont;
	}
	public List<String> getFilenameList() {
		return filenameList;
	}
	public void setFilenameList(List<String> filenameList) {
		this.filenameList = filenameList;
	}
	public List<Integer> getFilesizeList() {
		return filesizeList;
	}
	public void setFilesizeList(List<Integer> filesizeList) {
		this.filesizeList = filesizeList;
	}
	
}
