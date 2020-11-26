// ハンバーガー
$(function () {
  $('.humburger__container').on('click', function () {
    // サイドバー表示/非表示
    $('.sidebar__container').toggleClass('show');
    // ハンバーガーメニューopen/close
    $('.humburger__container').toggleClass('open');
    // メニューが開いている間は後ろを動かなくする
    $('body,html').toggleClass('scroll');
  });
});
