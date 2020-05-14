$(document).ready(function() {
   
    $('tbody tr').hover(function(){
        $(this).find('li').css('background-color','#ECECEC');
    }, function() {
        $(this).find('li').css('background-color','#FFFFFF');
    });
	
});