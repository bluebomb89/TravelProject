package com.member.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.SelectKey;

public interface MemberMapper {
	@SelectKey(keyProperty="member_no",resultType=int.class,before=true,
				statement="SELECT NVL(MAX(member_no)+1,1) as member_no FROM member_travel")
	@Insert("INSERT INTO member_travel VALUES("
			+ "#{member_no, jdbcType=INTEGER},"
			+ "#{member_id, jdbcType=VARCHAR},"
			+ "#{member_pw, jdbcType=VARCHAR},"
			+ "#{name_kor, jdbcType=VARCHAR},"
			+ "#{name_eng, jdbcType=VARCHAR},"
			+ "#{birth_year, jdbcType=VARCHAR},"
			+ "#{birth_month, jdbcType=VARCHAR},"
			+ "#{birth_day, jdbcType=VARCHAR},"
			+ "#{sex, jdbcType=VARCHAR},"
			+ "#{email, jdbcType=VARCHAR},"
			+ "#{nation_first, jdbcType=VARCHAR},"
			+ "#{addr, jdbcType=VARCHAR},"
			+ "#{phone, jdbcType=VARCHAR})")
	public void memberInsert(MemberVO vo);
}
