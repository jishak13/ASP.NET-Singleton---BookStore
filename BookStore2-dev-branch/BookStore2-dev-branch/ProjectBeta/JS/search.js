$(document).ready(function () {
    console.log("search.js loaded");
    $("#serInput").focus(function () {
        $('.search-full-view').addClass("search-normal-screen");
        $('#searchTextBox').focus();
    });
    $("#searchClose").click(function () {
        $('.search-full-view').removeClass("search-normal-screen");
    });


    //active tabs
    $('a').each(function () {
        if ($(this).prop('href') == window.location.href) {
            //console.log("this href prop: " + $(this).prop('href'));
            $(this).parents('li').addClass('active');
        }
    });

    //console.log(window.location.href);
});