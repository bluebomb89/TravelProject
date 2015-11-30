<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${id==null }">
<li style="color: blue;">아이디를 사용하셔도 좋습니다</li>
</c:if>
<c:if test="${id!=null }">
<li style="color: red;">아이디를 사용하시면 안되요</li>
</c:if>
