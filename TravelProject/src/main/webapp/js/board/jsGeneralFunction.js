/******************************************************
** 사이트 기능 공통 함수.
*******************************************************/

//관심품목 담기
function fnAddFavorite(iitemSeq){
    var params = "mode=add&itemSeq=" + iitemSeq ;

    var FavWin = window.open('/mypage/wishlist_process.asp?' + params ,'FavWin','width=380,height=180,scrollbars=no,resizable=no');
	FavWin.focus();
}


//공지사항 팝업열기
function PopupNews(v){
    var popwin = window.open('/cscenter/notice/notice_pop.asp?idx=' + v,'popupnews', 'width=668,height=820,left=300,top=100,location=no,menubar=no,resizable=no,scrollbars=yes,status=no,toolbar=no');
    popwin.focus();
}

//이벤트 당첨자 공지
function PopupWinnerIdx(v){
    var popwin = window.open('/cscenter/notice/event_pop.asp?idx=' + v,'popupwinner', 'width=618,height=600,left=400,top=200,location=no,menubar=no,resizable=no,scrollbars=yes,status=no,toolbar=no');
    popwin.focus();
}
	
function jsItemView(iIS, iIK){
	if (iIK == 1){
	 	location.href = "/fashion/style.asp?idx="+iIS;	
	}else{
		location.href = "/iamaboy/boy.asp?idx="+iIS+"&iIK="+iIK;		
	}		
}	
// cscenter/order/myorderdetail.asp , myorderreturndetail.asp 2011-01-21 리뉴얼시 수정&추가
function jsItemViewRenew(iIS, iIK){
    location.href = "/2011_categories/style.asp?idx="+iIS;
    //location.href = "/apparel/style.asp?idx="+iIS;
}	

//상품 무이자 레이어
function ShowInstallment()
{
	var mx = document.body.scrollLeft + event.clientX;
	var my = document.body.scrollTop + event.clientY;
	document.all.layer_installment.style.left=mx;
	document.all.layer_installment.style.top=my;
	document.all.layer_installment.style.display="";
}

function HideInstallment(){
	document.all.layer_installment.style.display="none";
}

/******************************************************
	일반적으로 사용되는 스크립트 함수들 모음
******************************************************/
var strPettern1 = /^[a-zA-Z0-9]{6,16}$/;
var strPettern2 = /[a-zA-Z]/;
var strPettern3 = /[0-9]/;
var strPettern4 = /[^a-zA-Z0-9가-힣]/; 

//INPUT태그 BOX의 Value값 체크,CHECKBOX의 체크여부,RADIOBUTTON의 선택여부,SELECT태그 BOX의 선택여부 체크
///////////////////////////////////////////////////////////////////////////
function jsChkNull(type,obj,msg)
{
 
     switch (type) {
        // text, password, textarea, hidden
        case "text" :
        case "password" :
        case "textarea" :
        case "hidden" :
                if (jsChkBlank(obj.value)) {
					alert(msg);
					//obj.focus();
                    return false;
                }
                else {
                    return true;
                }
                break;
        // checkbox
        case "checkbox" :
                if (!obj.checked) {
					alert(msg);
                    return false;
                }
                else {
                    return true;
                }
                break;
        // radiobutton
        case "radio" :
                var objlen = obj.length;

                for (i=0; i < objlen; i++) {
                    if (obj[i].checked == true)
                        return true;
				}
                if (i == objlen) {
					alert(msg);
                    return false;
                }else{
					return true;
                }
                break;
        }

        // select list
        if (obj.type.indexOf("select") != -1) {
            if (obj.options[obj.selectedIndex].value == 0 || obj.options[obj.selectedIndex].value == ""){
				alert(msg);
                return false;
            }else{
                return true;
			}
        }

        return true;
    
}


//문자열의 공백여부 체크
///////////////////////////////////////////////////////////////////////////

function jsChkBlank(str)
{
    if (str == "" || str.split(" ").join("") == ""){
        return true;
	}
    else{
        return false;
	}
}


//팝업창 띄우기
///////////////////////////////////////////////////////////////////////////

function jsOpenWindow(popName, Url, WindowName, Feature) {
	popName = window.open(Url, WindowName, Feature);
	popName.focus();
}


