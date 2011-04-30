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



div class: 'container', ->
  section id: 'menu', ->
    ul ->
      li ->
        a href: '#slide-title-1', ->
          "Slide 1"
      li ->
        a href: '#slide-title-2', ->
          "Slide 2"
  
  section class: 'slideshow', ->
    div class: 'slides', ->
      ul ->
        li id: 'slide-title-1', ->
          div class: 'content', ->
            h1 'Welcome'
        li id: 'slide-title-2', ->
          div class: 'content', ->
            h1 'Slide 2'
