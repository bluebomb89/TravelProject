package com.member.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.SelectKey;

public interface MemberMapper {
	@SelectKey(keyProperty="member_no",resultType=int.class,before=true,
				statement="SELECT NVL(MAX(member_no)+1,1) as member_no FROM member_travel")
	@Insert("INSERT INTO member_travel VALUES("
			+ "#{member_no},#{member_id},#{member_pw},#{name_kor},#{name_eng},"
			+ "#{birth_year},#{birth_month},#{birth_day},#{sex},#{email},"
			+ "#{nation_first},#{nation_second},#{nation_third},#{addr},"
			+ "#{phone_cell},#{phone_home}")
	public void memberInsert(MemberVO vo);
}
