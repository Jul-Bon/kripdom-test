(function($) {
    $('.open-menu-btn').on('click', function () {
        $('.main-nav').addClass('open-menu');
        $('body').addClass('non-scroll');
    });

    $('.close-menu-btn').on('click', function () {
        $('.main-nav').removeClass('open-menu');
        $('body').removeClass('non-scroll');
    });

    //sticky menu
    $(window).scroll(function() {
        if($(this).scrollTop() >= 70) {
            $('.page-header').addClass('sticky');
        }
        else{
            $('.page-header').removeClass('sticky');
        }
    });

})(jQuery);


jQuery(function(){
    new WOW().init();
});