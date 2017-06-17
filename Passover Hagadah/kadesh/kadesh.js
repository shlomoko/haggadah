$(document).ready(function(){ 
     $(window).scroll(function(){
		 if ($(this).scrollTop() < $(this).height() * 1.5){
       $('.right').css('transform', 'translate3d(0,' + $(this).scrollTop()*2 + 'px, 0)'); 
		 } else {
		$(window).scrollTop($(this).height() * 1.5); 
		 }
    }).scroll();
});