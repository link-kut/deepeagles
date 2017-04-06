
jQuery('html').removeClass('no-js');
if (!(('ontouchstart' in window) || (navigator.maxTouchPoints > 0) || (navigator.msMaxTouchPoints > 0))) jQuery('html').addClass('no-touch');

var roundabout_width, roundabout_on = false;

$(window).load(function() {
	if ($('.flexslider').length > 0) {
		$('.flexslider.simple').flexslider({
			animation      : "slide",
			animationSpeed : 750,
			easing         : "easeInOutCirc",
			useCSS         : false,
			controlNav     : false,
			start          : function() {
				$('html').removeClass('loading');
			}
		});
		$('.flexslider.detailed').flexslider({
			animation      : "fade",
			animationSpeed : 500,
			controlNav     : false,
			start          : function() {
				$('html').removeClass('loading');
			}
		});
		$('.flexslider.interior-nav').flexslider({
			animation      : "slide",
			animationSpeed : 500,
			easing         : "easeInOutCirc",
			useCSS         : false,
			controlNav     : false,
			slideshow      : false,
			start          : function() {
				$('html').removeClass('loading');
			}
		});
	} else {
		$('html').removeClass('loading');
	}
	roundabout_width = $('.roundabout').width();
	$('.roundabout ul').roundabout({
		responsive    : true,
		enableDrag    : true,
		easing        : "easeInOutCirc",
		dropEasing    : 'easeOutBounce',
		minScale      : 0.6,
		duration      : 400,
		dropDuration  : 500
	}, function() {
		$(this).fadeTo(500, 1);
		roundabout_on = true;
	});

	$('.panorama-view').panorama360({
		sliding_direction   : 1,
		sliding_controls    : true,
		sliding_interval    : 20
	});

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

	$('.tabs').tabify();

	$('#contact_form').ajaxForm({ target: '#contact_alert' });

	$(".lightbox, .button-fullsize, .fullsize").fancybox({
		padding    : 0,
		loop       : true,
		fitToView  : true,
		mouseWheel : false,
		width      : '100%',
		height     : '90%',
		autoSize   : false,
		closeClick : false,
		overlay    : { showEarly  : true },
		helpers : {
			media : {}
		}
	});

	$isotope = $('.isotope');
	$isotope.imagesLoaded(function(){
		$isotope.isotope({
			itemSelector    : '.col:visible',
			animationEngine : 'jquery',
			resizable       : true
		});
	}).infinitescroll({
		navSelector  : '.pagination',
		nextSelector : '.pagination a.next',
		itemSelector : '.isotope .col',
		bufferPx     : 140,
		loading      : {
			finishedMsg: 'No more items to load.',
			msgText : "Loading new posts...",
			img: 'http://i.imgur.com/6RMhx.gif'
		}
	}, function( newElements ) {
		var $newElems = $(newElements);
		$newElems.each(function() {
			$(this).css({ opacity: 0 });
			var selector = $('.isotope-filter a.active').data('value');
			if (selector != 'all') {
				if ($(this).data('type') != selector) $(this).hide();
			}
		});
		$newElems.imagesLoaded(function(){
			$newElems.animate({ opacity: 1 });
			$isotope.isotope( 'appended', $newElems, true ); 
		});
	});

	$('.isotope-filter a').click(function(ev) {
		$this = $(this);
		if ($this.hasClass('active')) return;
		$this.parent().children('a').removeClass('active');
		$this.addClass('active');
		var selector = $this.data('value');
		if (selector == 'all') {
			selector = '.col';
		} else {
			selector = '.col[data-type~=' + selector + ']';
		}
		$('.isotope').isotope({ filter: selector });
		return false;
	});

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
			$('.isotope').isotope("reLayout");
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