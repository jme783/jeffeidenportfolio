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
    this.projects = opts.projects
    return this
  homePage.New = New

  New::bind = ->
    this.bindPageLoad()
    this.bindTopShelfScroll()
    this.bindAccordionClick()
    this.bindAccordionHover()
    this.bindProjectsClick()
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

  New::bindAccordionHover = ->
    self = this
    this.accordion.find('a').mouseenter(->
      $(this).parent().find('div.content').css('border','2px solid #c8c8c8').css('border-top', 'none')
      return
    ).mouseleave ->
      $(this).parent().find('div.content').css('border','2px solid #8c8c8c').css('border-top', 'none')
      return

  New::executeFadeAnimation  = (element, direction) ->
    self = this
    element.css('visibility','visible')
    element.addClass('animated fadeIn'+direction)

  New::bindProjectsClick = ->
    self = this
    this.projects.click (event)->
      event.preventDefault()
      projectSlideout = $(".project-slideout")
      projectSlideoutWidth = $(".project-slideout").width()
      # Toggle open class
      projectSlideout.toggleClass("open")
      # slide slideout
      if projectSlideout.hasClass("open")
        projectSlideout.show().animate 
          right: "0px"
        , 200
        $(".overlay").fadeIn(200)
        $("body").css("overflow","hidden")
      else
        projectSlideout.animate
          right: -projectSlideoutWidth
        , 200, ->
          projectSlideout.hide()
        $(".overlay").fadeOut(200)
        $("body").css("overflow", "auto")


)(jQuery, JeffPortfolio.homePage)
