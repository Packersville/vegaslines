// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui-1.8.17.custom.min
//= require jquery.timeentry.js
//= require_tree .

$(document).ready(function() {
  $(".clickable-row").hover(
    function() {
      $(this).children().css('background', '#eaf4fd');
    },
    function() { 
    var index = $(this).children('td').parent().parent().children().index($(this));
    if ( index%2 == 0)
      $(this).children().css('background', 'white');
    else
      $(this).children().css('background', '#e5ecf9');
    }
  );

  $(".timepicker").timeEntry();
  
  $(".datepicker").datepicker({
    showOn: "button",
    butonImageOnly: true,
    dateFormat: "yy-mm-dd",
    onSelect: function(dateText, inst) {
      if( $(this).attr("id") == $(".datepicker").first().attr("id")) {
	$(".datepicker").each(function(index) {
	  if( index < 15)
	    $(this).val($(".datepicker").first().val());
	});
      }
    }
  });
});