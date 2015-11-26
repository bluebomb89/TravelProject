var httpRequest=null;
function createHttpRequest()
{
	 if(window.ActiveXObject)//IE6
	 {
	      return new ActiveXObject("Msxml2.XMLHTTP");
	      // Microsoft.XMLHTTP 6이하 
	 }
	 else if(window.XMLHttpRequest)// 크롬 , FF
	 {
		 return new XMLHttpRequest();
	 }
	 else
	 {
		 return null;
	 }
}
function sendMessage(method,url,param,callback)
{
	httpRequest=createHttpRequest();
	var httpMethod=method?method:'GET';
	if(httpMethod!='GET' || httpMethod!='POST')
	{
		httpMethod='GET';
	}
	var httpParam=(param==null||param=='')?null:param;
	var httpUrl=url;
	if(httpMethod=='GET' && httpParam!=null)
	{
		httpUrl=httpUrl+"?"+httpParam;
	}
	httpRequest.open(httpMethod,httpUrl,true);
	httpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	httpRequest.onreadystatechange=callback;
	httpRequest.send(httpMethod=='POST'?httpParam:null);
}





