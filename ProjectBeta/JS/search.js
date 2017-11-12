$(document).ready(function () {
    $("#ser-input").focus(function () {
        $('.search-full-view').addClass("search-normal-screen");

    });
    $("#search-close").click(function () {
        $('.search-full-view').removeClass("search-normal-screen");
    
    });
});