<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@	page import="com.member.dao.MemberIdOk"%>
<%@ page import = "java.util.List" %>
<%
	String id = request.getParameter("id");
	MemberIdOk dao = new MemberIdOk();
	int re = dao.checkId(id);
%>
<%=re%>


