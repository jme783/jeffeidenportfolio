window.JeffPortfolio = window.JeffPortfolio || {}
JeffPortfolio.homePage = JeffPortfolio.homePage || {}
(($, homePage) ->
  New = (opts)->
    this.dryEraseImgs = opts.dryEraseImgs
    this.topSection = opts.topSection
    this.shareDryEraseImg = opts.shareDryEraseImg
    this.flowDryEraseImg = opts.flowDryEraseImg
    this.abDryEraseImg = opts.abDryEraseImg
    this.chattermapDryEraseImg = opts.chattermapDryEraseImg
    return this
  homePage.New = New

  New::bind = ->
    this.bindPageLoad()
    this.bindWindowResize()
    this.bindTopShelfScroll()
    return this

  New::bindPageLoad = ->
    self = this
    self.resizeTopShelf()
    self.shareDryEraseImg.css('visibility', 'visible').addClass('animated fadeInLeft')
    self.chattermapDryEraseImg.css('visibility', 'visible').addClass('animated fadeInRight')
    self.flowDryEraseImg.css('visibility', 'visible').addClass('animated fadeInLeft')
    self.abDryEraseImg.css('visibility', 'visible').addClass('animated fadeInRight')

  New::bindWindowResize = ->
    self = this
    $(window).resize ->
      self.resizeTopShelf()

  New::bindTopShelfScroll = ->
    self = this
    $(window).bind "scroll", ->
       if $(window).scrollTop() >= self.topSection.innerHeight() - 20
         $("header").addClass("below-shelf")
       else
         $("header").removeClass("below-shelf")

  New::resizeTopShelf = ->
    self = this
    vph = $(window).height()
    self.topSection.css({'height':vph + 'px'})


)(jQuery, JeffPortfolio.homePage)
