window.JeffPortfolio = window.JeffPortfolio || {}
JeffPortfolio.homePage = JeffPortfolio.homePage || {}
(($, homePage) ->
  New = (opts)->
    this.topSection = opts.topSection
    this.heroText = opts.heroText
    this.accordion = opts.accordion
    this.projects = opts.projects
    return this
  homePage.New = New

  New::bind = ->
    this.bindTopShelfScroll()
    this.bindAccordionClick()
    this.bindAccordionHover()
    this.bindProjectsClick()
    return this

  New::bindTopShelfScroll = ->
    self = this
    $(window).bind "scroll", ->
       if $(window).scrollTop() == 0
         $('.top-shelf-media, .hero-text').attr('style', 'transform: translate3d(0px, 0px, 0px) scale(1) rotate(0deg); opacity: 1;')
       else if $(window).scrollTop() >= self.topSection.innerHeight() - 60
         $("header").addClass("below-shelf")
       else
         $("header").removeClass("below-shelf")

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
      $(this).parent().find('div.content').removeClass("accordion-nonhover").addClass("accordion-hover")
      $(this).removeClass("gray-border-bottom").addClass("red-border-bottom")      
      return
    ).mouseleave ->
      $(this).parent().find('div.content').removeClass("accordion-hover").addClass("accordion-nonhover")
      $(this).removeClass("red-border-bottom").addClass("gray-border-bottom")
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
