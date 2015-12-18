<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style>
	       /* 미리보기 스타일 셋팅 */
            #preview{
                z-index: 9999;
                position:absolute;
                border:0px solid #ccc;
                background:#333;
                padding:1px;
                display:none;
                color:#fff;
            }
</style>
</head>
<body class="cbp-spmenu-push">
<!--script------------------------------------------------------------------------------------------------------->
   <div class="container" style="margin-top: 60px; padding-top: 40px; width: 1250px;">
      <div class="top_title"
         style="padding-bottom: 11px; padding-top: 10px; border-top-width: 1px; width: 1200px; ">
         <h3 style="margin-bottom: 0px; margin-top: 0px; width: 200px; margin-left:520px; font-size:25pt;">추천 도서</h3>
            	 	<hr style="width:1000px; margin-top:20px; margin-bottom:-20px; border:1pt solid">
         <div class="top_title_r" style="padding-top: 0px;">
            
            <div class="btn-group" role="group">
            </div>
         </div>
      </div>
   </div>
<!----------------------------------------------------------------------------------------------------------------------->
<div class="col-md-12" >
         <div style="padding-right: 5px; padding-left: 5px; margin-bottom: 20px;">
<c:forEach var="kvo" items="${blist}" varStatus="status">  
            <div class="thumbnail col-sm-3 col-md-3.5" style="margin-bottom: 5px; border: 0px solid #ddd" onmouseout="change2(this)" onmouseover="change1(this)"> 
               <a data-toggle="modal" data-target="#my[${status.index}]"><img src="${kvo.img}" alt="" style="height: 230px; width: 270px;" class="thumbna">
               	 <%-- <a href="detail.do?no=${vo.no }"><img src="<%=request.getContextPath()%>/shop/${vo.goods_image}" width=120 height=120>${vo.goods_name }(재고:${vo.goods_account }) --%>
               </a>
               <div class="caption">
                  <h3>${kvo.cont}</h3>
               <!-- 	 	<hr style="width:200px; margin-top:20px; margin-bottom:-20px; border:1pt solid"> -->
               </div>
            </div>
			<%-- <div class="modal fade bs-example-modal-lg bs-example-modal-lg" id="my${vo.board_tno }" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
			  <div class="modal-dialog modal-lg ">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
			        <h3 class="modal-title" id="myLargeModalLabel" style="text-align:center;">${vo.board_sub}<a class="anchorjs-link" href="#myLargeModalLabel"><span class="anchorjs-icon"></span></a></h3>
			      </div>
			      <div class="modal-body">
			        <div class="container-fluid">
			        <c:forEach var="cvo" items="${clist}">
			        	<c:if test="${vo.board_tno==cvo.board_tno}">
			            <div class="row">
			              <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 bigPhoto">
			              	<img src="<%=request.getContextPath()%>/board/image/contimage/${cvo.board_filename}" style="width:100%;height:inherit;">
			              </div>
			              <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" style="">${cvo.board_cont_cont }</div>
			            </div>
			            </c:if>
			        </c:forEach>
			        </div>
			      </div>
			    </div>
			  </div>
			</div> --%>
</c:forEach>
         </div>
        </div>
<!--script------------------------------------------------------------------------------------------------------->
   <div class="container" style="margin-top: 60px; padding-top: 40px; width: 1250px;">
      <div class="top_title"
         style="padding-bottom: 11px; padding-top: 10px; border-top-width: 1px; width: 1200px; ">
         <h3 style="margin-bottom: 0px; margin-top: 0px; width: 200px; margin-left:505px; font-size:25pt">베스트 셀러</h3>
         <hr style="width:1000px; margin-top:20px; margin-bottom:-20px; border:1pt solid">
         
         <div class="top_title_r" style="padding-top: 0px;">
            
            <div class="btn-group" role="group">
            </div>
         </div>
      </div>
   </div>
<!----------------------------------------------------------------------------------------------------------------------->

<!-- 검색 창 -------------------------------------------------------------------------------------------- ------------------>
	<div class="col-md-12" style="padding-top: 15px;">
	   <!-- <div class="row">
	      <div class="col-lg-4">
	         <div class="input-group">
	            <input type="text" class="form-control" placeholder="Search for..." style="height: 30px;"> <span class="input-group-btn">
	               <button class="btn btn-default" type="button">Go!</button>
	            </span>
	         </div>
	         /input-group
	      </div> -->
	   <!-- /.col-lg-6 -->
	</div>
<!---------------------------------------------------------------------------------------------------- ------------------>

        <div class="col-md-12" >
         <div style="padding-right: 5px; padding-left: 5px; margin-bottom: 20px;">
<c:forEach var="kvo" items="${list}" varStatus="status">  
            <div class="thumbnail col-sm-3 col-md-3.5" style="margin-bottom: 5px; onmouseout="change2(this)" onmouseover="change1(this)"> 
               <a data-toggle="modal" data-target="#my[${status.index}]"><img src="${kvo.img}" alt="" style="height: 230px; width: 270px;" class="thumbna">
               	 <%-- <a href="detail.do?no=${vo.no }"><img src="<%=request.getContextPath()%>/shop/${vo.goods_image}" width=120 height=120>${vo.goods_name }(재고:${vo.goods_account }) --%>
               </a>
               <div class="caption">
                  <h3>${kvo.cont}</h3>
               </div>
            </div>
			<%-- <div class="modal fade bs-example-modal-lg bs-example-modal-lg" id="my${vo.board_tno }" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
			  <div class="modal-dialog modal-lg ">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
			        <h3 class="modal-title" id="myLargeModalLabel" style="text-align:center;">${vo.board_sub}<a class="anchorjs-link" href="#myLargeModalLabel"><span class="anchorjs-icon"></span></a></h3>
			      </div>
			      <div class="modal-body">
			        <div class="container-fluid">
			        <c:forEach var="cvo" items="${clist}">
			        	<c:if test="${vo.board_tno==cvo.board_tno}">
			            <div class="row">
			              <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 bigPhoto">
			              	<img src="<%=request.getContextPath()%>/board/image/contimage/${cvo.board_filename}" style="width:100%;height:inherit;">
			              </div>
			              <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" style="">${cvo.board_cont_cont }</div>
			            </div>
			            </c:if>
			        </c:forEach>
			        </div>
			      </div>
			    </div>
			  </div>
			</div> --%>
</c:forEach>
         </div>
        </div>
        
<!--  -->
<!-- Large modal -->


<!--  -->

<!-- --------------------------------------------------------------- -->    
      <div class="travel_btn_group" style="margin: 0 auto;" align="center">
			<div class="travel_btn" role="group" aria-label="First group">
				<a href="travel.tvl?page=${curpage>1?curpage-1:curpage }">
				<button type="button" class="btn btn-default" onclick="btnDown()">＜</button>
				</a>
				<c:forEach var="i" begin="1" end="${totalpage }">
				<c:choose>
             	<c:when test="${curpage<=totalpage }">
				<a href="travel.tvl?page=${i }"><button type="button" class="btn btn-default" id="btn1">${i }</button></a>
				</c:when>
				</c:choose>
				</c:forEach>
				<a href="travel.tvl?page=${curpage<totalpage?curpage+1:curpage }">
				<button type="button" class="btn btn-default" onclick="btnUp()">＞</button>
				</a>
				
			</div>
		</div>
<!-- --------------------------------------------------------------- -->
</body>
</html>