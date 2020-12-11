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

//インスタグラムAPI取得

$(function () {
  $.ajax({
    type: 'GET',
    url: 'https://graph.facebook.com/v5.0/17841444856097383?fields=name%2Cmedia.limit(4)%7Bcaption%2Clike_count%2Cmedia_url%2Cpermalink%2Cthumbnail_url%7D&access_token=EAAK3kzI5PLYBANeds04LHrctTwunnQ7rezcvnAnXJPpwX2ZCSL0bAGuxUsvbmGyA5auUT9zXlx4Hxb7oewjDK5cq4FtXLoBxAkF0FIYF45R6wcMuSXTL7YZBYYpEe1xmYNhrC38SwKZBqmNZCyD1GJZASpS84lqAQUfRmYh14QjEVPOGO2xs7L91L8iL7V20ZD',
    dataType: 'json',
    success: function (json) {
      var html = '';
      var insta = json.media.data;
      for (var i = 0; i < insta.length; i++) {
        html += '<div class="instagram__test"><a href="' + insta[i].permalink + '" target="_blank"><img class="instagram__pic" src="' + insta[i].media_url + '"></a></div>';
      }
      $("#instagram").append(html);
    },
    error: function () {

      //エラー時の処理
    }
  });
});


//ふわっと出てくるアニメーション       

const targetElement = document.querySelectorAll(".animationTarget");

document.addEventListener("scroll", function () {
  for (let i = 0; i < targetElement.length; i++) {
    const getElementDistance =
      targetElement[i].getBoundingClientRect().top +
      targetElement[i].clientHeight * 0.8;
    if (window.innerHeight > getElementDistance) {
      targetElement[i].classList.add("show");
    }
  }
});











//商品詳細のホバーのやつ
$(function () {

  $('.product__list--link').hover(
    function () {
      var i = $('.product__list--link').index(this);
      $('.product__txt').eq(i).css("color", "#a81f22");
      $(".product__img").eq(i).css("opacity", "0.8");
      $(".product__img").eq(i).css("border-radius", "50%");
    },
    function () {
      var i = $('.product__list--link').index(this);
      $('.product__txt').eq(i).css("color", "");
      $(".product__img").eq(i).css("opacity", "");
      $(".product__img").eq(i).css("border-radius", "");
    }
  );
});


//slick

$('.keyvisual__contents').slick({
  autoplay: true,
  autoplaySpeed: 2000,
  arrows: false,
  dots: false,
  fade: true,
  pauseOnHover: false
});
