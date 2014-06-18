window.JeffPortfolio = window.JeffPortfolio || {}
JeffPortfolio.homePage = JeffPortfolio.homePage || {}
(($, homePage) ->
  New = (opts)->
    this.dryEraseImgs = opts.dryEraseImgs
    this.topSection = opts.topSection
    this.heroText = opts.heroText
    this.shareDryEraseImg = opts.shareDryEraseImg
    this.flowDryEraseImg = opts.flowDryEraseImg
    this.abDryEraseImg = opts.abDryEraseImg
    this.chattermapDryEraseImg = opts.chattermapDryEraseImg
    this.accordion = opts.accordion
    return this
  homePage.New = New

  New::bind = ->
    this.bindPageLoad()
    this.bindWindowResize()
    this.bindTopShelfScroll()
    this.bindAccordionClick()
    return this

  New::bindPageLoad = ->
    self = this
    setTimeout (->
      self.executeFadeAnimation self.shareDryEraseImg, "Left"
      return
    ), 500
    self.shareDryEraseImg.one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', () -> self.executeFadeAnimation(self.chattermapDryEraseImg, 'Right'))
    self.chattermapDryEraseImg.one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', () -> self.executeFadeAnimation(self.flowDryEraseImg, 'Left'))
    self.flowDryEraseImg.one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', () -> self.executeFadeAnimation(self.abDryEraseImg, 'Right'))
  New::bindWindowResize = ->
    self = this

  New::bindTopShelfScroll = ->
    self = this
    $(window).bind "scroll", ->
       if $(window).scrollTop() >= self.topSection.innerHeight() - 60
         $("header").addClass("below-shelf")
       else
         $("header").removeClass("below-shelf")
       self.heroText.css({'opacity':( 300-$(window).scrollTop() )/100})

  New::bindAccordionClick = ->
    self = this
    this.accordion.click ->
      if $(this).find('dd').hasClass('active')
        $(this).find('a').text('Expand Skills')
      else
        $(this).find('a').text('Collapse Skills')

  New::resizeTopShelf = ->
    self = this
    vph = $(window).height()
    vpw = $(window).width()
    if vpw >= 640
      self.topSection.css({'height':vph + 'px'})

  New::executeFadeAnimation  = (element, direction) ->
    self = this
    element.css('visibility','visible')
    element.addClass('animated fadeIn'+direction)


)(jQuery, JeffPortfolio.homePage)
