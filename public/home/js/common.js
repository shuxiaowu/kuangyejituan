 // JavaScript Document
 $(document).ready(function(e) {
   $.post(think+'/Index/online', {'online':1},function(data){},'json');
   $(".bh-fixtop").click(function(e) {
     $("html,body,php").animate({scrollTop: 0}, 400);  
   });
 });
 