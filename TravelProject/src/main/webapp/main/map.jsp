<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
.overlaybox {position:relative;width:360px;height:350px;background:url('http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/box_movie.png') no-repeat;padding:15px 10px;}
.overlaybox div, ul {overflow:hidden;margin:0;padding:0;}
.overlaybox li {list-style: none;}
.overlaybox .boxtitle {color:#fff;font-size:16px;font-weight:bold;background: url('http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png') no-repeat right 120px center;margin-bottom:8px;}
.overlaybox .first {position:relative;width:247px;height:136px;background: url('http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/thumb.png') no-repeat;margin-bottom:8px;}
.first .text {color:#fff;font-weight:bold;}
.first .triangle {position:absolute;width:48px;height:48px;top:0;left:0;background: url('http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/triangle.png') no-repeat; padding:6px;font-size:18px;}
.first .movietitle {position:absolute;width:100%;bottom:0;background:rgba(0,0,0,0.4);padding:7px 15px;font-size:14px;}
.overlaybox ul {width:247px;}
.overlaybox li {position:relative;margin-bottom:2px;background:#2b2d36;padding:5px 10px;color:#aaabaf;line-height: 1;}
.overlaybox li span {display:inline-block;}
.overlaybox li .number {font-size:16px;font-weight:bold;}
.overlaybox li .title {font-size:13px;}
.overlaybox ul .arrow {position:absolute;margin-top:8px;right:25px;width:5px;height:3px;background:url('http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/updown.png') no-repeat;} 
.overlaybox li .up {background-position:0 -40px;}
.overlaybox li .down {background-position:0 -60px;}
.overlaybox li .count {position:absolute;margin-top:5px;right:15px;font-size:10px;}
.overlaybox li:hover {color:#fff;background:#d24545;}
.overlaybox li:hover .up {background-position:0 0px;}
.overlaybox li:hover .down {background-position:0 -20px;}   
</style>

</head>
<body>
	<div id="map" style="width: 100%; height: 350px;"></div>

	<script type="text/javascript"
		src="//apis.daum.net/maps/maps3.js?apikey=�߱޹��� API KEY�� ����ϼ���"></script>


	<script>
		var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
		mapOption = {
			center : new daum.maps.LatLng(37.502, 127.026581), // ������ �߽���ǥ
			level : 4
		// ������ Ȯ�� ����
		};

		var map = new daum.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

		// Ŀ���� �������̿� ǥ���� �����Դϴ�     
		// HTML ���ڿ� �Ǵ� Dom Element �Դϴ� 
		var content = '<div class="overlaybox">'
				+ '    <div class="boxtitle">���� ��ȭ����</div>'
				+ '    <div class="first">'
				+ '        <div class="triangle text">1</div>'
				+ '        <div class="movietitle text">�巡�� ����̱�2</div>'
				+ '    </div>' + '    <ul>' + '        <li class="up">'
				+ '            <span class="number">2</span>'
				+ '            <span class="title">��</span>'
				+ '            <span class="arrow up"></span>'
				+ '            <span class="count">2</span>' + '        </li>'
				+ '        <li>' + '            <span class="number">3</span>'
				+ '            <span class="title">����(�ٴٷ� �� ����)</span>'
				+ '            <span class="arrow up"></span>'
				+ '            <span class="count">6</span>' + '        </li>'
				+ '        <li>' + '            <span class="number">4</span>'
				+ '            <span class="title">�ع�</span>'
				+ '            <span class="arrow up"></span>'
				+ '            <span class="count">3</span>' + '        </li>'
				+ '        <li>' + '            <span class="number">5</span>'
				+ '            <span class="title">�ȳ�, ������</span>'
				+ '            <span class="arrow down"></span>'
				+ '            <span class="count">1</span>' + '        </li>'
				+ '    </ul>' + '</div>';

		// Ŀ���� �������̰� ǥ�õ� ��ġ�Դϴ� 
		var position = new daum.maps.LatLng(37.49887, 127.026581);

		// Ŀ���� �������̸� �����մϴ�
		var customOverlay = new daum.maps.CustomOverlay({
			position : position,
			content : content,
			xAnchor : 0.3,
			yAnchor : 0.91
		});

		// Ŀ���� �������̸� ������ ǥ���մϴ�
		customOverlay.setMap(map);
	</script>
</body>
</html>