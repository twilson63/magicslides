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

  script
    type: 'text/javascript'
    src: '/nowjs/now.js'

  coffeescript ->

    $("[data-role=page]", 'div[data-id=main]').live 'pageshow', ->
      $('div[data-role=content]', 'div[data-id=main]').css 'background-color', 'black'
      # title slide
      title_h1 = $('div[data-role=content]', 'div[data-id=main]').filter('.title-slide').children('h1')
      title_h1.css 'text-align','center'
      title_h1.css 'color', 'white'
      title_h1.css 'margin-top', '200px'
      title_h1.css 'font-size', '6em'

      # bullett slide
      bullet_h1 = $('div[data-role=content]', 'div[data-id=main]').filter('.bullet-slide').children('h1')
      bullet_h1.css 'text-align', 'center'
      bullet_h1.css 'color','white'
      bullet_h1.css 'font-size','3em'

      bullet_ul = $('div[data-role=content]', 'div[data-id=main]').filter('.bullet-slide').children('ul')
      bullet_ul.css 'margin','50px'

      bullet_li = $('div[data-role=content]', 'div[data-id=main]').filter('.bullet-slide').find('li')
      bullet_li.css 'color','white'
      bullet_li.css 'font-size', '2em'
      bullet_li.css 'margin','20px'

      #image slide
      image_img = $('div[data-role=content]', 'div[data-id=main]').filter('.image-slide').find('img')
      image_img.css 'margin-left', '35%'

      image_h2 = $('div[data-role=content]', 'div[data-id=main]').filter('.image-slide').find('h2')
      image_h2.css 'text-align', 'center'
      image_h2.css 'color','white'
      image_h2.css 'font-size','3em'


      #code slide
      code_h1 = $('div[data-role=content]', 'div[data-id=main]').filter('.code-slide').find('h1')
      code_h1.css 'text-align', 'center'
      code_h1.css 'color','white'
      code_h1.css 'font-size','2em'

      pre_code = $('div[data-role=content]', 'div[data-id=main]').filter('.code-slide').find('code')
      pre_code.css 'text-align', 'center'
      pre_code.css 'color', 'white'
      pre_code.css 'font-size', '3em'

      #form slide
      form_h1 = $('div[data-role=content]', 'div[data-id=main]').filter('.form-slide').find('h1')
      form_h1.css 'text-align', 'center'
      form_h1.css 'color','white'
      form_h1.css 'font-size','2em'

      $('#selector-practice-area *').css('font-size', '2em')

      $('#selector-button').unbind('click').click ->
        selector = $('#selectors input[type=text]').val()
        $(selector, '#selector-practice-area').css 'color', 'green'
      $('#selector-reset').unbind('click').click ->
        $('#selectors input[type=text]').val('')
        $('#selector-practice-area *').css 'color', 'black'

    #$("#menu-page").live 'pagecreate', ->
      # $('#slides a').bind 'click', ->
      #   now.distributeMessage @href

      # now.name = prompt("What is your name?", "")
      # if now.name == 'pres'
      #   $('#menu').show()
      #   $('.slideshow').hide()
      # now.receiveMessage = (slide) ->
      #   window.location = slide

