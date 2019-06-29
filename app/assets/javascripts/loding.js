$(function () {
  var h = $(window).height();
  $('.content').css('display', 'none');
  $('#loader-bg ,#loader').height(h).css('display', 'block');
});

$(document).on('turbolinks:load', function () {
  $('#loader-bg').delay(700).fadeOut(600);
  $('#loader').delay(400).fadeOut(300);
  $('.content').delay(300).fadeIn(800);
});