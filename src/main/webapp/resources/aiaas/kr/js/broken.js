var select_value = 25;
var car_list = new Object();

//페이지 개수 선택
$(document).ready(function() {

    google.charts.load('current', {'packages':['bar']});
    google.charts.setOnLoadCallback(drawChart);
    
    //표 클릭시 detail페이지로
    $('tr').click(function(){
    	location.href = "/brokenSVC/detail?id="+$(this).attr('id');
    });
    
})
	
	function get_data(){ 
	var result
	$.ajax({
        method:"GET",
        url:"/brokenSVC/getChart",
        async:false,
        success:function(response){
            result = response;
        }
    });
	return result
	}

	function get_carlist(data){
		if(car_list[data]) update_text(data)
		else{
			$.ajax({
		        method:"GET",
		        url:"/brokenSVC/getCar",
		        traditional : true,
		        data : {
		        	car_list: data
		        },
		        success:function(response){
		        	car_list[data] = response
		        	update_text(data)
		        }
		    });
		}
	}

	function update_text(date){
		var text = date.substring(0,4)+"년 " + date.substring(4,6) + "월 " + date.substring(6,8)+ "일 DTC 차량 리스트 :";
		console.log(car_list[date].length)
		for(var i in car_list[date]){
			text += " "
			text += car_list[date][i].car_id
		}
		
		$(".card-footer").text(text)
	}
	
    function drawChart() {
	  var chart_data = get_data();
	  console.log(chart_data)
	  
      var data = google.visualization.arrayToDataTable(chart_data);

      var options = {
        chart: {
          title: '일별 차량 DTC량',
          subtitle: 'FMI CODE and SPN CODE',
        },
        bars: 'vertical',
        vAxis: {format: 'decimal'},
        legend:{
        	position: 'bottom'
        },
        height: 500,
        colors: ['#0072BB'],
      };
      
      var control = new google.visualization.ControlWrapper({
    	    controlType: 'ChartRangeFilter',
    	    containerId: 'dash_div',
    	    options: {
    	      filterColumnIndex: 0
    	    }
    	  });
      
      var myDashboard = new google.charts.Bar(document.getElementById('chart_div'));

      var chart = new google.charts.Bar(document.getElementById('chart_div'));

      chart.draw(data, google.charts.Bar.convertOptions(options))
    
      google.visualization.events.addListener(chart, 'select', function () {
  		var div = $(".car-text")
		if(div.hasClass("show") === true) div.removeClass("show");
		else div.addClass("show")
		
    	    var selectedItem = chart.getSelection()[0];
    	    if(!selectedItem) return
    	    var selectedColumn = data.getValue(selectedItem.row,0);
    	    get_carlist(selectedColumn)
      });      
      
      //create trigger to resizeEnd event     
      $(window).resize(function() {
          if(this.resizeTO) clearTimeout(this.resizeTO);
          this.resizeTO = setTimeout(function() {
              $(this).trigger('resizeEnd');
          }, 500);
      });

      //redraw graph when window resize is completed  
      $(window).on('resizeEnd', function() {
          drawChart(data);
      });
    }