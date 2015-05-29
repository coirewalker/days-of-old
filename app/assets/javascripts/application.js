// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


 $(document).ready(function(){

  $(window).bind('scroll', function() {
  var navHeight = $(window).height() - 50;
    if ($(window).scrollTop() > navHeight) {
      $('nav').addClass('fixed');
    }
    else {
      $('nav').removeClass('fixed');
    }
  });


var $navFade = $('.nav-wp-down');

  $navFade.waypoint(function (direction) {
    console.log('nav waypoint-down!');
    if (direction == 'down') {
      $('nav').addClass('fade-out');
    }
    else {
      // $('nav').removeClass('fade-out');
      $('nav').addClass('fade-in');
    }

  });


///

// function getScrollXY() {
//     var x = 0, y = 0;
//     if( typeof( window.pageYOffset ) == 'number' ) {
//         // Netscape
//         x = window.pageXOffset;
//         y = window.pageYOffset;
//     } else if( document.body && ( document.body.scrollLeft || document.body.scrollTop ) ) {
//         // DOM
//         x = document.body.scrollLeft;
//         y = document.body.scrollTop;
//     } else if( document.documentElement && ( document.documentElement.scrollLeft || document.documentElement.scrollTop ) ) {
//         // IE6 standards compliant mode
//         x = document.documentElement.scrollLeft;
//         y = document.documentElement.scrollTop;
//     }
//     return [x, y];
// }



////


  var $footBlock = $('.stop-here');

  $footBlock.waypoint(function (direction) {
  	console.log('waypoint!');
    if (direction == 'down') {
  	  $('footer').addClass('stick');
    }
    else {
      $('footer').removeClass('stick');
    }
  }, { offset: '65%' });


});



















