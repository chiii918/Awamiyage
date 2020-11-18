$(function () {
    $(".slideshow").each(function () {
        let slides = $(this).find("img");
        let slideCount = slides.length;
        let currentIndex = 0;

        slides.eq(currentIndex).fadeIn();

        setInterval(showNextSlide, 3000);

        function showNextSlide() {
            var nextIndex = (currentIndex + 1) % slideCount;

            slides.eq(currentIndex).fadeOut();

            slides.eq(nextIndex).fadeIn();

            currentIndex = nextIndex;
        }
    });
});
