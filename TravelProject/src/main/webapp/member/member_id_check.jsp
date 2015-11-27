<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${id==null }">
아이디를 사용하셔도 좋습니다
</c:if>
<c:if test="${id!=null }">
아이디를 사용하시면 안되요
</c:if>
