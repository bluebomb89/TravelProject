<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../review/table.css">
</head>
<body>
               <div id="content_top">
                <form method="post" action="find.do">
                             검색:<input type=text name="movie_title" size=20>
                   <input type=submit value=검색>
                </form>
               </div>
				
				<div id="content_bg_repeat">
					
					
				<div id="content">
                    <div class="contact_content_left">
                     <table id="table_content">
                       <c:forEach var="msg" items="${list }">
                         <tr>
                           <td>${msg }</td>
                         </tr>
                       </c:forEach>
                     </table>  
                     <table border=0 width=800>
                       <tr>
                         <td align=right>
                         <a href="review.do?page=${curpage>1?curpage-1:curpage }">이전</a>&nbsp;
                         <a href="review.do?page=${curpage<totalpage?curpage+1:curpage }">다음</a>&nbsp;&nbsp;
                         ${curpage } page / ${totalpage } pages
                         </td>
                       </tr>
                     </table>
                    </div>

                </div>
                    <div style="clear: both"></div>
               </div>
</body>
</html>