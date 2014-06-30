(function() {
  window.JeffPortfolio = window.JeffPortfolio || {};

  JeffPortfolio.homePage = JeffPortfolio.homePage || {};

  (function($, homePage) {
    var New;
    New = function(opts) {
      this.dryEraseImgs = opts.dryEraseImgs;
      this.topSection = opts.topSection;
      this.heroText = opts.heroText;
      this.shareDryEraseImg = opts.shareDryEraseImg;
      this.flowDryEraseImg = opts.flowDryEraseImg;
      this.abDryEraseImg = opts.abDryEraseImg;
      this.chattermapDryEraseImg = opts.chattermapDryEraseImg;
      this.accordion = opts.accordion;
      return this;
    };
    homePage.New = New;
    New.prototype.bind = function() {
      this.bindPageLoad();
      this.bindWindowResize();
      this.bindTopShelfScroll();
      this.bindAccordionClick();
      this.bindAccordionHover();
      return this;
    };
    New.prototype.bindPageLoad = function() {
      var self;
      self = this;
      setTimeout((function() {
        self.executeFadeAnimation(self.shareDryEraseImg, "Left");
      }), 500);
      self.shareDryEraseImg.one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function() {
        return self.executeFadeAnimation(self.chattermapDryEraseImg, 'Right');
      });
      self.chattermapDryEraseImg.one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function() {
        return self.executeFadeAnimation(self.flowDryEraseImg, 'Left');
      });
      return self.flowDryEraseImg.one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function() {
        return self.executeFadeAnimation(self.abDryEraseImg, 'Right');
      });
    };
    New.prototype.bindWindowResize = function() {
      var self;
      return self = this;
    };
    New.prototype.bindTopShelfScroll = function() {
      var self;
      self = this;
      return $(window).bind("scroll", function() {
        if ($(window).scrollTop() >= self.topSection.innerHeight() - 60) {
          $("header").addClass("below-shelf");
        } else {
          $("header").removeClass("below-shelf");
        }
        return self.heroText.css({
          'opacity': (300 - $(window).scrollTop()) / 100
        });
      });
    };
    New.prototype.bindAccordionClick = function() {
      var self;
      self = this;
      return this.accordion.click(function() {
        if ($(this).find('dd').hasClass('active')) {
          return $(this).find('a').text('Expand Skills');
        } else {
          return $(this).find('a').text('Collapse Skills');
        }
      });
    };
    New.prototype.bindAccordionHover = function() {
      var self;
      self = this;
      return this.accordion.find('a').mouseenter(function() {
        $(this).parent().find('div.content').css('border', '2px solid #c8c8c8').css('border-top', 'none');
      }).mouseleave(function() {
        $(this).parent().find('div.content').css('border', '2px solid #8c8c8c').css('border-top', 'none');
      });
    };
    New.prototype.resizeTopShelf = function() {
      var self, vph, vpw;
      self = this;
      vph = $(window).height();
      vpw = $(window).width();
      if (vpw >= 640) {
        return self.topSection.css({
          'height': vph + 'px'
        });
      }
    };
    return New.prototype.executeFadeAnimation = function(element, direction) {
      var self;
      self = this;
      element.css('visibility', 'visible');
      return element.addClass('animated fadeIn' + direction);
    };
  })(jQuery, JeffPortfolio.homePage);

}).call(this);