//문자열의 Byte수 계산후 byte수 리턴
///////////////////////////////////////////////////////////////////////////

function jsChkLength(str){
	var len = 0;
	var i = 0;
  
	for (i=0;i<str.length; i++) 
	{
		var n = str.charCodeAt(i);
		if ((n>= 0)&&(n<256)) 
			len ++;
		else 
			len += 2;
	}
	return len;
}


// 영문 AND 숫자 혼합 여부 체크 
//////////////////////////////////////////////////////////////////////////
function jsChkAlphbetAndNumber(str) {

		if (!strPettern1.test(str) || !strPettern2.test(str) || !strPettern3.test(str)) {
			return false;
		} else {
			return true;
		}

}

// 영문 OR 숫자 혼합 여부 체크 
//////////////////////////////////////////////////////////////////////////
function jsChkAlphbetOrNumber(str){
		
		var idcount=0;
		var ls_one_char;
		for (i=0;i<str.length;i++){
			ls_one_char = str.charAt(i);

			if(ls_one_char.search(/[0-9|a-z|A-Z]/) == -1) {
				idcount++;
			}
		}
					  
		if(idcount!=0) {
			return false;
		}
		
	return true;
}


// 한글,영어,숫자 체크 
//////////////////////////////////////////////////////////////////////////
function jsCheckAlphbetOrNumberOrHangeul(strText)
{
	
		var idcount=0;
		var ls_one_char;
		for (i=0;i<strText.length;i++){
			ls_one_char = strText.charAt(i);

			if(ls_one_char.search(/[a-z|A-Z|0-9|가-힣]/) == -1) {
				idcount++;
			}
		}
					  
		if(idcount!=0) {
			return false;
		}
		
	return true;
}


// 특수문자 체크 
//////////////////////////////////////////////////////////////////////////
function jsCheckSpecialText(strText)
{
		var SpecialText = '`@=,^#$%&\|<>;"';

		var i ; 
		for ( i=0; i < strText.length; i++ )  {
			if( SpecialText.indexOf(strText.substring(i,i+1)) > 0) {
				break ; 
			}
		}
		if ( i != strText.length ) {
			return false ; 
		}
		else{
			return true ;
		} 

		return false;
}

// 숫자 체크 
//////////////////////////////////////////////////////////////////////////
function jsChkNumber(value) {
	var temp = new String(value)
		
	if(temp.search(/\D/) != -1) {
		return false;
	}
		return true;	
}

 
 // 파일 유효성 체크 
 // fnChkFile(파일명, 업로드가능한 최대사이즈, 유효한 확장자배열)
 // 사용예: arrFileExt = new Array();
