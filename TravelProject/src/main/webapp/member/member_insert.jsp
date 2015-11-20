<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="ko-kr" class="js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths placeholder formvalidation wf-opensans-n4-active wf-active desktop"><head>
<title>회원 가입</title>
	<!-- <link rel="stylesheet" href="../css/vendor.css" type="text/css"> -->
	<link rel="stylesheet" href="../css/member/head.css" type="text/css">
	<link rel="stylesheet" href="../css/member/registration.css" type="text/css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,400,300,700&amp;subset=latin,cyrillic-ext,greek-ext,greek,latin-ext,cyrillic" media="all">
	<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
	<script type="text/javascript">
	$(function(){
		$('#btnSubmit').click(function(){
			
			var name_kor=$('#name_kor').val();
			if(name_kor=="")
			{
				alert("이름(한글)을 입력해주세요.");
				$('#name_kor').focus();
				return;
			}
			
			var name_eng=$('#name_eng').val();
			if(name_eng=="")
			{
				alert("이름(영문)을 입력해주세요.")
				$('#name_eng').focus();
				return;
			}
			
			var birth_year=$('#birth_year').val();
			
			var birth_month=$('#birth_month').val();
			
			var birth_day=$('#birth_day').val();
			
			var sex=$('#sex').val();
			
			var email=$('#email').val();
			if(email=="")
			{
				alert("Email을 입력해주세요.")
				$('#email').focus();
				return;
			}
			
			var phone_cell=$('#phone_cell').val();
			if(phone_cell=="")
			{
				alert("전화번호를 입력해주세요.")
				$('#phone_cell').focus();
				return;
			}
			
			var nation_first=$('#nation_first').val();
			
			var member_id=$('#member_id').val();
			if(member_id=="")
			{
				alert("ID를 입력해주세요.")
				$('#member_id').focus();
				return;
			}
			
			var member_pw=$('#member_pw').val();
			if(member_pw=="")
			{
				alert("비밀번호를 입력해주세요.")
				$('#member_pw').focus();
				return;
			}
			
			$('#joinForm').submit();
		});
		$('#btnCancel').click(function(){
			history.back();
		});
	});
	var i = 0;
    function add_item() {
       if(i < 2){ 
          // pre_set 에 있는 내용을 읽어와서 처리..
          var div = document.createElement('div');
          div.innerHTML = document.getElementById('pre_set').innerHTML;
          document.getElementById('field').appendChild(div);
          i++;
       }
    }

    function remove_item(obj) {
       // obj.parentNode 를 이용하여 삭제
       document.getElementById('field').removeChild(obj.parentNode);
       i--;
    }
	</script>
	</head>
