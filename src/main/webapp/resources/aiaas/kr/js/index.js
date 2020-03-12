var markers = [] // 지도에 표시된 마커 객체를 가지고 있을 배열입니다
var polylines = [] // 지도에 표시된 라인 객체를 가지고 있을 배열입니다
var before_id = null;

function addOption(data){
	$(".factory_container3").empty();
	var option;
	for(var i in data){
		option = "<button id = "+data[i]['CAR_ID']+" class = 'car_btn fac_h3' name = "+i+">"+data[i]['CAR_ID']+"</button>"
		$(".factory_container3").append(option);
	}
}

//하단 버튼 클릭시 아래로 슬라이드 메뉴 내려옴
$(document).ready(function() {
	$('#down_btn').click(function(){
		if($(".factory_container3").css("display") == "none"){
		    $(".factory_container3").slideDown();
		} else {
		    $(".factory_container3").slideUp();
		}
	})
});


//오른쪽 버튼 클릭시 오른쪽으로 슬라이드 메뉴 보여짐
$(document).ready(function() {
	$('#right_btn').click(function(){
		if($(".slider_container").css("display") == "none"){
			$(".button_container").animate({right:'482px'},500)
		    $(".slider_container").animate({width:'toggle'},500);
		} else {
			$(".button_container").animate({right:'0px'},500)
		    $(".slider_container").animate({width:'toggle'},500);
		}
	})
});

$(document).ready(function() {
    $(".js-example-basic-single").on('change', function() {
        var mapnumber = this.value
        getCar(mapnumber)
        getFactory(mapnumber)
    });
})

$(document).on('click', '.car_btn', function(){
	var id = $(this).attr('id')
    var name = $(this).attr('name')
    
    fill_elements(id);
	
    setMarkers(null);
    $.get("/arrive/get_gps", {id : id, name : name},
		// 서버가 필요한 정보를 같이 보냄. 
		function(data, status) {
    		console.log(data);
    		if(data == ''){
    			alert("이동경로가 없습니다");
    		}else{
        		moveMap(data[0]);
        		lineMap(data[1]);
    		
    		}
    	});
});

function fill_elements(id){
	$("button[id="+before_id+"]").css('backgroundColor','#F9F9F9');
	$("th[name="+before_id+"]").parents("tr").css('backgroundColor','#ffffff');
	
    before_id = id;

	$("button[id="+id+"]").css('backgroundColor','#ffffd4');
	$("th[name="+id+"]").parents("tr").css('backgroundColor','#ffffd4');
	
	 var offset = $("th[name="+id+"]").parents("tr").offset();
	 if(offset){
		 $('.slider_container').animate({scrollTop : $('.slider_container').scrollTop()+offset.top-90}, 400);
	 }
}

function getCar(mapnumber){
    $.get("/arrive/get_car", {mapnumber : mapnumber},
    		// 서버가 필요한 정보를 같이 보냄. 
    		function(data, status) {
    			console.log(data);
            	addOption(data);
    		}); 
}

function getFactory(mapnumber){
    $.get("/arrive/get_factory", {mapnumber : mapnumber},
    		// 서버가 필요한 정보를 같이 보냄. 
    		function(data, status) {
    	console.log(data)
    		drawTable(data);
    }); 
}

function drawTable(data){
	var d = new Date();
	
    $('#out_tbody').empty();	
    $('#in_tbody').empty();

	if(data[0].length){
	    
	    for(var i = 0; i < data[0].length; i++){
		    var valuestr = "<tr>"
	    	valuestr += "<th scope='row' name='"+data[0][i]['CAR_ID']+"'>" +data[0][i]['CAR_ID']+ "</th>";
	    	valuestr += "<td class = 'time'>"+Math.floor((d.getTime()- new Date(data[0][i]['time']).getTime())/1000/60/60)+"시간"+Math.floor((d.getTime()- new Date(data[0][i]['time']).getTime())/1000/60) % 60+"분</td>";
	    	valuestr += "<td>"+data[0][i]['GPS_LAT']+"</td>";
	    	valuestr += "<td>"+data[0][i]['GPS_LONG']+"</td>";
	    	valuestr += "<td>OUT</td>";
		    valuestr += "</tr>"
	        $('#out_tbody').append(valuestr)
	    }	    	
	}
	
	if(data[1].length){
	    
	    for(var i = 0; i < data[1].length; i++){
		    var valuestr = "<tr>"
		    	valuestr += "<th scope='row' name='"+data[1][i]['CAR_ID']+"'>" +data[1][i]['CAR_ID']+ "</th>";
	    	valuestr += "<td class = 'time'>"+Math.floor((d.getTime()- new Date(data[1][i]['time']).getTime())/1000/60)+"시간"+ Math.floor((d.getTime()- new Date(data[0][i]['time']).getTime())/1000/60) % 60+"분</td>";
	    	valuestr += "<td>"+data[1][i]['GPS_LAT']+"</td>";
	    	valuestr += "<td>"+data[1][i]['GPS_LONG']+"</td>";
	    	valuestr += "<td>IN</td>";
		    valuestr += "</tr>"
	        $('#in_tbody').append(valuestr)
	    }	    	
	}
	
	
}