//			arrFileExt[arrFileExt.length]  = "txt";
//			fnChkFile(value,10,arrFileExt)
//////////////////////////////////////////////////////////////////////////
    function fnChkFile(sFile, sMaxSize, arrExt){   
    //파일 업로드 유무확인
   	 if (!sFile){
    	 return true;
    	}
   
    var blnResult = false;
        
   	//파일 용량 확인
   	var maxsize = sMaxSize * 1024 * 1024;
   	
 	 //	var img = new Image();
	//	img.dynsrc = sFile;
	//var fSize = img.fileSize ;		
		//if (fSize > maxsize){
			//alert("파일크기는 "+sMaxSize+"MB이하만 가능합니다.");
			//return false;
		//}
		
   	//파일 확장자 확인
   		var pPoint = sFile.lastIndexOf('.');
		var fPoint = sFile.substring(pPoint+1,sFile.length);
		var fExet = fPoint.toLowerCase();

		for (var i = 0; i < arrExt.length; i++)
		   	{
		    	if (arrExt[i].toLowerCase() == fExet) 
		    	{ 
		   			blnResult =  true;
		   		}
			}
		
		return blnResult;
   }
   
   
   //달력
		function jsCal(sDName){						
			 jsOpenWindow('popCal', '/lib/util/incCalendar.asp?DN='+sDName, 'winCal', 'width=330,height=280');
		}
		
	//달력
		function jsFrmCal(sDName,sFName){						
			 jsOpenWindow('popCal', '/lib/util/incCalendar.asp?DN='+sDName+'&FN='+sFName, 'winCal', 'width=330,height=280');
		}
		
   //왼쪽 메뉴 폴더열기
	function jsOpenFolder(iMS){	
		
		 var strImgUrl  = "http://image.ithinkso.co.kr";							
		//for(i=0;i<document.all.folder.length;i++){				   
			//document.all.folder(i).src = "<%=strImgUrl%>/webadmin/icon/closedfolder.jpg";
		//}
						
		if (typeof(eval("document.all.d"+iMS)) == "object") {
			if (eval("document.all.d"+iMS).style.display == ""){
				eval("document.all.folder"+iMS).src = strImgUrl + "/webadmin/icon/closedfolder.jpg";
				eval("document.all.d"+iMS).style.display = "none";
			}else{
				eval("document.all.folder"+iMS).src = strImgUrl + "/webadmin/icon/openfolder.jpg";
				eval("document.all.d"+iMS).style.display = "";
			}
		}	
	}
	
	//패션상품 카테고리페이지 이동
	function jsGoCategory(iCS){
		if (iCS ==6 || iCS ==223 || iCS ==229 || iCS ==230 || iCS == 231 || iCS == 237 || iCS == 238 || iCS == 239 ){
			location.href = "/iamaboy/boyList.asp?iCS="+iCS;
			//location.href = "/iamaboy/boyList_new.asp?iCS="+iCS;
		}else if (iCS ==207){
			location.href = "/iamaboy/diary/?iCS="+iCS;		
		}else if (iCS ==208){
			location.href = "/iamaboy/people/?iCS="+iCS;
		}else if (iCS ==209){
			location.href = "/iamaboy/community/?iCS="+iCS;				
		}else{	
   			location.href = "/fashion/?iCS="+iCS;
   		}	
   	}

	//패션상품 카테고리페이지 이동 2011-01-18 29renew
	function jsGoCateList(iCS,MCode){
		if (MCode == 1){
			location.href = "/apparel/index.asp?iCS="+iCS;
		}else if (MCode == 2){
			location.href = "/accessaries/index.asp?iCS="+iCS;
		}else if (MCode == 3){
			location.href = "/life/index.asp?iCS="+iCS;
		}else{	
   			location.href = "/fashion/?iCS="+iCS;
   		}	
   	}
   	
   	//패션상품 상세페이지로 이동
   	function jsGoItem(iItemSeq, iCS){   	
   		location.href = "/2011_categories/style.asp?idx="+iItemSeq + "&iCS="+iCS;
   	}

	//상세페이지 이동
   	function jsGoItemRenew(iItemSeq, iCS){   	
   		location.href = "style.asp?idx="+iItemSeq + "&iCS="+iCS;
   	}

	//상세페이지 이동 - 2011-09-30
   	function jsGoViewItem(iItemSeq){   	
   		location.href = "/shop/shop_detail.asp?idx="+iItemSeq;
   	}

	//상세페이지 이동 - 2011-09-30
   	function jsGoViewItemMobile(iItemSeq){   	
   		location.href = "/shop/shop_detail.asp?idx="+iItemSeq;
   	}

	//상세페이지 이동 - 2014-03-20
   	function jsGoViewItemNew(iItemSeq, MCC){   	
   		location.href = "/shop/shop_detail.asp?idx="+iItemSeq+"&MCC="+MCC;
   	}

	//상세페이지 이동 - 2014-03-20
   	function jsGoViewItemMobileNew(iItemSeq, MCC){   	
   		location.href = "/shop/shop_detail_m.asp?idx="+iItemSeq+"&MCC="+MCC;
   	}

	//smallsmile 상세페이지 이동
	function jsGoSmileView(iItemSeq, MCode){
		if (MCode == 1){
			location.href = "/apparel/style.asp?idx="+iItemSeq;
		}else if (MCode == 2){
			location.href = "/accessaries/style.asp?idx="+iItemSeq;
		}else if (MCode == 3){
			location.href = "/life/style.asp?idx="+iItemSeq;
		}else{	
   			location.href = "/apparel/style.asp?idx="+iItemSeq;
   		}	
	}
   	//aboy 상품  상세페이지로 이동
   	function jsABoyGoItem(iItemSeq, iCS1, iCS2,iCS3){   		   		
   		if (typeof(iCS1) =="undefined") {iCS1=""}
   		if (typeof(iCS2) =="undefined") {iCS2=""}
   		if (typeof(iCS3) =="undefined") {iCS3=""}   		
   		location.href = "/iamaboy/boy.asp?idx="+iItemSeq + "&iCS="+iCS2+"&iCS1="+iCS1+"&iCS2="+iCS2+"&iCS3="+iCS3;
   	}
   	
      	function jsGoBoyCategory(iCS1,iCS2, iCS3,iTC){
      		if (typeof(iTC) =="undefined") {
      			location.href = "/iamaboy/boyList.asp?iCS="+iCS2+"&iCS1="+iCS1+"&iCS2="+iCS2+"&iCS3="+iCS3;
      		}else{
      			location.href = "/iamaboy/boyList.asp?iCS="+iCS2+"&iCS1="+iCS1+"&iCS2="+iCS2+"&iCS3="+iCS3+"&iTC="+iTC;
      		}
       }
    
   	//공지 팝업 선택글 보기
   	function jsGoNotice(iItemSeq, iC){
   		location.href = "/cscenter/notice/notice_pop.asp?idx="+iItemSeq+"&iC="+iC;
   	}
   	
   	
   	//이벤트 팝업 선택글 보기
   	function jsGoNotice(iItemSeq, iC){
   		location.href = "/cscenter/notice/event_pop.asp?idx="+iItemSeq+"&iC="+iC;
   	}
 
 	//이벤트 페이지 이동
   	function jsGoEvent(ievtcode){
   		location.href = "/event/eventMain.asp?eC="+ievtcode;
   	}

 	//이벤트 페이지 이동_리뉴
   	function jsGoEvent_renew(ievtcode){
   		location.href = "/event/event.asp?eC="+ievtcode;
   	}
 
	function jsLogin(frm){
	
		if(!jsChkNull("text",frm.sUID,"아이디를 입력해 주세요")){
			frm.sUID.focus();
			return ;
		}
		
		if(!jsChkNull("text",frm.sUPW,"비밀번호를 입력해 주세요")){
			frm.sUPW.focus();
			return ;
		}
		
		frm.submit();
	}
	
	function jsLogOut(){
		if(confirm("로그아웃하시겠습니까?")){
			location.href = "/login/procLogOut.asp";
		}
	}
	
	function AnSelectAllFrame(bool){
		var frm;
		for (var i=0;i<document.forms.length;i++){
			frm = document.forms[i];
			if (frm.name.substr(0,9)=="frmBuyPrc") {
				if (frm.cksel.disabled!=true){
					frm.cksel.checked = bool;
					AnCheckClick(frm.cksel);
				}
			}
		}
	}	

	function hL(E){
		while (E.tagName!="TR")
		{
			E=E.parentElement;
		}
	
		E.className = "H";
	}
	
	function dL(E){
		while (E.tagName!="TR"){
			E=E.parentElement;
		}
	
		E.className = "";
	}
	
	function AnCheckClick(e){
		if (e.checked)
			hL(e);
		else
			dL(e);
	}	
	
	function ckAll(icomp){
		var bool = icomp.checked;
		AnSelectAllFrame(bool);
	}
	
	function CheckSelected(){
		var pass=false;
		var frm;
	
		for (var i=0;i<document.forms.length;i++){
			frm = document.forms[i];
			if (frm.name.substr(0,9)=="frmBuyPrc") {
				pass = ((pass)||(frm.cksel.checked));
			}
		}
	
		if (!pass) {
			return false;
		}
		return true;
	} 	
	
	function jsRadioCheckedIndex(comp){
        var i =0;
        for( var i = 0 ; i <comp.length;  i++){
            if(comp[i].checked) return i;
        }
        return -1;
    }


	function jsTrim(str){
        return str.replace(/^\s\s*/, '').replace(/\s\s*$/, '');
    }


