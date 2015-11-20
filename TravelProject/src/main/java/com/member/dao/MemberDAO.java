
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
      System.out.println("pw : "+vo.getMember_pw());
      System.out.println("�ѱ��̸� : "+vo.getName_kor());
      System.out.println("�����̸�  : "+vo.getName_eng());
      System.out.println("������� : "+vo.getBirth_year()+" "+vo.getBirth_month()+" "+vo.getBirth_day());
      System.out.println("���� : "+vo.getSex());
      System.out.println("�̸��� : "+vo.getEmail());
      System.out.println("��ȣ���� : "+vo.getNation_first());
      System.out.println("�ּ� : "+vo.getAddr());
      System.out.println("��ȭ��ȣ : "+vo.getPhone());
      mapper.memberInsert(vo);
   }
   
}