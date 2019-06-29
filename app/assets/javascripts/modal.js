$(document).on('turbolinks:load', function () {
  var $body = $('body');
  var $btn = $('.menu-trigger');

  //開閉用ボタンをクリックでクラスの切替え
  $('#js__btn').on('click', function () {
    $body.toggleClass('open');
    $btn.toggleClass('active');
  });

  //メニュー名以外の部分をクリックで閉じる
  $('#js__nav').on('click', function () {
    $body.removeClass('open');
    $btn.removeClass('active');
  });
});

$(function () {
  setTimeout("$('.flash').fadeOut('slow')", 3000)
})