// 폼 필수 필드 유효성 체크
function validField(obj, msg, len)
{
	if (obj.length > 1)
	{
		if (obj[0].type == "radio" || obj[0].type == "checkbox")
		{
			var chk = 0;
			for (var i = 0; i < obj.length; i++)
				if (obj[i].checked)
					chk++;

			if (chk==0)
			{
				if (obj[0].type == "checkbox")
					alert("" + msg + " 하나 이상 체크해주세요.");
				else
					alert("" + msg + " 체크해주세요.");

				obj[0].focus();
				return false;
			}
		}
		else if (obj.type == "select-one")
		{
			if(jsTrim(obj.value) == "") 
			{
				alert("" + msg + " 선택해주세요.");
				obj.focus();
				return false;
			}
		}
	}
	else if (obj.type == "radio" || obj.type == "checkbox")
	{
		if (obj.checked==false)
		{
			alert("" + msg + " 체크해주세요.");
			obj.focus();
			return false;
		}
	}
	else
	{
		if(jsTrim(obj.value) == "") 
		{
			alert("" + msg + " 입력해주세요.");
			obj.focus();
			return false;
		}
		if (len)
		{
			if (returnByteCount(obj.value) > len)
			{
				alert("" + msg + " 한글기준 "+parseInt(len/2)+"자, 영문기준 "+len+"자 이내로 해주세요.");
				obj.focus();
				return false;
			}
		}
	}

	return true;
}

