<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	${requestScope['javax.servlet.error.status_code']}
javax.servlet.error.status_code:
        ���� ���� �ڵ带 ���� �ִ� ����
javax.servlet.error.exception_type 
        ������ ����� �� ���� ���� ������ �ִ� Ŭ���� �ν��Ͻ�
javax.servlet.error.message
        ���� �޽����� �����ִ� ��Ʈ���̸�, ���� ����Ʈ���ͷ� ������ ����.
javax.servlet.error.exception
        ���� ���ܰ� �������� ���� �� �ִ� ��ü�̴�.
javax.servlet.error.request_uri
        ������ ����Ų ���ҽ��� URI�� �����ִ� ��Ʈ���̴�. 
javax.servlet.error.servlet_name
 
Throwable e = (Throwable)request.getAttribute("javax.servlet.error.exception");
Throwable e1 = (Throwable)request.getAttribute("javax.servlet.jsp.jspException");
 
���� ������������ �� �� �ִ� ��ü : exception
<%@ page isErrorPage="true" %>
${pageContext.exception}

���� �߻� �� ���� �������� �̵����� �ʰ� 
��ü ���������� �ذ��ϱ� : <c:catch>
<c:catch>
   <% int x = 10/0; %>
   // ������ �߻��ϸ� ������ �������� �ʰ� </c:catch>�� ���� �̵��Ѵ�.
</c:catch>

exception�� �Ӽ����� ����� ���� �޽��� �б�
<c:catch var="myException">
   ...
</c:catch>
${myException.message}
// Ÿ���� Throwable�̴� message������Ƽ�� ���� 
</body>
</html>