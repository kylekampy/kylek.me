# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $('#text_for_preview').keyup ->
    $('#preview_area').html($('#text_for_preview').val())
  
