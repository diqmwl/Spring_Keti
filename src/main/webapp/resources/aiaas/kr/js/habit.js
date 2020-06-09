$(document).ready(function() {
   
    $('tbody tr').hover(function(){
        $(this).find('li').css('background-color','#ECECEC');
    }, function() {
        $(this).find('li').css('background-color','#FFFFFF');
    });
	
    $('tbody tr').click( function() {
    	location.href = "/habitSVC/habitdetail?id="+$(this).attr('id');
    });
});