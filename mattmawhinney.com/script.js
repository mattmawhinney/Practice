

$(document).ready(function () {    
    
    $('#blogs').hover(
        function () {
            //show its submenu
            $('ul', this).stop().slideDown(400);
        }, 
        function () {
            //hide its submenu
            $('ul', this).stop().slideUp(200);            
        }
    );
    
});