// 자리수 형식 체크
function validFieldLeng(obj, msg, len)
{
	if(obj.value.length < len)	// 작으면 false 같거나 크면 상관없음 maxlength로 제한하기 때문에 클 수는 없음
	{
		alert(msg + " 자리수가 맞지 않습니다.\n"+len+" 자리 또는 그 이상으로 입력해주세요.");
		obj.focus();
		return false;
	}
	else
		return true;
}

// 바이트수를 리턴하는 함수
function returnByteCount(val)
{ 
	var len = val.length;            //현재 value값의 글자 수 
	var cnt = 0;                    //한글일 경우 2 그외에는 1바이트 수 저장 
	var chr = "";                 //현재 한/영 체크할 letter를 저장 

	for (i=0; i<len; i++) 
	{ 
		chr = val.charAt(i); 

		// 체크문자가 한글일 경우 2byte 그 외의 경우 1byte 증가 
		if (escape(chr).length > 4) 
		   cnt += 2; 
		else
		   cnt++; 
	} 
	return cnt;
}

// 폼 필드값 리턴, 조건에 따라 개수가 달라질때
function getFieldValue(obj)
{
	var ret = "";
	if (obj.length > 1)
	{
		if (obj[0].type == "radio" || obj[0].type == "checkbox")
		{
			for (var i = 0; i < obj.length; i++)
				if (obj[i].checked)
					if (ret=="")
						ret = obj[i].value;
					else
						ret += "," + obj[i].value;
		}
		else if (obj.type == "select-one")
		{
			ret = obj.value;
		}
	}
	else
	{
		ret = obj.value;
	}

	return ret;
}



// 숫자만 입력받기 IE, FF
function onlyNumber(obj,evt) { 
	var evCode = (window.netscape) ? evt.which : event.keyCode ;
	if (isNumeric(evCode)==false)
	{
		alert("숫자만 입력이 가능합니다.");
		if (!window.netscape) 
			event.returnValue=false;
		else
			obj.value = obj.value.substr(0,obj.value.length-1);
	}
}

// 숫자와 구분자만 입력받기 IE, FF
function onlyNumberDot(obj,evt) { 
	var evCode = (window.netscape) ? evt.which : event.keyCode ;
	if (isNumericDot(evCode)==false)
	{
		alert("숫자만 입력이 가능합니다.");
		if (!window.netscape) 
			event.returnValue=false;
		else
			obj.value = obj.value.substr(0,obj.value.length-1);
	}
}

// 숫자인지 체크
function isNumeric( value )
{
	if (value == 189 || value == 109 || value == 8 || value == 9 || value == 13 || (value >= 37 && value <= 40) || value == 46 || value == 27 || value == 116 || (value >= 48 && value <= 57) || (value >= 96 && value <= 105))
		return true;
	else 
		return false;
}

// 숫자나 구분자인지 체크
function isNumericDot( value ) {	
	if (value == 189 || value == 109 || value == 8 || value == 9 || value == 13 || (value >= 37 && value <= 40) || value == 46 || (value >= 48 && value <= 57) ||  value == 110 || value == 190 || value == 192 || value == 27 || value == 116 || (value >= 96 && value <= 105) || value ==17 || value ==16 || value ==186 || value ==188)
		return true;
	else 
		return false;
}


