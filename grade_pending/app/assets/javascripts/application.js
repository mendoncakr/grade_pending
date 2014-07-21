// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require underscore
//= require gmaps/google
//= require_tree .

$(function() {

   var docHeight = $(document).height();

   $("body").append("<div id='overlay'></div>");
   $('#overlay').append("<div id='container'><div id='welcome'>GradePending:<br> An application dedicated to informing YOU about New York City restaurant inspection grades by the Department of Health and Mental Hygiene.</div></div>");
   $("#overlay")
      .height(docHeight)
      .css({
         'opacity' : 0.95,
         'position': 'absolute',
         'top': 0,
         'left': 0,
         'background-color': '#222222',
         'width': '100%',
         'z-index': 5000,

      });

     $('body').click(function(e){
     	console.log("CLICK!");
     	$('#overlay').fadeOut(1000);
     })

     $('#welcome').css({
      'position': 'absolute',
      'text-align': 'center',
      'color' : 'white',
      'font-size' : '3em',
      // 'width' : '100%',
      // 'height' : '100%'

     })

      $('#info').css({
      'position': 'absolute',
      'text-align': 'center',
      'color' : 'white',
      'font-size' : '2em',
      // 'width' : '50%',
      // 'height' : '50%',
      'border-radius': '1px solid white'

     })

      $('#container').css({
      'position': 'absolute',
      'text-align': 'center',
      'color' : 'white',
      'font-size' : '2em',
      'width' : '100%',
      'height' : '100%',
      'border-radius': '1px solid white',
      // 'display' : 'inline-block'

     })

});
