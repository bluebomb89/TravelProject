
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
      System.out.println("번호 : "+vo.getMember_no());
      System.out.println("id : "+vo.getMember_id());
      System.out.println("pw : "+vo.getMember_pw());
      System.out.println("한글이름 : "+vo.getName_kor());
      System.out.println("영어이름  : "+vo.getName_eng());
      System.out.println("생년월일 : "+vo.getBirth_year()+" "+vo.getBirth_month()+" "+vo.getBirth_day());
      System.out.println("성별 : "+vo.getSex());
      System.out.println("이메일 : "+vo.getEmail());
      System.out.println("선호국가 : "+vo.getNation_first());
      System.out.println("주소 : "+vo.getAddr());
      System.out.println("전화번호 : "+vo.getPhone());
      mapper.memberInsert(vo);
   }
   
}