// 센터 창 띄우기(scrollbars no)
function WindowOpenCenter(Url, popName, popwidth, popheight, popScroll)
{
	if (popScroll==1)
		popScroll = "yes";

	var LeftPosition = (screen.width) ? (screen.width-popwidth)/2 : 0;
	var TopPosition = (screen.height) ? (screen.height-popheight)/2 : 0;
	var settings = 'height='+popheight+',width='+popwidth+',top='+TopPosition+',left='+LeftPosition+',status=no,toolbar=no,menubar=no,location=no,fullscreen=no,resizable=no,scrollbars='+popScroll;
	win = window.open(Url,popName,settings)
}


function plusComma(num){
	if (num < 0) { num *= -1; var minus = true}
	else var minus = false

	var dotPos = (num+"").split(".")
	var dotU = dotPos[0]
	var dotD = dotPos[1]
	var commaFlag = dotU.length%3

	if(commaFlag) {
		var out = dotU.substring(0, commaFlag)
		if (dotU.length > 3) out += ","
	}
	else var out = ""

	for (var i=commaFlag; i < dotU.length; i+=3) {
		out += dotU.substring(i, i+3)
		if( i < dotU.length-3) out += ","
	}

	if(minus) out = "-" + out
	if(dotD) return out + "." + dotD
	else return out
}


// Replace 함수
function Replace(strOriginal, strFind, strChange) {
  return strOriginal.split(strFind).join(strChange);
}


// 폼의 모든 요소명과 값을 쿼리스트링 문자열로 반환
function setQueryString(f){
	var queryString = "ajax=Y";
	for(var i = 0; i < f.elements.length; i++) 
	{
		if (f.elements[i].type!="button") 
		{
			if (f.elements[i].type=="checkbox") 
			{
				if (f.elements[i].checked)
					queryString += "&" + f.elements[i].name + "=" + escape(f.elements[i].value);
				else
					queryString += "&" + f.elements[i].name + "=";
			}
			else if (f.elements[i].type=="radio") 
			{
				if (f.elements[i].checked)
					queryString += "&" + f.elements[i].name + "=" + escape(f.elements[i].value);
			}
			else
			{
				queryString += "&" + f.elements[i].name + "=" + escape(f.elements[i].value);
			}
		}
	}
	return queryString;
}


// 팝업창 자동리사이즈, Width를 지정하면 지정한대로
function popupResize(innerWidth)
{
	var strAgent = navigator.userAgent.toLowerCase();
	var strVersion = strAgent.substr(strAgent.indexOf("msie")+5,1);

	if (!window.netscape)	// IE
	{
		if (strVersion > 6)	// 7이상
			addHeight = 95;
		else				// 6이하
			addHeight = 55;

		var innerBody = document.body;
		var innerHeight = innerBody.scrollHeight + (innerBody.offsetHeight - innerBody.clientHeight);
		if (!innerWidth)
			var innerWidth = innerBody.scrollWidth + (innerBody.offsetWidth - innerBody.clientWidth);

		innerWidth += 10;
		innerHeight += addHeight;
		window.resizeTo(innerWidth,innerHeight);
	}
	else					// FF
	{
		var Dwidth = parseInt(document.body.scrollWidth);
		var Dheight = parseInt(document.body.scrollHeight);
		var divEl = document.createElement("div");
		divEl.style.position = "absolute";
		divEl.style.left = "0px";
		divEl.style.top = "0px";
		divEl.style.width = "100%";
		divEl.style.height = "100%";
	    document.body.appendChild(divEl);
	    window.resizeBy(Dwidth-divEl.offsetWidth, Dheight-divEl.offsetHeight);
		document.body.removeChild(divEl);
	}
}

// 위시리스트저장 한개나 , 로구분해서 여러개도 가능
function TnAddFavorite(itemseq){
	//if (confirm('관심품목에 추가 하시겠습니까?')){
		var params = "mode=add&itemseq=" + itemseq ;

        var FavWin = window.open('/mypage/wishlist_process.asp?' + params ,'FavWin','width=380,height=180,scrollbars=no,resizable=no');
    	FavWin.focus();
	//}
}


