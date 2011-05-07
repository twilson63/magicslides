doctype 5
html ->
  head ->
    title 'Magic Slides'
    meta
      name: 'viewport'
      content: 'width=device-width, minimum-scale=1, maximum-scale=1'
    link
      href: '/stylesheets/jquery.mobile-1.0a4.1.min.css'
      rel: 'stylesheet'
    link
      href: "/stylesheets/jquery.mobile.splitview.css"
      rel: "stylesheet"
    link
      href: "/stylesheets/jquery.mobile.scrollview.css"
      rel: "stylesheet"
    link
      href: "/stylesheets/jquery.mobile.grids.collapsible.css"
      rel: "stylesheet"
    # link
    #   href: "/stylesheets/app.css"
    #   rel: "stylesheet"

  body ->
    @render @content, @context

  script
    type: 'text/javascript'
    src: '/javascripts/jquery-1.5.2.min.js'
  script
    type: 'text/javascript'
    src: '/javascripts/jquery.mobile.splitview.js'
  script
    type: 'text/javascript'
    src: '/javascripts/jquery.mobile-1.0a4.1.min.js'
  script
    type: 'text/javascript'
    src: '/javascripts/jquery.easing.1.3.js'
  script
    type: 'text/javascript'
    src: '/javascripts/jquery.mobile.scrollview.js'

  # script
  #   type: 'text/javascript'
  #   src: '/nowjs/now.js'

  #coffeescript ->
    #$("#menu-page").live 'pagecreate', ->
      # $('#slides a').bind 'click', ->
      #   now.distributeMessage @href

      # now.name = prompt("What is your name?", "")
      # if now.name == 'pres'
      #   $('#menu').show()
      #   $('.slideshow').hide()
      # now.receiveMessage = (slide) ->
      #   window.location = slide

