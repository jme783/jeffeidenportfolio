(function($) {
  $.fn.accordionAnimated = function() {

    var
      $accordion = this,
      $items = $accordion.find('> dd'),
      $targets = $items.find('.content'),
      options = {
        active_class : 'active',  // class for items when active
        multi_expand: true,    // whether mutliple items can expand
        speed : 300,        // speed of animation
        toggleable: true      // setting to false only closes accordion panels when another is opened
      }
    ;

    $.extend(options, Foundation.utils.data_options($accordion));
    // Only do the animations on non-touch devices
    if(!isTouchDevice()) {
      $items.each(function(i) {
        $(this).find('a:eq(0)').on('click.accordion', function() {
          if(!options.toggleable && $items.eq(0).hasClass(options.active_class)) {
            return;
          }
          var $link = $(this).parent().find("a");
          if (!isTouchDevice()) {
            $link.css("border-bottom","none");
          }

          $targets.eq(i)
            .stop(true, true)
            .slideToggle(options.speed, function() {
              if($(this).hasClass(options.active_class)) {
                $link.css("border-bottom", "none")
              } else {
                $link.css("border-bottom","2px solid #8c8c8c");
              }
            });

          if(!options.multi_expand) {
            $targets.not(':eq('+i+')')
              .stop(true, true)
              .slideUp(options.speed);
          }
        });
      });
    }
  };
}(jQuery)); 