function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}

//입금자를찾습니다. 팝업
function PopupBank(){
    var popwin = window.open('/cscenter/common/online_banking_list.asp','popupbank', 'width=617,height=730,left=400,top=200,location=no,menubar=no,resizable=no,scrollbars=yes,status=no,toolbar=no');
    popwin.focus();
}

//입금자를찾습니다. 팝업 날짜 파라메타전송
function PopupBankDate(v){
    var popwin = window.open('/cscenter/common/online_banking_list.asp?searchitem=dt&searchtext=' + v,'popupbank', 'width=580,height=730,left=400,top=200,location=no,menubar=no,resizable=no,scrollbars=yes,status=no,toolbar=no');
    popwin.focus();
}

//사진 view 타입(1:제품컷, 2:모델컷)
 function jsViewType(iType, frmName){ 	
	 	eval("document."+frmName).chkV.value = iType;
	 	eval("document."+frmName).submit();
	}
	
function jsGoReview(iRS){
	location.href ="/award/reviewDetail.asp?iRS="+iRS;	
}

//보이 사진 위에 상품명 보여주기
function jsOnViewInfo(divID){
	eval("document.all.P"+divID).style.display ="";
}

//보이 사진 위에 상품명 보여주기		
function jsOutViewInfo(divID){
	eval("document.all.P"+divID).style.display ="none";
}
// iframe 리사이징
function resizeIfr(obj, minHeight) {
	minHeight = minHeight || 10;

	try {
		var getHeightByElement = function(body) {
			var last = body.lastChild;
			try {
				while (last && last.nodeType != 1 || !last.offsetTop) last = last.previousSibling;
				return last.offsetTop+last.offsetHeight;
			} catch(e) {
				return 0;
			}
			
		}
				
		var doc = obj.contentDocument || obj.contentWindow.document;
		if (doc.location.href == 'about:blank') {
			obj.style.height = minHeight+'px';
			return;
		}
		
		//var h = Math.max(doc.body.scrollHeight,getHeightByElement(doc.body));
		//var h = doc.body.scrollHeight;
		if (/MSIE/.test(navigator.userAgent)) {
			var h = doc.body.scrollHeight;
		} else {
			var s = doc.body.appendChild(document.createElement('DIV'))
			s.style.clear = 'both';

			var h = s.offsetTop;
			s.parentNode.removeChild(s);
		}
		
		//if (/MSIE/.test(navigator.userAgent)) h += doc.body.offsetHeight - doc.body.clientHeight;
		if (h < minHeight) h = minHeight;
	
		obj.style.height = h + 'px';
		if (typeof resizeIfr.check == 'undefined') resizeIfr.check = 0;
		if (typeof obj._check == 'undefined') obj._check = 0;

//		if (obj._check < 5) {
//			obj._check++;
			setTimeout(function(){ resizeIfr(obj,minHeight) }, 200); // check 5 times for IE bug
//		} else {
			//obj._check = 0;
//		}	
	} catch (e) { 
		//alert(e);
	}
	
}

// 쇼셜네트워크로 글보내기
function popSNSPost(svc,tit,link,pre,tag) {
    // tit 및 link는 반드시 UTF8로 변환하여 호출요망!
    var popwin = window.open("/SNSpost/goSNSposts.asp?svc=" + svc + "&link="+link + "&tit="+tit + "&pre="+pre + "&tag="+tag,'popSNSpost');
    popwin.focus();
}
// 클립 보드 저장
function toclip(id) 
{ 
	 var idxs = document.getElementById(id); 
	 if(idxs.value==''){ document.body.focus(); return; } 
	 idxs.select(); 
	 var clip=idxs.createTextRange() 
	 clip.execCommand('copy'); 
	 alert('클립보드에 복사되었습니다'); 
}

