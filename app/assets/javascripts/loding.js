$(function () {
  var h = $(window).height();
  $('#main-contents').css('display', 'none');
  $('#loader-bg ,#loader').height(h).css('display', 'block');
});

$(document).on('turbolinks:load', function () {
  // $('#loader-bg').delay(700).fadeOut(800);
  // $('#loader').delay(400).fadeOut(300);
  $('#wrapper').delay(300).fadeIn(800);
});