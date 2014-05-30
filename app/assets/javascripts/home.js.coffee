window.JeffPortfolio = window.JeffPortfolio || {}
JeffPortfolio.homePage = JeffPortfolio.homePage || {}
(($, homePage) ->
  New = (opts)->
    this.dryEraseImgs = opts.dryEraseImgs
    this.topSection = opts.topSection
    this.window = opts.window
  homePage.New = New

  New::bind = ->
    this.bindScroll()

  New::bindScroll = ->
    self = this
    self.window.scroll ->
      alert('hi')
)(jQuery, JeffPortfolio.homePage)
