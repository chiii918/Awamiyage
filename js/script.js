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

//商品詳細のサムネイルクリック

$(function () {
  $(".img_click").on("click", function () {
    // クリックされたimageのsrc要素を取得
    var clickIndex = $(this).attr("src");

    // .bigimageが画像を格納する箱
    $(".big_image")
      // 箱（.big_image）の中身を全部消す
      .empty()
      // クリックされたsrcを持つimgタグを追加
      // 要素そのものにアニメーションcss用クラス（.opa）を一緒に付与してあげることで
      // クリックされる度にアニメーション（.opa）が実行される
      .append('<img src="' + clickIndex + '" class="opa"></img>');
  });
});

