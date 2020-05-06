var token = $("meta[name='_csrf']").attr("content");
var header = $("meta[name='_csrf_header']").attr("content");
var time;
var car_id;
var fmi;
var spn;

//페이지 개수 선택
$(document).ready(function() {
    //표 클릭시 detail페이지로
    $('tr').click(function(){
    	time = $(this).find(".time").text();
    	car_id = $(this).find(".car_id").text();
    	fmi = $(this).find(".fmi").text();
    	spn = $(this).find(".spn").text();
    	
    	var ary = new Array(time, car_id, fmi, spn);
    	
    	$(".list-group").find("span").each(function(index, item){
    		$(item).text(ary[index])
    	})
    	
    });
    
	$('.standard-btn').click(function() {
		var value = $(this).attr('value');
		if (value == 0) {
			delete_Alter();
		} else if (value == 1) {
			$('#exampleModalCenter').modal("hide"); //닫기
			$('#exampleModalCenter2').modal("show"); //열기
		} else {
			complete_Alter();
		}

	});
    
    $('#modal_text').on('keyup', function() {
		if ($(this).val().length > 200) {
			alert("글자수는 200자로 이내로 제한됩니다.");
			$(this).val($(this).val().substring(0, 200));
		}
	});
    
	$('.btn-primary').click(function() {
	    var comments = $("#modal_text").val();
	    
		 $.ajax({
			 method:"POST",
             url: '/brokenSVC/RMC',
             data: {
            	 time: time,
            	 car_id: car_id,
            	 comments: comments
             },
             beforeSend: function(xhr) {
                 xhr.setRequestHeader(header, token);
             },
             success: function(data, textStatus, jqXHR)
             {
            	 if(data == "success"){
            		 alert("성공")
            		 reload();
            	 }else{
                	 alert(data) 
            	 }
             },
             error: function (jqXHR, textStatus, errorThrown)
             {
                    alert(errorThrown + " " + textStatus);
             }
           });
		
	});
    
    
    google.charts.load('current', {'packages':['bar']});
    google.charts.setOnLoadCallback(drawChart);  
})

	function complete_Alter() {
	$.ajax({
		method : "PUT",
		url : '/brokenSVC/RMC',
		data : JSON.stringify({
			"time" : time, "car_id" : car_id
		}),
		contentType: "application/json; charset=utf-8",
		beforeSend : function(xhr) {
			xhr.setRequestHeader(header, token);
		},
		success : function(data, textStatus, jqXHR) {
			if (data == "success") {
				alert("성공")
				reload();
			} else {
				alert(data)
			}
		},
		error : function(jqXHR, textStatus, errorThrown) {
			alert(errorThrown + " " + textStatus);
		}
	});

	}

	function delete_Alter() {
		$.ajax({
			method : "DELETE",
			url : '/brokenSVC/RMC?'+ $.param({
				time : time,
				car_id : car_id
		    }),
			beforeSend : function(xhr) {
				xhr.setRequestHeader(header, token);
			},
			success : function(data, textStatus, jqXHR) {
				if (data == "success") {
					alert("성공")
					reload();
				} else {
					alert(data)
				}
			},
			error : function(jqXHR, textStatus, errorThrown) {
				alert(errorThrown + " " + textStatus);
			}
		});
	}
	
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

	function reload(){
		location.reload();
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