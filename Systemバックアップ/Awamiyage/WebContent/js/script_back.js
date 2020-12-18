"use strict";

//---------------------------------------------------------------------------
function check_alert(fnc){
// 「OK」時の処理 ＋ 確認ダイアログの表示
    var str;
    var product_check = "";

	if (fnc == 1) {
		str = '商品情報を登録します。よろしいですか？';
	} else if (fnc == 2) {
		str = '商品情報を編集します。よろしいですか？';
	} else if (fnc == 3) {
		str = '本当に削除してもよろしいですか？';
	} else if (fnc == 4) {
		str = 'メーカー情報を登録します。よろしいですか？';
	} else if (fnc == 5) {
		str = 'メーカー情報を編集します。よろしいですか？';
	}

	if (window.confirm(str)) {

//		// fnc要素を見つける
//		var ele = document.getElementById('fnc');
//
//		// fnc要素の属性を設定する
//		ele.setAttribute('value', fnc);
//
		return true;

// 「キャンセル」時の処理開始
	} else {
		//window.alert('キャンセルされました');
		return false;
	}
}

//---------------------------------------------------------------------------

//var eyecatch = document.getElementById("eyecatch");
//eyecatch.addEventListener('change', function() {
//	console.log(document.getElementById("eyecatch").files);
//	console.log(document.getElementById("eyecatch").files[0].name);
//
//	}, false);


////画像の登録有無チェック
//function p_check(){
//	window.alert("画像チェック");
//	var eyecatch_list = document.getElementById("eyecatch").files.name;
//	window.alert(eyecatch_list);
//	var photo2_list = document.getElementById("photo2").files;
//	var photo3_list = document.getElementById("photo3").files;
//	var eyecatch = "";
//	var photo2 = "";
//	var photo3 = "";
//
//	eyecatch = eyecatch_list[0].name;		//file要素が配列で返ってくるため[0]指定（入力は1ファイルだけだから）
//	window.alert("画像チェック9");
//	photo2 = photo2_list[0].name;
//	window.alert("画像チェック10");
//	photo3 = photo3_list[0].name;
//	window.alert("画像チェック11");
//
//
//	//下のjqueryで2枚目登録しないと3枚目が登録できないようになってるから、
//	//2枚目に画像が格納されて、3枚目に格納されてる場合は考慮しない
//	if(eyecatch!=""){
//		//アイキャッチだけ登録
//		window.alert(eyecatch);
//		document.getElementById("photo_check").value = "1" ;
//
//	}else if(eyecatch!="" && photo2!="" && photo3==""){
//		//アイキャッチとphoto2を登録
//		document.getElementById("photo_check").value = "2" ;
//
//	}else if(eyecatch!="" && photo2!="" && photo3!=""){
//		//3枚全て登録
//		document.getElementById("photo_check").value = "3" ;
//
//	}else{
//		window.alert(eyecatch);
//		document.getElementById("photo_check").value = "0" ;
//	}
//
//	check_alert(1)
//}





//jQueryはじまり
$(document).ready(function() {

	/*************** ログアウトを押された時コントロールに送信 **************/
	$('button[name="logout"]').click(function() {
	    window.location.href = './PageControlBack?pg_id=528';
	});

	//photo2 disabled、photo_checkの値トリガー
	$('#eyecatch').change(function() {
		var file = "";
		file = $('#eyecatch')[0].files[0];
//		window.alert(file);
		if(typeof file !== "undefined"){
			$("#photo2").prop("disabled", false);
			$('*[name="photo_check"]').val('1');
		}else{
			$("#photo2").prop("disabled", true);
			$("#photo3").prop("disabled", true);
			$('*[name="photo_check"]').val('0');
		}
	});
	//photo3 disabled、photo_checkの値トリガー
	$('#photo2').change(function() {
		var file = "";
		file = $('#photo2')[0].files[0];
		if(typeof file !== "undefined"){
			$("#photo3").prop("disabled", false);
			$('*[name="photo_check"]').val('2');
		}else{
			$("#photo3").prop("disabled", true);
			$('*[name="photo_check"]').val('1');
		}
	});
	//photo3 photo_checkの値トリガー
	$('#photo3').change(function() {
		var file = "";
		file = $('#photo3')[0].files[0];
		if(typeof file !== "undefined"){
			$('*[name="photo_check"]').val('3');
		}else{
			$('*[name="photo_check"]').val('2');
		}
	});


	/*************** 親プルダウンの選択に応じて子プルダウンの中身を変更 **************/
	var $children = $('.children');		//子要素を変数に格納
	var original = $children.html();	//後のイベントで、不要なoption要素を削除するため、オリジナルをとっておく

	//親要素を変更するとイベントが発生
	$('.parent').change(function() {

	  //選択された親要素のvalueを取得し変数に入れる
	  var val1 = $(this).val();

	  //削除された要素をもとに戻すため.html(original)を入れておく
	  $children.html(original).find('option').each(function() {
	    var val2 = $(this).data('val'); //data-valの値を取得
	    console.log(this);

	    //valueと異なるdata-valを持つ要素を削除
	    if (val1 != val2) {
	      $(this).remove();
	    }

	  });
	});


} );//jQuery終わり








/*************** （taste）検索画面でのradioボタンの値チェック【Ajax】 **************/
//$('input[name="taste"]').change(function() {
//    var value = $(this).val();
////    alert(value);
//
//    $.ajax({
//        url : 'TasteList',
//        type : 'POST',
//        data : {taste : value},
//		dataType : 'json',
//        success : function(response) {
//        	alert(response);
////        	console.log(response.products_list.length);
//
//        	//登録されている項目があるとき：親要素を空にしてから表示、ないとき：親要素内を空にする
//        	if(response.products_list.length != 0){
////        		$('product__inner').empty();
//				for (var i = 0; i < response.products_list.length; i++) {
//					$('product__inner')
//					    .append('<a href="./PageControlFront?pg_id=113&from=5&pd_id='
//					    + response.products_list[i].products_id+ '">'
//					    + response.products_list[i].products_name + '</a>');
//					$('product__inner').append('<img src="' + response.products_list[i].products_eyecatch + '" alt="写真1">');
//					$('product__inner').append('<p>' + response.products_list[i].categorys_name + '</p>');
//					if(response.products_list[i].products_taste == 1){
//						$('product__inner').append('<p>甘い</p>');
//					}else if(response.products_list[i].products_taste == 2){
//						$('product__inner').append('<p>しょっぱい</p>');
//					}else if(response.products_list[i].products_taste == 3){
//						$('product__inner').append('<p>辛い</p>');
//					}else{
//						$('product__inner').append('<p>その他</p>');
//					}
//				}
//        	}else{
////        		$('product__inner').empty();
//        	}
//
//        },
//        error : function() {
//          console.log('通信エラーです');
//        }
//      })
//
//})
