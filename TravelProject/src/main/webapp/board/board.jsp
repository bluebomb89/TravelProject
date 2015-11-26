<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<!--/script-->
<!-- 마우스 오버 이미지 확대 -->

<script type="text/javascript">
function change1(obj){
    obj.style.border = '1px solid rgba(255, 106, 0, 0.85)';
}
function change2(obj){
    obj.style.border = '1px solid #ddd';
}
            $(document).ready(function() {
                  
                var xOffset = 10;
                var yOffset = 30;
 
                $(document).on("mouseover",".thumbna",function(e){ //마우스 오버시
                     
                    $("body").append("<p id='preview'><img src='"+ $(this).attr("src") +"' width='400px' /></p>"); //보여줄 이미지를 선언                       
                    $("#preview")
                        .css("top",(e.pageY - xOffset) + "px")
                        .css("left",(e.pageX + yOffset) + "px")
                        .fadeIn("fast"); //미리보기 화면 설정 셋팅
                });
                 
                $(document).on("mousemove",".thumbna",function(e){ //마우스 이동시
                    $("#preview")
                        .css("top",(e.pageY - xOffset) + "px")
                        .css("left",(e.pageX + yOffset) + "px");
                });
                 
                $(document).on("mouseout",".thumbna",function(){ //마우스 아웃시
                    $("#preview").remove();
                });
                  
            });
        </script>

<!-- 이미지 확대 끝 -->
<script>
   var curListType = '';
   var curAllSel = false;

   $(document).ready(function() {
      doChangeListType('thumb')
   });
   function doChangeListType(types) {
      if (curListType == types)
         return;

      $("#listTypeSel_" + curListType).removeClass('active');
      $("#listTypeSel_" + types).addClass('active');
      $("#list_" + curListType).hide();
      $("#list_" + types).show();
      $("[id^=seltravel_" + curListType + "]").each(function() {
         var target = $(this).attr('id').replace(curListType, types);
         $("#" + target).prop("checked", $(this).prop('checked'));
      });
      curListType = types;
   }

   function doScrap() {
      if (checkSelectedtravel())
         selectScrapFolderOpen();
   }

   function btnUp(){
		/* > 버튼 클릭시 자동번호 증가 */
		for(var i=1; i<6; i++){
			var btn=$('#btn'+i).text();
			var b=parseInt(btn);
			b=b+1
			$('#btn'+i).text(b);
		}
	}
	function btnDown(){
		/* > 버튼 클릭시 자동번호 감소 */
		if($('#btn1').text()!=1){
			for(var i=1; i<6; i++){
				var btn=$('#btn'+i).text();
				var b=parseInt(btn);
				b=b-1
				$('#btn'+i).text(b);
			}	
		}
		
	}

</script>

<!--script-->

<script src="js/board/saved_resource"></script>
<script src="js/board/jquery.min.js"></script>
<script src="js/board/bootstrap.min.js"></script>
<script src="js/board/modernizr.custom.js"></script>
<script src="js/board/board/jquery-1.11.1.min.js"></script>
<script src="js/board/responsiveslides.min.js"></script>
<script src="js/board/jquery.cycle.all.js"></script>
<script src="js/board/owl.carousel.js"></script>
<script src="js/board/owl.carousel.min.js"></script>
<!--/animated-css-->
<script src="js/move-top.js"></script>
<script src="js/easing.js"></script>
<script src="js/bootstrap.js"></script> 
<!--/script-->
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


   <!---->
   <!--  style.css안에 이미지 추가해서 div class이름에 넣어라. 이미지는 전체적으로 style.css안에. 
     
.bannersearch{
   background:url(../images/bannersearch.jpg) no-repeat 0px 0px;
   background-size:100% 100%;
   min-height:895px;
}

css안에 이미지 이런식으로 추가하고 div안에 클래스명 넣어주면 된다.
-->

   <!-- 여기에 include 작성-->

   <!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->



   
<!-- jQuery (necessary JavaScript plugins) -->
<!-- Custom Theme files -->
<!-- <link href="yodosa/css/style.css" type="text/css" rel="stylesheet" media="all"> -->

<!-- Custom Theme files -->
<!-- //footer -->

