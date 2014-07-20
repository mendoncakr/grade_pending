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

   $("#overlay")
      .height(docHeight)
      .css({
         'opacity' : 0.95,
         'position': 'absolute',
         'top': 0,
         'left': 0,
         'background-color': '#222222',
         'width': '100%',
         'z-index': 5000
      });

     $('body').click(function(e){
     	console.log("CLICK!");
     	$('#overlay').fadeOut(1000);
     }) 

});
