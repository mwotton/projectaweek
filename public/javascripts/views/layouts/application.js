// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function(){
  var colors = ["#00ff99", "#444", "#aaa", "#9cff00", "#005980", "#00b4ff"];                
  var rand = Math.floor(Math.random()*colors.length);           
  $('body').css("background-color", colors[rand]);
});
