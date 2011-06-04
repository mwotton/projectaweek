// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function(){
  var colors = ["#00ff99", "#444", "#aaa", "#9cff00", "#005980", "#00b4ff"],                
      max_radius = 9, /* (actually) -= 1 */
      rand_color = Math.floor(Math.random()*colors.length),
      rand_radius = Math.floor(Math.random()*max_radius) + "px";
      
  $("body").css("background-color", colors[rand_color]);
  $(".main_nav, .main_content, .main_nav_list_item a").css("border-radius", rand_radius);
});
