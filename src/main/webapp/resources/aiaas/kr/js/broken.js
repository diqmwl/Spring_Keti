var select_value = 25;

//페이지 개수 선택
$(document).ready(function() {
	$('#sel1').change(function() {
		select_value = $('#sel1 option:selected').val().replace("개씩","");
		location.href = trans_url(1, 1, select_value)
	})

    google.charts.load('current', {'packages':['bar']});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {

      var data = google.visualization.arrayToDataTable( [
          ['Year', 'Sales', 'Expenses', 'Profit'],
          ['2014', 1000, 400, 200],
          ['2015', 1170, 460, 250],
          ['2016', 660, 1120, 300],
          ['2017', 1030, 540, 350]
        ]);

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
        colors: ['#1b9e77', '#d95f02', '#7570b3']
      };

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
    
    //표 클릭시 detail페이지로
    $('tr').click(function(){
    	location.href = "/brokenSVC_detail?id="+$(this).attr('id');
    });
    
})

//이전 버튼 이벤트
function fn_prev(page, range, rangeSize, listSize) {
	var page = ((range - 2) * rangeSize) + 1;
	var range = range - 1;
	location.href = trans_url(page, range, listSize);
}

//페이지 번호 클릭
function fn_pagination(page, range, rangeSize, listSize) {
	location.href = trans_url(page, range, listSize);
}

//다음 버튼 이벤트
function fn_next(page, range, rangeSize, listSize) {
	var page = parseInt((range * rangeSize)) + 1;
	var range = parseInt(range) + 1;
	location.href = trans_url(page, range, listSize);
}

function trans_url(page, range, listSize){
	return "/brokenSVC?page="+ page + "&range=" + range + "&listSize=" + listSize + "#row_container";
}