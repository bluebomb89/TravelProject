<?
header('Access-Control-Allow-Origin: *');
header("content-type:text/html;charset=utf-8");

$ip = "127.0.0.1";
$user = "admin";
$pass = "1234";
$db = "test";

$connect = mysql_connect($ip, $user, $pass, true) or Error("Local DB 접속시 에러가 발생했습니다");
mysql_select_db($db, $connect) or Error("DB Select 에러가 발생했습니다","");
mysql_query("set character_set_results=utf8", $connect);
mysql_query("set names utf8", $connect);

$id = $_GET["id"];

$sql = "SELECT name FROM student_management WHERE user_id = '{$id}'";
$LoginResult = mysql_num_rows( mysql_query($sql, $connect) );

if( empty($LoginResult) ){
	echo "<span style='color:green;'>ID Available</span>\n
		  <span id='id_res_Bool' style='display:inline;'>true<span>\n"; //중복아님, 녹색
}else{
	echo "<span style='color:red;'>ID Unavailable</span>\n
		  <span id='id_res_Bool' style='display:inline;'>false<span>\n"; //중복, 빨간색
}
?>