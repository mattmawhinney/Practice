$(document).ready(function() { 
    $('div').mouseenter(function() { 
        $(this).fadeTo('fast', '1'); 
    });
    
    $('div').mouseleave(function() { 
        $(this).fadeTo('fast', '0.25'); 
    });

});