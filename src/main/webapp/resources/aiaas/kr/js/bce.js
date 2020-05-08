var button='<button type="button" class="close" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
var tabID = 1;

$(document).ready(function() {
    $('.add').click(function() {
        tabID++;
                $('#myTab').append($(' <li class="nav-item">'+
                	    '<a class="nav-link" id="tab'+tabID+'" data-toggle="tab" href="#div_tab'+tabID+'" role="tab" aria-controls="div_tab'+tabID+'" aria-selected="false">tab'+tabID+''+button+'</a>'+
                	    '</li>'));
        $('#myTabContent').append($('<div class="tab-pane fade" id="div_tab'+tabID+'" role="tabpanel" aria-labelledby="tab'+tabID+'">'+tabID+'</div>'));
        resetTab()
    });
    
    $('#myTab').on('click', '.close', function() {
        var ID = $(this).parents('a').attr('id');
        var tabID = $(this).parents('a').attr('href');
        $("#"+ID).trigger("click");
        $(this).parents('li').remove();
        $(tabID).remove();
    	resetTab()
    });
});

function resetTab(){
    $("#tab"+tabID).trigger("click");
}