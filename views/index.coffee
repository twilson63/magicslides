div class: 'container', ->
  section id: 'menu', ->
    ul ->
      li ->
        a href: '#slide-1', ->
          "Slide 1"
      li ->
        a href: '#slide-2', ->
          "Slide 2"
      li ->
        a href: '#slide-3', ->
          "Slide 3"
      li ->
        a href: '#slide-4', ->
          "Slide 4"
      li ->
        a href: '#slide-5', ->
          "Slide 5"

  
  section class: 'slideshow', ->
    div class: 'slides', ->
      ul ->
        li id: 'slide-1', ->
          div class: 'content', ->
            h1 'Welcome to Magic Slides'
        li id: 'slide-2', ->
          div class: 'content', ->
            p 'Magic Slides auto advances your slides'
        li id: 'slide-3', ->
          div class: 'content', ->
            p 'All you have to do is enter "pres" as your name'
        li id: 'slide-4', ->
          div class: 'content', ->
            h1 'BAM!'
        li id: 'slide-5', ->
          div class: 'content', ->
            h1 'You are the presenter'
