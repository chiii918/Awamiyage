// ハンバーガー
$(function () {
  $('.humburger__container').on('click', function() {
      $('.humburger__container').toggle('open');
  });
});
// const icons = document.querySelectorAll('.icon');
// icons.forEach (icon => {  
//   icon.addEventListener('click', (event) => {
//     icon.classList.toggle("open");
//   });
// });