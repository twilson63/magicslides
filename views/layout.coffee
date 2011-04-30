doctype 5
html ->
  head ->
    title 'Magic Slides'
    link
      href: "/stylesheets/screen.css"
      media: "screen, projection"
      rel: "stylesheet"
      type: "text/css"
    
    script 
      type: 'text/javascript'
      src: '/javascripts/zepto.min.js'
    script
      type: 'text/javascript'
      src: '/nowjs/now.js'

    coffeescript ->
      $().ready ->
        $('a').bind 'click', ->
          now.distributeMessage @href

        now.name = prompt("What is your name?", "")
        if now.name == 'pres'
          $('#menu').show()
          $('.slideshow').hide()
        now.receiveMessage = (slide) ->
          window.location = slide




  body ->
    @render @content, @context