//배열에 추가된 마커들을 지도에 표시하거나 삭제하는 함수입니다
function setMarkers(map) {
    for (var i = 0; i < markers.length; i++) {
    	markers[i].setMap(map);
    }
    for (var i = 0; i < polylines.length; i++) {
    	polylines[i].setMap(map);
    }
    markers = []
    polylines = []
}

function moveMap(data){
	
	var positions = []
	var overlays = []
	
	/*
	positions.push({content: "<div class='dotOverlay distanceInfo'><span class='head_span'>"+(i+1)+"번째 경유지</span> <br>위도 : <span class='number'>"+LAT+"</span></br> 경도 : <span class='number'>"
		+LONG+"</span></div>", latlng: new kakao.maps.LatLng(LAT, LONG)}) //마커 배열
	*/
	
	for(var i = 0; i < data.length; i++){ //for문 쓰면 마지막껄로 됨 자바스크립트 비동기 특성상 따라서 forEach로 해결
		var LAT = data[i]["GPS_LAT"]
		var LONG = data[i]["GPS_LONG"]
		
		var content = document.createElement('div');
			content.className = 'marker';
		
		var content_num = document.createElement('div'); content_num.className = 'number'; content_num.innerHTML = data.length-i;
			content.appendChild(content_num);
			
			
		var overlay_content = document.createElement('div'); overlay_content.className = 'dotOverlay distanceInfo';

		var overlay1 = document.createElement('span'); overlay1.className = 'head_span'; overlay1.innerHTML = data.length - i + '번째 경유지';
					
		var overlay2 = document.createElement('span'); overlay2.innerHTML = '위도 : ';
		var overlay3 = document.createElement('span'); overlay3.className = 'number'; overlay3.innerHTML = LAT;
		
		var overlay4 = document.createElement('span'); overlay4.innerHTML = '경도 : ';
		var overlay5 = document.createElement('span'); overlay5.className = 'number'; overlay5.innerHTML = LONG;
		
		
			overlay_content.appendChild(overlay1); overlay_content.appendChild(document.createElement('br')); overlay_content.appendChild(overlay2); overlay_content.appendChild(overlay3);
			overlay_content.appendChild(document.createElement('br')); overlay_content.appendChild(overlay4); overlay_content.appendChild(overlay5);
		
		positions.push({content: content, latlng: new kakao.maps.LatLng(LAT, LONG)}) //마커가될 커스텀 오버레이 배열
		overlays.push({content: overlay_content, latlng: new kakao.maps.LatLng(LAT, LONG)}) //마커위에 그려질 커스텀 오버레이 배열
	}
	
	// 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다
	var bounds = new kakao.maps.LatLngBounds();  
	
	positions.forEach(function(element, index, array){  
		// LatLngBounds 객체에 좌표를 추가합니다
	    bounds.extend(positions[index].latlng);
	    
	    // 마커를 생성합니다
	    var marker = new kakao.maps.CustomOverlay({ //커스텀 오버레이로 마커 만든다
	        map: map, // 마커를 표시할 지도
	        position: positions[index].latlng, // 마커의 위치
	        content: positions[index].content,
            clickale: true,
	        yAnchor: 1
	    });
	    
	    var overlay = new kakao.maps.CustomOverlay({ //커스텀 오버레이로 마커 만든다
	        map: map, // 마커를 표시할 지도
	        position: overlays[index].latlng, // 마커의 위치
	        content: overlays[index].content,
            clickale: true,
	        yAnchor: 1
	    });
	    
	    overlay.setMap(null); //처음에 안보이게하기
		$(positions[index].content).mouseover(function(){
			  overlay.setMap(map);
		});

		$(positions[index].content).mouseout(function(){
			  overlay.setMap(null);
		});
		
	    markers.push(marker)//마커 저장
	})
	
    map.setBounds(bounds); // LatLngBounds 객체에 추가된 좌표들을 기준으로 지도의 범위를 재설정합니다. 이때 지도의 중심좌표와 레벨이 변경될 수 있습니다
	
}

function lineMap(data){
	
	var linePath = []
	
	for(var i = 0; i < data.length; i++){
		var LAT = data[i]["GPS_LAT"]
		var LONG = data[i]["GPS_LONG"]	
		linePath.push(new kakao.maps.LatLng(LAT, LONG))//라인 배열
	}

	var polyline = new kakao.maps.Polyline({
	    path: linePath, // 선을 구성하는 좌표배열 입니다
	    strokeWeight: 3, // 선의 두께 입니다
	    strokeColor: '#8083fd', // 선의 색깔입니다
	    strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
	    strokeStyle: 'solid' // 선의 스타일입니다
	});
	polylines.push(polyline)
	
	polyline.setMap(map); //선 그림

}


