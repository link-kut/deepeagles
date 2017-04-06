
jQuery('html').removeClass('no-js');
if (!(('ontouchstart' in window) || (navigator.maxTouchPoints > 0) || (navigator.msMaxTouchPoints > 0))) jQuery('html').addClass('no-touch');

var roundabout_width, roundabout_on = false;

$(window).load(function() {
	if ($('.addthis_toolbox').length > 0) {
		$.ajaxSettings.cache = true;
		$.ajax({
			url: 'http://s7.addthis.com/js/300/addthis_widget.js',
			dataType: "script",
			success: function() {
				addthis.init();
			}
		});
	}
});

$(document).ready(function() {
	$('#menu.mobile .search-div').show();
	$('.tabs').tabify();

	$filter_container = $('.filter-container');
	$filter_container_data = $filter_container.clone();
	$('.quicksand-filter a').click(function(e){
		$this = $(this);
		if ($this.hasClass('active')) return;
		$this.parent().children('a').removeClass('active');
		$this.addClass('active');
		var filter = $this.data('value');
		if (filter == 'all') {
			var $filteredData = $filter_container_data.find('.col');
		} else {
			var $filteredData = $filter_container_data.find('.col[data-type~='+filter+']');
		}
		$filter_container.quicksand($filteredData, {
			duration     : 750,
			easing       : 'easeInOutQuad',
			adjustHeight : 'dynamic',
			useScaling   : false
		});
		e.preventDefault();
		return false;
	});

	if (jQuery('html').hasClass('no-touch')) {
		jQuery('#menu li').hover(
			function () { jQuery(this).addClass("hover"); },
			function () { jQuery(this).removeClass("hover"); }
		);
	} else {
		jQuery('#menu li.has-children > a, #menu li.page_item_has_children > a').on('click',function (e) {
			if (!jQuery('#menu').hasClass('mobile')) {
				$parent = jQuery(this).parent();
				if (!$parent.parents('.hover').length) {
					jQuery('#menu li.has-children, #menu li.page_item_has_children').not($parent).removeClass('hover');
				}
				$parent.toggleClass("hover");
				e.preventDefault();
			}
		});
	}

	$('#switch').click(function(e){
		e.preventDefault();
		$(this).toggleClass('on');
		$('#menu').toggleClass('mobile');
		return false;
	});

	$('.accordion .accordion-title').click(function(e){
		$li = $(this).parent('li');
		$ul = $li.parent('.accordion');
		if ($ul.hasClass('only-one-visible')) {
			$('li',$ul).not($li).removeClass('active');
		}
		$li.toggleClass('active');
		e.preventDefault();
	});

	$(document).click(function(e){
		if ($(e.target).parents('#menu').length > 0) return;
		$('#menu #switch').removeClass('on');
		$('#menu').removeClass('mobile');
		if (!jQuery('html').hasClass('no-touch')) {
			jQuery('#menu li.has-children, #menu li.page_item_has_children').removeClass('hover');
		}
	});

	$('#top-link').click(function(e){
		$('html, body').animate({scrollTop:0}, 750, 'linear');
		e.preventDefault();
		return false;
	});

	var window_width = $('.container').width();
	$(window).smartresize(function() {
		if ($('.container').width() != window_width) {
			window_width = $('.container').width();
			$('#menu #switch').removeClass('on');
			$('#menu').removeClass('mobile');
		}
	});

	$(window).scroll(function() {
		$el = $('#top-link');
		if ($(window).scrollTop() >= 400) {
			$el.fadeIn(500);
		} else {
			$el.fadeOut(250);
		}
	});

});

(function($,sr){

	// debouncing function from John Hann
	// http://unscriptable.com/index.php/2009/03/20/debouncing-javascript-methods/
	var debounce = function (func, threshold, execAsap) {
		var timeout;

		return function debounced () {
			var obj = this, args = arguments;
			function delayed () {
				if (!execAsap)
					func.apply(obj, args);
				timeout = null;
			};

			if (timeout)
				clearTimeout(timeout);
			else if (execAsap)
				func.apply(obj, args);

			timeout = setTimeout(delayed, threshold || 100);
		};
	}
	// smartresize
	jQuery.fn[sr] = function(fn){  return fn ? this.bind('resize', debounce(fn)) : this.trigger(sr); };

})(jQuery,'smartresize');