<body>
	
	<div class="registration-page">
	<div class="registrationWrapper page">
		<h2>회원 가입</h2><p>별도의 언급 없을시 영어로 입력하시길 바랍니다.
		<br>영문이름은 여권상의 이름과 동일하게 입력하여 주시기 바랍니다.</p>
		
		<form id="joinForm" method=post action="member_insert_ok.do" class="custom-form" novalidate="novalidate">    
		<div class="f-r">        
		<div class="f-c-6">                              
           
		<!-- 한글이름 -->
		
		<div class="inner-column-6">                
			<label for="name_kor" class="title-label required">한글 이름</label>                
			<span class="offscreen">필수입력항목 입니다.</span>                
			<input type="text" name="name_kor" id="name_kor" class="krFirstName required" value="">            
		</div>
		
		<!-- 한글 이름 끝 -->
		
		<!-- 영어 이름 -->
		            
			<label for="EngName" class="title-label required" style="padding-top: 20px">영문 이름</label>            
			<input type="text" name="name_eng" id="name_eng" value="" class="firstName required" style=" width: 526px;">
		
		<!-- 영어 이름 끝 -->
		
		<!-- 생년월일 -->		            
	
			<div class="vSpace">                
				<label class="title-label" for="dateOfBirthYear">생년월일</label>                
				                
				<div class="inner-column-4">                    
				<input type="text" name="birth_year" id="birth_year" value="" class="dob dob-year valid" placeholder="YYYY" maxlength="4" title="생년월일-년">                
			</div>                

			<div class="inner-column-2">                    
				<input type="text" name="birth_month" id="birth_month" value="" class="dob dob-month valid" placeholder="MM" maxlength="2" title="생년월일-월">                
			</div>                
				<div class="inner-column-2">                    
					<input type="text" name="birth_day" id="birth_day" value="" class="dob dob-day" placeholder="DD" maxlength="2" title="생년월일-일">                
				</div>            
			</div>            

		<!-- 생년월일 끝 -->

		<!-- 성별 -->
			
			<div class="vSpace" style="margin-top: 60px">                
				<label class="title-label" for="genderMale">성별</label>                
					<input type="radio" name="sex" id="sex_man" value="남" class="required valid">                
				<label for="genderMale">남</label>                
					<input type="radio" name="sex" id="sex_woman" value="여" class="valid">                
				<label id="female-label" for="genderFemale">여</label>           
			</div>
			
		<!-- 성별 끝 -->
				            
		<!-- 이메일 에어리어 건들면 틀 깨짐 -->	
			
			<label class="title-label" for="email">이메일 주소</label>            
			<input type="text" id="email" name="email" class=""  aria-describedby="email-validate-label-974352">
			
		<!-- 이메일 끝 -->	
			        
			
		<!-- 휴대폰 -->	
		
			<div class="vSpace">               
				<label class="title-label" for="primaryPhone">휴대폰 번호</label>                
				<p class="sub-label">전화번호를 입력하여 주시기 바랍니다. (휴대전화 우선)</p>
				
				<!-- 애 건들면 폼 깨짐 -->
				<div class="chosen-container chosen-container-single" style="width: 439px;" id="representCountryNumberCode_chosen">
				<!-- 애 건들면 폼 깨짐 -->

				<a class="chosen-single chosen-default" tabindex="-1">
				
				<!-- 애 건들면 폼 깨짐 -->
				<div class="chosen-search">
				<!-- 애 건들면 폼 깨짐 -->
				<input type="text" title="목록" name="phone_cell" id="phone_cell" autocomplete="off" role="combobox" aria-owns="chosen-1541354062501341" aria-describedby="chosen-desc-label-1541354062501341" aria-activedescendant="chosen-0-1541354062501341" aria-readonly="false">
				<!-- 애 건들면 폼 깨짐 -->
				</div>				
				</div>                
		
		<!-- 휴대폰 끝 -->		
				
				 <!-- 관심있는국가 -->
            
            <div>                    
      </div>            
      </div>                    
      </div>        
            <div class="f-c-6">            
               <div class="vSpace" for="country-selector">                
               <label class="title-label">관심있는 국가</label>                
                                 
               <!--  이밑에 디아이브이 건드리면 밑에 아이디 비밀번호깨짐 --><!--  이밑에 디아이브이 건드리면 밑에 아이디 비밀번호깨짐 -->
               <div class="chosen-container chosen-container-single" style="width: 429px;" id="country_selector_chosen">
               <!--  애 디아이브이 건드리면 밑에 아이디 비밀번호깨짐 -->
   
               
               <input type="text" name="lastName" id="lastName"  class="" aria-invalid="true" aria-describedby="lastName-validate-label-517636" > <img src="../images/down.gif" onclick="add_item()"  style="width: 25px;margin-top: 8px;margin-bottom: 8px;margin-left: 85px;">
               
                  <!-- 추가 항목생성 -->   
                     
                     <div id="pre_set" style="display:none">
             <input type="text" name="lastName" id="lastName"  class="" aria-invalid="true" aria-describedby="lastName-validate-label-517636"><br><img src="../images/delete.gif" onclick="remove_item(this)" style="width: 25px;margin-top: 8px;margin-bottom: 8px;margin-left: 85px;">
             <!-- <input type="button" value="삭제" onclick="remove_item(this)"> -->
            </div>
 
      <div id="field"></div>
 
      
      
                     
                     
               <div>
               <b></b>
               </div></a>
               </div>
               </div>
            </div>    
         </div>      
               <!-- 관심있는국가 끝 -->            
                    
				<div class="sectionHeader">로그인 정보</div>    
					<div class="f-r">        
						<div class="f-c-6">            
							
							<!-- 아이디 입력창 -->
							
							<div>
								<label class="title-label" for="userId">회원 아이디 
									<span id="uniqueUserID"></span>
								</label>                
								<input type="text" name="member_id" id="member_id" class="" maxlength="12" aria-invalid="true" aria-describedby="userId-validate-label-700245">
								               
							</div>        
						</div>        

							<!-- 아이디 입력 끝 -->

							<!-- 비밀번호 입력창 -->
						
						<div class="f-c-6">            
							<div>                
								<label class="title-label" for="password1">비밀번호</label>                
								<input type="password" name="member_pw" id="member_pw" maxlength="20" class="error" aria-invalid="true" aria-describedby="password1-validate-label-185732">
								<p id="password1-validate-label-185732" data-errored-element="password1" class="error">비밀번호(필수 정보입니다.)</p>               
							</div>
								<div>
									<label class="title-label" for="password">비밀번호 확인</label>                
									<input type="password" name="member_pw_ok" id="member_pw_ok" maxlength="20" class="error" aria-invalid="true" aria-describedby="password-validate-label-750164">											    																	<p id="password-validate-label-750164" data-errored-element="password" class="error">비밀번호 확인(필수 정보입니다.)</p>            										    														</div>		
						</div>
					</div>
						
						<!-- 비밀번호 입력 끝 -->
						
						             <!-- 확인 취소창 -->
                  
                  <div class="f-r">        
                            <div class="f-c-2">            
                               <div id="error-wrapper"></div>            
                                  <a href="#" id="registrationSubmit" class="medium button submit">확인</a>            
                                  <a href="#" id="registrationSubmit" class="medium button submit" style="bottom: 66px;left: 100px;">취소</a>        
                               </div>    
                         </div>
                            
                         <!-- 확인 취소창 끝-->
                   			
                   		</form>
                   	</div>
              </div>
         
	</body>
</html>