<!--script------------------------------------------------------------------------------------------------------->
   <div class="container" style="margin-top: 60px; padding-top: 40px; width: 1250px;">
      <div class="top_title"
         style="padding-bottom: 11px; padding-top: 10px; border-top-width: 1px; width: 1200px; ">
         <h3 style="margin-bottom: 0px; margin-top: 0px; width: 200px; margin-left:540px;">MyTravel</h3>
         <div class="top_title_r" style="padding-top: 0px;">
            
            <div class="btn-group" role="group">
               

               <a href="travel_enroll.do"><button type="button"
                     class="btn btn-default" onclick="" style="margin-right: 6px;">
                     <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                  </button></a>
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

   <!-- /.row -->
   <!-- // 이미지게시판 db값 넘기기
   <div class="col-md-12" >
         <c:forEach var='dto' items="${list}">
         <div class="col-sm-3 col-md-3.5" style="padding-right: 5px; padding-left: 5px; margin-bottom: 20px;">
            <div class="thumbnail" style="margin-bottom: 5px; border:2px solid #ddd" onmouseout="change2(this)" onmouseover="change1(this)">
               <a href="travel_content.do?rno=${dto.travel_no }"><img src="yodosa/contentImg/${dto.travel_img }" alt="" style="height: 230px; width: 270px;" class="thumbna"></a>
               <div class="caption">
                  <h3>${dto.travel_sub }</h3>
                  <div align="center" style="margin-top: 10px;">
                     <a href="diary.do" class="btn btn-default" role="button">
                     <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span></a>
                  </div>
               </div>
            </div>
            
         </div>
         </c:forEach>
         
      </div>
    -->
      <div class="col-md-12" >
         <div class="col-sm-3 col-md-3.5" style="padding-right: 5px; padding-left: 5px; margin-bottom: 20px;">
            <div class="thumbnail" style="margin-bottom: 5px; border: 1px solid #ddd" onmouseout="change2(this)" onmouseover="change1(this)">
               <a href="#"><img src="yodosa/contentImg/11.jpg" alt="" style="height: 230px; width: 270px;" class="thumbna"></a>
               <div class="caption">
                  <h3>1</h3>
               </div>
            </div>
            
         </div>
         <div class="col-sm-3 col-md-3.5" style="padding-right: 5px; padding-left: 5px; margin-bottom: 20px;">
            <div class="thumbnail" style="margin-bottom: 5px; border: 1px solid #ddd" onmouseout="change2(this)" onmouseover="change1(this)">
               <a href="#"><img src="yodosa/contentImg/11.jpg" alt="" style="height: 230px; width: 270px;" class="thumbna"></a>
               <div class="caption">
                  <h3>2</h3>
               </div>
            </div>
            
         </div>
         <div class="col-sm-3 col-md-3.5" style="padding-right: 5px; padding-left: 5px; margin-bottom: 20px;">
            <div class="thumbnail" style="margin-bottom: 5px; border: 1px solid #ddd" onmouseout="change2(this)" onmouseover="change1(this)">
               <a href="#"><img src="yodosa/contentImg/11.jpg" alt="" style="height: 230px; width: 270px;" class="thumbna"></a>
               <div class="caption">
                  <h3>3</h3>
               </div>
            </div>
            
         </div>
         <div class="col-sm-3 col-md-3.5" style="padding-right: 5px; padding-left: 5px; margin-bottom: 20px;">
            <div class="thumbnail" style="margin-bottom: 5px; border: 1px solid #ddd" onmouseout="change2(this)" onmouseover="change1(this)">
               <a href="#"><img src="yodosa/contentImg/11.jpg" alt="" style="height: 230px; width: 270px;" class="thumbna"></a>
               <div class="caption">
                  <h3>4</h3>
               </div>
            </div>
            
         </div>
         <div class="col-sm-3 col-md-3.5" style="padding-right: 5px; padding-left: 5px; margin-bottom: 20px;">
            <div class="thumbnail" style="margin-bottom: 5px; border: 1px solid #ddd" onmouseout="change2(this)" onmouseover="change1(this)">
               <a href="#"><img src="yodosa/contentImg/11.jpg" alt="" style="height: 230px; width: 270px;" class="thumbna"></a>
               <div class="caption">
                  <h3>5</h3>
               </div>
            </div>
            
         </div>
         <div class="col-sm-3 col-md-3.5" style="padding-right: 5px; padding-left: 5px; margin-bottom: 20px;">
            <div class="thumbnail" style="margin-bottom: 5px; border: 1px solid #ddd" onmouseout="change2(this)" onmouseover="change1(this)">
               <a href="#"><img src="yodosa/contentImg/11.jpg" alt="" style="height: 230px; width: 270px;" class="thumbna"></a>
               <div class="caption">
                  <h3>6</h3>
               </div>
            </div>
            
         </div>
         <div class="col-sm-3 col-md-3.5" style="padding-right: 5px; padding-left: 5px; margin-bottom: 20px;">
            <div class="thumbnail" style="margin-bottom: 5px; border: 1px solid #ddd" onmouseout="change2(this)" onmouseover="change1(this)">
               <a href="#"><img src="yodosa/contentImg/11.jpg" alt="" style="height: 230px; width: 270px;" class="thumbna"></a>
               <div class="caption">
                  <h3>7</h3>
               </div>
            </div>
            
         </div>
         <div class="col-sm-3 col-md-3.5" style="padding-right: 5px; padding-left: 5px; margin-bottom: 20px;">
            <div class="thumbnail" style="margin-bottom: 5px; border: 1px solid #ddd" onmouseout="change2(this)" onmouseover="change1(this)">
               <a href="#"><img src="yodosa/contentImg/11.jpg" alt="" style="height: 230px; width: 270px;" class="thumbna"></a>
               <div class="caption">
                  <h3>8</h3>
               </div>
            </div>
            
         </div>
         <div class="col-sm-3 col-md-3.5" style="padding-right: 5px; padding-left: 5px; margin-bottom: 20px;">
            <div class="thumbnail" style="margin-bottom: 5px; border: 1px solid #ddd" onmouseout="change2(this)" onmouseover="change1(this)">
               <a href="#"><img src="yodosa/contentImg/11.jpg" alt="" style="height: 230px; width: 270px;" class="thumbna"></a>
               <div class="caption">
                  <h3>9</h3>
               </div>
            </div>
            
         </div>
         <div class="col-sm-3 col-md-3.5" style="padding-right: 5px; padding-left: 5px; margin-bottom: 20px;">
            <div class="thumbnail" style="margin-bottom: 5px; border: 1px solid #ddd" onmouseout="change2(this)" onmouseover="change1(this)">
               <a href="#"><img src="yodosa/contentImg/11.jpg" alt="" style="height: 230px; width: 270px;" class="thumbna"></a>
               <div class="caption">
                  <h3>10</h3>
               </div>
            </div>
            
         </div>
         <div class="col-sm-3 col-md-3.5" style="padding-right: 5px; padding-left: 5px; margin-bottom: 20px;">
            <div class="thumbnail" style="margin-bottom: 5px; border: 1px solid #ddd" onmouseout="change2(this)" onmouseover="change1(this)">
               <a href="#"><img src="yodosa/contentImg/11.jpg" alt="" style="height: 230px; width: 270px;" class="thumbna"></a>
               <div class="caption">
                  <h3>11</h3>
               </div>
            </div>
            
         </div>
         <div class="col-sm-3 col-md-3.5" style="padding-right: 5px; padding-left: 5px; margin-bottom: 20px;">
            <div class="thumbnail" style="margin-bottom: 5px; border: 1px solid #ddd" onmouseout="change2(this)" onmouseover="change1(this)">
               <a href="#"><img src="yodosa/contentImg/11.jpg" alt="" style="height: 230px; width: 270px;" class="thumbna"></a>
               <div class="caption">
                  <h3>12</h3>
               </div>
            </div>
            
         </div>
       </div>
      
      <div class="travel_btn_group" style="margin: 0 auto;" align="center">
			<div class="travel_btn" role="group" aria-label="First group">
				<a href="travel.do?page=${curpage>1?curpage-1:curpage }">
				<button type="button" class="btn btn-default" onclick="btnDown()">＜</button>
				</a>
				<c:forEach var="i" begin="1" end="${totalpage }">
				<c:choose>
             	<c:when test="${curpage<=totalpage }">
				<a href="travel.do?page=${i }"><button type="button" class="btn btn-default" id="btn1">${i }</button></a>
				</c:when>
				</c:choose>
				</c:forEach>
				<a href="travel.do?page=${curpage<totalpage?curpage+1:curpage }">
				<button type="button" class="btn btn-default" onclick="btnUp()">＞</button>
				</a>
			</div>
		</div>
</body>
</html>