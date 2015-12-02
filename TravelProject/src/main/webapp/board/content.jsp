<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
                   <div class="col-lg-12">
                        <h2>내용보기</h2>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                             <tr>
                               <td width=20%>번호</td>
                               <td width=30%>${vo.board_no }</td>
                               <td width=20%>작성일</td>
                               <td width=30%>${vo.board_dbday }</td>
                             </tr>
                             <tr>
                               <td width=20%>이름</td>
                               <td width=30%>${vo.board_name }</td>
                               <td width=20%>조회수</td>
                               <td width=30%>${vo.board_hit }</td>
                             </tr>
                             <tr>
                               <td width=20%>제목</td>
                               <td colspan="3">${vo.board_subject }</td>
                      
                             </tr>
                             
                            </table>
                            <table class="table table-bordered table-hover">
                              <tr>
                                <td align=right>
                                  <a href="reply.do?no=${vo.board_no }&page=${page}">
                                  <img src="<%=request.getContextPath()%>/board/reply.gif"></a>
                                  <img src="<%=request.getContextPath()%>/board/modify.gif">
                                  <a href="delete.do?no=${vo.board_no }&page=${page}">
                                  <img src="<%=request.getContextPath()%>/board/delete.gif">
                                  <a href="list.do?page=${page }">
                                  <img src="<%=request.getContextPath()%>/board/list.gif"></a>
                                </td>
                              </tr>
                            </table>
                        </div>
                    </div>
</body>
</html>