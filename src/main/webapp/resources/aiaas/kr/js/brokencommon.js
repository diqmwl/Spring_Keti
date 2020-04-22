var select_value = 25;

//페이지 개수 선택
$(document).ready(function() {
	$('#sel1').change(function() {
		select_value = $('#sel1 option:selected').val().replace("개씩","");
		location.href = trans_url(1, 1, select_value)
	})
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