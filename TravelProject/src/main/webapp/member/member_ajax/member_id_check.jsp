<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${id==null }">
<li style="color: blue;">���̵� ����ϼŵ� �����ϴ�</li>
</c:if>
<c:if test="${id!=null }">
<li style="color: red;">���̵� ����Ͻø� �ȵǿ�</li>
</c:if>
