<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="css/board/travel_isnert.css">
<script type="text/javascript">
$(function(){
	var fileIndex=3;
	$('#tvl_btn').click(function(){
		$('#otv_conts').append(
			 '<div class="" id="otv_cont'+(fileIndex+1)+'">'
			+'<p class="cont_left img_cont" style="cursor:pointer; float: left; font-size: 30px;">Step'+(fileIndex+1)+'</p>'
			+'<input type="file" class="travel_cont_img cont_left" name="files['+(fileIndex+1)+']" id="files['+(fileIndex+1)+']">'		
            +'<div id="" class="cont_left" style="display:inline-block">'
            +'<textarea name="tv_cont'+(fileIndex+1)+'" id="tv_cont'+(fileIndex+1)+'" class="" placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요." style="height:160px; width:430px; resize:none;"></textarea>'
            +'</div>'
			+'</div>'
		);
		fileIndex=fileIndex+1;
	});
	$('#tvl_btn_delete').click(function(){
		if(fileIndex>3){
			$('#otv_cont'+(fileIndex)).remove();
			fileIndex=fileIndex-1;	
		}
		
	})
})
</script>
<script type="text/javascript">
<!-- ------------------------ 이미지 셋 자바스크립트---시작------------------- -->

 window.onload = function(){
   document.getElementById("q_main_file").onchange = function(){
      readImg('q_main_file', 'mainPhotoHolder');
   }   
   
   ////////////////////////////////////////////////////////////////
   
   
   document.getElementById("q_step_file_1").onchange = function(){
      readImg('q_step_file_1', 'stepPhotoHolder_1');
   }   
   ////////////////////////////////////////////////////////////////
   
   document.getElementById("q_work_file_1").onchange = function(){
      readImg('q_work_file_1', 'workPhotoHolder_1');
   }
   document.getElementById("q_work_file_2").onchange = function(){
      readImg('q_work_file_2', 'workPhotoHolder_2');
   }
   document.getElementById("q_work_file_3").onchange = function(){
      readImg('q_work_file_3', 'workPhotoHolder_3');
   }
   document.getElementById("q_work_file_4").onchange = function(){
      readImg('q_work_file_4', 'workPhotoHolder_4');
   }
 }
function setStepImage(step)
{  
   document.getElementById("q_step_file_"+step).onchange = function(){
   readImg('q_step_file_'+step, 'stepPhotoHolder_'+step);
   }
}

function readImg(inputId, outputId){
   var file = document.getElementById(inputId).files[0];
   
   var reader = new FileReader();
   reader.readAsDataURL(file);
   
   reader.onload = function(){
      var output = document.getElementById(outputId);
      output.src = reader.result;
   } 
   
   reader.onerror = function(e){
      alert("읽기 오류:" + e.target.error.code);
      return;
   }
}

function ImgUproad(step){
    $('#files['+step+']').click();
    alert('#files['+step+']');
    
}
</script>
</head>
<body >
<div id="travel_center" class="">
    <div class="">
	    <div class="">
	        <div class="cont_box">
      	      	<p class="travel_subject" style="margin-top: 50px">여행 제목</p>
		      	<input type="text" name="" id="" class="subject_txt" placeholder="예) 소고기 미역국 끓이기" style="width:610px;position: absolute;">	
	            <input type="file" class="travel_img_upload" style="margin-left: 800px;">
	        </div>
	    </div>
    </div><!-- 타이틀 -->
    
    <div class="cont_box">
      <p class="travel_subject">여행 순서</p><br><br>
      <div id="otv_conts">
	      <div class="" id="otv_cont1">
	            <p class="cont_left" style="cursor:pointer; float: left; font-size: 30px;">Step1</p>
	            <div id="file_div">
	            	<input type="file" class="travel_cont_img cont_left" name="files[1]" id="files[1]">
	            </div>		
	            <div id="" class="cont_left" style="display:inline-block">
	                <textarea name="tv_cont1" id="" class="" placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요." style="height:160px; width:430px; resize:none;"></textarea>
	            </div>
   	            <img id="" class="cont_img" src="yoSeksa/css/recipe_enroll/pic_none4.gif" onclick="ImgUproad(1)">
		  </div>
		  <div class="" id="otv_cont2">
	            <p class="cont_left img_cont" style="cursor:pointer; float: left; font-size: 30px;">Step2</p>
	            <input type="file" class="travel_cont_img cont_left" name="files[2]" id="files[2]">		
	            <div id="" class="cont_left" style="display:inline-block">
	                <textarea name="tv_cont2" id="" class="" placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요." style="height:160px; width:430px; resize:none;"></textarea>
	            </div>
	            <img id="" class="cont_img" src="yoSeksa/css/recipe_enroll/pic_none4.gif" onclick="ImgUproad(2)">
		  </div>
		  <div class="" id="otv_cont3">
	            <p class="cont_left img_cont" style="cursor:pointer; float: left; font-size: 30px;">Step3</p>
	            <input type="file" class="travel_cont_img cont_left" name="files[3]" id="files[3]">		
	            <div id="" class="cont_left" style="display:inline-block">
	                <textarea name="tv_cont3" id="" class="" placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요." style="height:160px; width:430px; resize:none;"></textarea>
	            </div>
	            <img id="" class="cont_img" src="yoSeksa/css/recipe_enroll/pic_none4.gif" onclick="ImgUproad(3)">
		  </div>
	  </div>
          
      <!-- 여행 내용 목록 -->

      <div style="margin-left: auto;margin-right: auto;">
      	<button type="button" id="tvl_btn" class="">
      		<span class=""></span>순서추가
      	</button>
      	<button type="button" id="tvl_btn_delete" class="">
      		<span class=""></span>순서삭제
      	</button>
      </div>
    </div><!--/cont_box-->
    
    <div id="trv_subcan">
    	<button type="button" id="" class="">저장</button>
	    <button type="button" id="" class="">취소</button>
    </div> 
  </div><!--/regi_center-->
</body>
</html>