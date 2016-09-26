$(window).bind('scroll', function()
{
	if ($(window).scrollTop() > 50)
	{
		$('.menu_index').addClass('coloring animated fadeIn');
	}

	else
	{
		$('.menu_index').removeClass('coloring animated fadeIn');
	}
});


$( document ).ready(function()
{
    $(".burger").click(function()
    {
        $(".nav_list").toggleClass("active_menu");
    });
});

$(window).resize(function(){

    $(".nav_list").removeClass("active_menu");
});
