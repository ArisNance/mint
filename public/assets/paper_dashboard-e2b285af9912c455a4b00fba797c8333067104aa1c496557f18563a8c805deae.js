function debounce(n,a,t){var e;return function(){var o=this,i=arguments;clearTimeout(e),e=setTimeout(function(){e=null,t||n.apply(o,i)},a),t&&!e&&n.apply(o,i)}}var fixedTop=!1,transparent=!0,navbar_initialized=!1;$(document).ready(function(){window_width=$(window).width(),window_width<=991&&pd.initRightMenu(),$('[rel="tooltip"]').tooltip()}),$(window).resize(function(){$(window).width()<=991&&pd.initRightMenu()}),pd={misc:{navbar_menu_visible:0},checkScrollForTransparentNavbar:debounce(function(){$(document).scrollTop()>381?transparent&&(transparent=!1,$(".navbar-color-on-scroll").removeClass("navbar-transparent"),$(".navbar-title").removeClass("hidden")):transparent||(transparent=!0,$(".navbar-color-on-scroll").addClass("navbar-transparent"),$(".navbar-title").addClass("hidden"))}),initRightMenu:function(){navbar_initialized||($off_canvas_sidebar=$("nav").find(".navbar-collapse").first().clone(!0),$sidebar=$(".sidebar"),sidebar_bg_color=$sidebar.data("background-color"),sidebar_active_color=$sidebar.data("active-color"),$logo=$sidebar.find(".logo").first(),logo_content=$logo[0].outerHTML,ul_content="",$off_canvas_sidebar.attr("data-background-color",sidebar_bg_color),$off_canvas_sidebar.attr("data-active-color",sidebar_active_color),$off_canvas_sidebar.addClass("off-canvas-sidebar"),$off_canvas_sidebar.children("ul").each(function(){content_buff=$(this).html(),ul_content+=content_buff}),content_buff=$sidebar.find(".nav").html(),ul_content=ul_content+'<li class="divider"></li>'+content_buff,ul_content='<ul class="nav navbar-nav">'+ul_content+"</ul>",navbar_content=logo_content+ul_content,navbar_content='<div class="sidebar-wrapper">'+navbar_content+"</div>",$off_canvas_sidebar.html(navbar_content),$("body").append($off_canvas_sidebar),$toggle=$(".navbar-toggle"),$off_canvas_sidebar.find("a").removeClass("btn btn-round btn-default"),$off_canvas_sidebar.find("button").removeClass("btn-round btn-fill btn-info btn-primary btn-success btn-danger btn-warning btn-neutral"),$off_canvas_sidebar.find("button").addClass("btn-simple btn-block"),$toggle.click(function(){1==pd.misc.navbar_menu_visible?($("html").removeClass("nav-open"),pd.misc.navbar_menu_visible=0,$("#bodyClick").remove(),setTimeout(function(){$toggle.removeClass("toggled")},400)):(setTimeout(function(){$toggle.addClass("toggled")},430),div='<div id="bodyClick"></div>',$(div).appendTo("body").click(function(){$("html").removeClass("nav-open"),pd.misc.navbar_menu_visible=0,$("#bodyClick").remove(),setTimeout(function(){$toggle.removeClass("toggled")},400)}),$("html").addClass("nav-open"),pd.misc.navbar_menu_visible=1)}),navbar_initialized=!0)}};