//2011-09-21 김진영 생성
function jsGoCateList_renew(iCS,iCS2,MCode,page){
	document.frmChange.cdm.value = iCS;
	document.frmChange.cds.value = iCS2;
	document.frmChange.MCC.value = MCode;
	document.frmChange.iC.value = page;
	document.frmChange.BS.value = "";
	document.frmChange.submit();
}
//2011-12-06 header용
function jsGoCateList_renew_head(iCS,iCS2,MCode,page){
	try{
		document.frmHChange.cdm.value = iCS;
		document.frmHChange.cds.value = iCS2;
		document.frmHChange.MCC.value = MCode;
		document.frmHChange.iC.value = page;
	}catch(e){}

	//2013.11.15 modify (post -> get)
	var cateNm;
	if(MCode == "1"){
		cateNm = "WOMEN";
	}else if(MCode == "2"){
		cateNm = "MEN";
	}else if(MCode == "14"){
		cateNm = "HOME";
	}else if(MCode == "4"){
		cateNm = "LIFE-STYLE";
	}else if(MCode == "6"){
		cateNm = "CULTURE";
	}
	document.frmHChange.disp.value = cateNm;
	document.frmHChange.submit();	
}

function clipcopy()
{
	alert('클립보드에 복사되었습니다');
}

//클립보드
function copyit(theField) {
var tempval=eval("document."+theField)
tempval.focus()
tempval.select()
therange=tempval.createTextRange()
therange.execCommand("Copy")
alert('복사완료');
}


  //  contentsShare(siteName, DocTitle, DocUrl, DocImage, DocSummary, comments )
  //  siteName     : facebook(fb), twitter(tw), pinterest(pt)  - metoday 2014.06.30 종료.
  //  DocTitle     : subject
  //  DocUrl       : current location
  //  DocImage     : image address - use only facebook
  //  DocSummary   : subtitle - use only facebook
  //  comments     : contents - use only facebook
  //  example      : onclick="contentsShare('fb', 'Ramzy Pencil Sharpener', 'http://www.29cm.co.kr/shop/shop_detail.asp?idx=35438', 'http://image.29cm.co.kr/contents/itemIcon/201310/400x400/20131021104957.jpg', '연필깎기의 명수, Ramzy.독일에서 제조된 너도밤나무(beechwood)소재의 연필깎이를 사용하였습니다.' )"

  function contentsShare(siteName, DocTitle, DocUrl, DocImage, DocSummary )
  {
    var ranNum = Math.floor(Math.random()*10); // 퍼가기 캐싱 방지
    var newwindow;

    switch (siteName)
    {
      case "fb":
        //newwindow = window.open("http://www.facebook.com/sharer.php?s=100&p[url]="+encodeURIComponent(DocUrl+"&nocache="+ranNum)+"&p[title]="+encodeURIComponent(DocTitle)+"&p[images][0]="+encodeURIComponent(DocImage)+"&p[summary]="+encodeURIComponent(DocSummary),siteName + "Share", "toolbar=0, status=0, width=626, height=436");
        //newwindow = window.open("http://www.facebook.com/sharer.php?u="+encodeURIComponent(DocUrl)+"&t="+encodeURIComponent(DocTitle),siteName + "Share", "toolbar=0, status=0, width=626, height=436");
		FB.ui({
			 method: 'feed',
			 name: DocTitle,
			 //caption: 'Bringing Facebook to the desktop and mobile web',
			 description: (DocSummary),
			 link: DocUrl,
			 picture: DocImage,
			},
			function(response) {
				if (response && response.post_id) {
					_gaq.push(['_trackEvent', 'facebook', 'share', DocUrl]);
				}
			}
		);
		
        break;
      case "tw":
        newwindow = window.open("http://twitter.com/share?url="+encodeURIComponent(DocUrl)+"&text="+encodeURIComponent(DocTitle)+" +"+encodeURIComponent(DocSummary)+"&nocache="+ranNum,siteName + "Share", "toolbar=0, status=0, width=626, height=436");
		if (window.focus) {newwindow.focus();}
        break;
      case "pt":
        newwindow = window.open("http://www.pinterest.com/pin/create/button/?url="+encodeURIComponent(DocUrl)+"&media="+encodeURIComponent(DocImage)+"&description="+encodeURIComponent(DocTitle) +" - "+ encodeURIComponent(DocSummary),siteName + "Share", "toolbar=0, status=0, width=626, height=436");
		if (window.focus) {newwindow.focus();}
        break;
      default:
        alert("지정된 경로가 존재하지 않습니다. 다시 확인해 주십시요.");
        break;
    }
    //if (window.focus) {newwindow.focus();}
  }
//-->