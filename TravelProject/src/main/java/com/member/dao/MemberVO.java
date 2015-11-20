package com.member.dao;

public class MemberVO {
	private int member_no;
	private String member_id;
	private String member_pw;
	private String name_kor;
	private String name_eng;
	private int birth_year;
	private int birth_month;
	private int birth_day;
	private String sex;
	private String email;
	private String nation_first;
/*	private String nation_second;
	private String nation_third;*/
	private String addr;
	private String phone;
	
	public String getNation_first() {
		return nation_first;
	}
	public void setNation_first(String nation_first) {
		this.nation_first = nation_first;
	}
	/*public String getNation_second() {
		return nation_second;
	}
	public void setNation_second(String nation_second) {
		this.nation_second = nation_second;
	}
	public String getNation_third() {
		return nation_third;
	}
	public void setNation_third(String nation_third) {
		this.nation_third = nation_third;
	}*/
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getName_kor() {
		return name_kor;
	}
	public void setName_kor(String name_kor) {
		this.name_kor = name_kor;
	}
	public String getName_eng() {
		return name_eng;
	}
	public void setName_eng(String name_eng) {
		this.name_eng = name_eng;
	}
	public int getBirth_year() {
		return birth_year;
	}
	public void setBirth_year(int birth_year) {
		this.birth_year = birth_year;
	}
	public int getBirth_month() {
		return birth_month;
	}
	public void setBirth_month(int birth_month) {
		this.birth_month = birth_month;
	}
	public int getBirth_day() {
		return birth_day;
	}
	public void setBirth_day(int birth_day) {
		this.birth_day = birth_day;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
}
