<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>asiato</title>
    <style>
.customoverlay {position:relative;bottom:85px;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;float:left;}
.customoverlay:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
.customoverlay a {display:block;text-decoration:none;color:#000;text-align:center;border-radius:6px;font-size:14px;font-weight:bold;background: #d95050;background: #d95050 url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
.customoverlay .name {display:block;text-align:center;background:#fff;margin-right:35px;padding:10px 15px;font-size:14px;font-weight:bold;}
.customoverlay:after {content:'';position:absolute;margin-left:-12px;left:50%;bottom:-12px;width:22px;height:12px;background:url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
</style>
</head>
<body>
<div id="map" style="width:100%;height:100%;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=38ce360d552d87771d758b22ad15d447"></script>
<script>
var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
  mapOption = { 
        center: new daum.maps.LatLng(37.466179, 126.932983), // ������ �߽���ǥ
        level: 4 // ������ Ȯ�� ����
    };

var map = new daum.maps.Map(mapContainer, mapOption);

var imageSrc = 'https://www.stickpng.com/assets/images/58889219bc2fc2ef3a1860aa.png', // ��Ŀ�̹����� �ּ��Դϴ�    
    imageSize = new daum.maps.Size(50, 69), // ��Ŀ�̹����� ũ���Դϴ�
    imageOption = {offset: new daum.maps.Point(27, 69)}; // ��Ŀ�̹����� �ɼ��Դϴ�. ��Ŀ�� ��ǥ�� ��ġ��ų �̹��� �ȿ����� ��ǥ�� �����մϴ�.

// ��Ŀ�� �̹��������� ������ �ִ� ��Ŀ�̹����� �����մϴ�
var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imageOption),
    markerPosition = new daum.maps.LatLng(37.466179, 126.932983); // ��Ŀ�� ǥ�õ� ��ġ�Դϴ�

// ��Ŀ�� �����մϴ�
var marker = new daum.maps.Marker({
  position: markerPosition,
  image: markerImage // ��Ŀ�̹��� ���� 
});

// ��Ŀ�� ���� ���� ǥ�õǵ��� �����մϴ�
marker.setMap(map);  

// Ŀ���� �������̿� ǥ��� �������� HTML ���ڿ��̳� document element�� �����մϴ�
var content = '<div class="customoverlay">' +
    '  <a href="mission.jsp">' +
    '    <span class="name">�̸������������а���б�</span>' +
    '  </a>' +
    '</div>';

// Ŀ���� �������̰� ǥ�õ� ��ġ�Դϴ� 
var position = new daum.maps.LatLng(37.466179, 126.932983);  

// Ŀ���� �������̸� �����մϴ�
var customOverlay = new daum.maps.CustomOverlay({
    map: map,
    position: position,
    content: content,
    yAnchor: 1 
});
</script>
</body>
</html>