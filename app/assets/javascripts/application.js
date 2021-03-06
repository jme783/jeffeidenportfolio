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
//= require foundation
//= require turbolinks
//= require accordion
//= require responsive-nav
//= require fastclick
//= require scroll
//= require fixed-responsive-nav
//= require parallax
$(function(){ $(document).foundation(); $('.accordion').accordionAnimated();});
isTouchDevice = function() {
  return 'ontouchstart' in window // works on most browsers 
  || 'onmsgesturechange' in window; // works on ie10
}
