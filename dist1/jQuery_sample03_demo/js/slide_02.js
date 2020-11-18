// 写真を5枚取得して横並びする処理
$(function () {
    var photoFrame = $("#photoFrame");
    for (var i = 1; i <= 5; i++) {
      photoFrame
        .find(".imageArea")
        .append("<img src='img/slide_0" + i + ".jpg'>");
    }
    setInterval(slide, 1000);
});

function slide() {
  $("#photoFrame")
    .find(".imageArea")
    .animate({ left: "-=600px" }, "slow", "easeOutSine", next);
}

currentIndex = 1;

function next() {
    var otherIndex = 1 - currentIndex;
    if (parseInt($("#imageArea" + currentIndex).css("left")) == -2400) {
        $("#imageArea" + otherIndex).css("left", "600px");
    } else if (parseInt($("#imageArea" + currentIndex).css("left")) == -3000) {
        currentIndex = otherIndex;
    }
}
