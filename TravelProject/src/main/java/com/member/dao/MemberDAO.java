package com.member.dao;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("mdao")
public class MemberDAO {
	@Autowired
	private MemberMapper mapper;
	public void memberInsert(MemberVO vo)
	{
		System.out.println("��ȣ : "+vo.getMember_no());
		System.out.println("id : "+vo.getMember_id());
		mapper.memberInsert(vo);
	}
	
}
