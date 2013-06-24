$(function(){
  $(".windy-button").bind('click', function(e){
    const elm = $(e.target);
    $.post(elm.attr("windy-target"));
  });
});
