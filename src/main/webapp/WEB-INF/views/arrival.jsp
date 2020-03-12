<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%@include file="common/meta.jsp"%>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/aiaas/kr/js/index.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.min.js"></script>
<script>
$(document).ready(function() {
    $('.js-example-basic-single').select2();
});
</script>

</head>
<body style="height: 100%; overflow:hidden;">

<div id="wrap" style="height: 100%;"> 
	<div class="loginWrap">

		<%@include file="common/header.jsp"%>
		
		<div class="login_box arrival_container">
			<div class="factory_container">
				<h3 class = "fac_h3">공장 개수</h3>
				<h1 class = "fac_h1">30</h1>
				<h3 class = "select_h3">공장을 선택하세요</h3>

					<select class="js-example-basic-single" name="state"
						style="width: 160px;">
						<option name="map_type" value="1">성수</option>
						<option name="map_type" value="2">풍납</option>
						<option name="map_type" value="3">광주</option>
						<option name="map_type" value="4">동서울</option>
						<option name="map_type" value="5">양주</option>
						<option name="map_type" value="6">연천</option>
						<option name="map_type" value="7">서부</option>
						<option name="map_type" value="8">일산</option>
						<option name="map_type" value="9">김포</option>
						<option name="map_type" value="10">안양</option>
						<option name="map_type" value="11">화성</option>
						<option name="map_type" value="12">인천</option>
						<option name="map_type" value="13">송도</option>
						<option name="map_type" value="14">평택</option>
						<option name="map_type" value="15">오산</option>
						<option name="map_type" value="16">여주</option>
						<option name="map_type" value="17">원주</option>
						<option name="map_type" value="18">충주</option>
						<option name="map_type" value="19">용인</option>
						<option name="map_type" value="20">안성</option>
						<option name="map_type" value="21">아산</option>
						<option name="map_type" value="22">당진</option>
						<option name="map_type" value="23">청원</option>
						<option name="map_type" value="24">대전</option>
						<option name="map_type" value="25">남부</option>
						<option name="map_type" value="26">남광주</option>
						<option name="map_type" value="27">서부산</option>
						<option name="map_type" value="28">포항</option>
						<option name="map_type" value="29">군산</option>
					</select>

				</div>

				<div class="factory_container2">
					<h3 class="select_h3">차량 선택</h3>
					<button id = "down_btn"><img style="width: 15px; height: 15px;" src="${pageContext.request.contextPath}/resources/aiaas/kr/images/down.png"></button>
				</div>
				<div class="factory_container3">
				</div>
				
				<div id="map" style="width:100%;height: 98%;"></div>
			
				<div class="button_container">
				
				<button id="right_btn"><img style="width: 40px; height: 40px; alt="" src="${pageContext.request.contextPath}/resources/aiaas/kr/images/menu.png"></button></div>
				
				<div class="slider_container">
				
				<div style="vertical-align: middle; overflow: auto;">
					
					<div style="text-align: left">
						<p class="fac_h3">외부 차량</p>
					</div>
					
					
					<div class="col">
			          <div class="card shadow">
			            <div class="table-responsive">
			              <table class="table align-items-center table-flush">
			                <thead class="thead-light">
			                  <tr>
			                    <th scope="col">차량번호</th>
			                    <th scope="col">시간</th>
			                    <th scope="col">위도</th>
			                    <th scope="col">경도</th>
			                    <th scope="col">지역</th>
			                  </tr>
			                </thead>
			                <tbody id="out_tbody">
			                  <tr>
			                    <th scope="row">
			                    	<span class="mb-0 text-sm">차량 목록이 없습니다</span>
			                    </th>
			                  </tr>
			                
			                </tbody>
			              </table>
			            </div>
			          </div>
			        </div>

					<div style="text-align: left">
						<p class="fac_h3">내부 차량</p>
					</div>
					
					
					<div class="col">
			          <div class="card shadow">
			            <div class="table-responsive">
			              <table class="table align-items-center table-flush">
			                <thead class="thead-light">
			                  <tr>
			                    <th scope="col">차량번호</th>
			                    <th scope="col">시간</th>
			                    <th scope="col">위도</th>
			                    <th scope="col">경도</th>
			                    <th scope="col">지역</th>
			                  </tr>
			                </thead>
			                <tbody id="in_tbody">
			                  <tr>
			                    <th scope="row">
			                    	<span class="mb-0 text-sm">차량 목록이 없습니다</span>
			                    </th>
			                  </tr>
			                
			                </tbody>
			              </table>
			            </div>
			          </div>
			        </div>

				
				</div>
				</div>
		</div>


</div>
</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3b40d0ca1587123c7c621e51a6845c4b"></script>
	<script>
		getCar(1);
        getFactory(1);

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(37.582421893160976, 127.01039872239114), // 지도의 중심좌표
			level : 12
		// 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		//일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
		var mapTypeControl = new kakao.maps.MapTypeControl();

		//지도에 컨트롤을 추가해야 지도위에 표시됩니다
		//kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
		map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

		//지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
		var zoomControl = new kakao.maps.ZoomControl();
		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
	</script>
</body>
</html>