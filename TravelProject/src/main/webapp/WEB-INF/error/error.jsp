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
        에러 상태 코드를 말해 주는 정수
javax.servlet.error.exception_type 
        에러가 생기게 된 예외 형을 지적해 주는 클래스 인스턴스
javax.servlet.error.message
        예외 메시지를 말해주는 스트링이며, 예외 컨스트럭터로 보내어 진다.
javax.servlet.error.exception
        실제 예외가 없어지면 버릴 수 있는 객체이다.
javax.servlet.error.request_uri
        문제를 일으킨 리소스의 URI를 말해주는 스트링이다. 
javax.servlet.error.servlet_name
 
Throwable e = (Throwable)request.getAttribute("javax.servlet.error.exception");
Throwable e1 = (Throwable)request.getAttribute("javax.servlet.jsp.jspException");
 
오류 페이지에서만 쓸 수 있는 객체 : exception
<%@ page isErrorPage="true" %>
${pageContext.exception}

오류 발생 후 오류 페이지로 이동하지 않고 
자체 페이지에서 해결하기 : <c:catch>
<c:catch>
   <% int x = 10/0; %>
   // 에러가 발생하면 다음을 실행하지 않고 </c:catch>로 곧장 이동한다.
</c:catch>

exception을 속성으로 만들어 에러 메시지 읽기
<c:catch var="myException">
   ...
</c:catch>
${myException.message}
// 타입이 Throwable이니 message프로퍼티가 있음 
</body>
</html>