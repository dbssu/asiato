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
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
  mapOption = { 
        center: new daum.maps.LatLng(37.466179, 126.932983), // 지도의 중심좌표
        level: 4 // 지도의 확대 레벨
    };

var map = new daum.maps.Map(mapContainer, mapOption);

var imageSrc = 'https://www.stickpng.com/assets/images/58889219bc2fc2ef3a1860aa.png', // 마커이미지의 주소입니다    
    imageSize = new daum.maps.Size(50, 69), // 마커이미지의 크기입니다
    imageOption = {offset: new daum.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imageOption),
    markerPosition = new daum.maps.LatLng(37.466179, 126.932983); // 마커가 표시될 위치입니다

// 마커를 생성합니다
var marker = new daum.maps.Marker({
  position: markerPosition,
  image: markerImage // 마커이미지 설정 
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);  

// 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
var content = '<div class="customoverlay">' +
    '  <a href="mission.jsp">' +
    '    <span class="name">미림여자정보과학고등학교</span>' +
    '  </a>' +
    '</div>';

// 커스텀 오버레이가 표시될 위치입니다 
var position = new daum.maps.LatLng(37.466179, 126.932983);  

// 커스텀 오버레이를 생성합니다
var customOverlay = new daum.maps.CustomOverlay({
    map: map,
    position: position,
    content: content,
    yAnchor: 1 
});
</script>
</body>
</html>