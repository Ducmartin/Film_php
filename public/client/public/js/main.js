$(document).ready(function () {
    //show-menu//
    $(".icon-menu").click(function () {
        $('#site').toggleClass('open-respon-menu');
        $(".icon-menu #icon").toggleClass("fa-bars fa-times")
        return false
    })
    $(window).resize(function () {
        if ($(document).width() >= 768) {
            $('#site').removeClass('open-respon-menu')
            $(".icon-menu #icon").removeClass("fa-times").addClass("fa-bars")
        }
    })
    $("#site>#menu-respon>#menu>.menu-item>a.main-menu-kind").click(function(){
      if( $('.sub-menu-kind>a').css('display')=='none'){
        $('.sub-menu-kind>a').css('display','block');
      }else{
        $('.sub-menu-kind>a').css('display','none');
      }
    })
    $("#site>#menu-respon>#menu>.menu-item>a.main-menu-country").click(function(){
      if( $('.sub-menu-country>a').css('display')=='none'){
        $('.sub-menu-country>a').css('display','block');
      }else{
        $('.sub-menu-country>a').css('display','none');
      }
    })
    $(window).scroll(function(){
      if($(this).scrollTop()>50){
        $("#top").fadeIn();
      }else{
        $("#top").fadeOut();
      }
    })
    $("#top").click(function(){
      $('html ,body').animate({scrollTop:0},150);
    })
    //------------------------------------//
  
});