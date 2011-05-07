div 'data-role': 'panel', 'data-id': 'menu', 'data-hash': 'crumbs', 'data-contex':'a#default',  ->
  div 'data-role': 'page', id: 'main', ->
    div 'data-role': 'header', 'data-backbtn': 'false', ->
      h1 'Slides'
    div 'data-role': 'content', ->
      ul 'data-role': 'listview', 'data-theme': 'g', ->
        li ->
          a href: '#welcome', 'data-panel': 'main', 'data-transition': "flip", -> 'Welcome'
        li ->
          a href: '#whoami', 'data-panel': 'main', 'data-transition': "flip", -> 'Who am I'
        li ->
          a href: '#history', 'data-panel': 'main', 'data-transition': "flip", -> 'History'
        li ->
          a href: '#beautifulhtml', 'data-panel': 'main', -> 'Beautiful HTML'
        li ->
          a href: '#ujs', 'data-panel': 'main', -> 'UnObstrusive JavaScript'
        li ->
          a href: '#selectors', 'data-panel': 'main', -> 'Selectors'
        li ->
          a href: '#chaining', 'data-panel': 'main', -> 'Chaining'
        li ->
          a href: '#plugins', 'data-panel': 'main', -> 'Plugins'
        li ->
          a href: '#css', 'data-panel': 'main', -> 'Stylesheets'
        li ->
          a href: '#events', 'data-panel': 'main', -> 'Events'
        li ->
          a href: '#effects', 'data-panel': 'main', -> 'Effects'
        li ->
          a href: '#ajax', 'data-panel': 'main', -> 'Ajax'
        li ->
          a href: '#jquery-ui', 'data-panel': 'main', -> 'JQuery UI'


div 'data-role': 'panel', 'data-id': 'main', ->

  div 'data-role': 'page', id: 'welcome', ->
    div 'data-role': 'header', 'data-backbtn': 'false', ->
      h1 'Welcome'
    div 'data-role': 'content', ->
      h1 -> 'JQuery Workshop'

  div 'data-role': 'page', id: 'whoami', ->
    div 'data-role': 'header','data-backbtn': 'false', ->
      h1 'Who Am I'
    div 'data-role': 'content', ->
      h1 'Tom Wilson'
      ul ->
        li -> 'President of Jack Russell Software'
        li -> 'Started working with JQuery in 2007'
        li -> 'Build custom Javascript Frameworks in JQuery'
        li -> 'email: tom@jackhq.com'
        li -> 'twitter: @jackhq'
        li -> 'web: www.jackhq.com'

  div 'data-role': 'page', id: 'history', ->
    div 'data-role': 'header','data-backbtn': 'false', ->
      h1 'History'
    div 'data-role': 'content', ->
      h1 'History'
      ul ->
        li -> 'August 2005 - Selectors in Javascript - John Resig'

      pre ->
        code ->
          '''
          Behaviour.register({
              '#foo ol li': function(a) {
                a.title = "List Items!";
                a.onclick = function(){alert('Hello!');};
              },
              '#foo ol li.tmp': function(a) {
                a.style.color = 'white';
              },
              '#foo ol li.tmp .foo': function(a) {
                a.style.background = 'red';
              }
            });
          '''
      hr ->
        '&nbsp;'
      pre ->
        code ->
          '''
          $('#foo ol li')
            .set('title','List Items!')
            .bind('click',function(){alert('Hello!');})
            .select('.tmp')
              .style('color','white')
              .select('.foo')
                .style('background','red');
          '''
  div 'data-role': 'page', id: 'beautifulhtml', ->
    div 'data-role': 'header','data-backbtn': 'false', ->
      h1 'Beautiful Html'
    div 'data-role': 'content', ->
      h1 'Beautiful HTML'
      ul ->
        li ->
          p -> "UGLY HTML"
        li ->
          p -> "HTML WITHOUT STYLE"
        li ->
          p -> "HTML WITHOUT SCRIPT"

      script src: "https://gist.github.com/959551.js?file=beautiful.html"

  div 'data-role': 'page', id: 'ujs', ->
    div 'data-role': 'header','data-backbtn': 'false', ->
      h1 'UnObstrusive JavaScript'
    div 'data-role': 'content', ->
      h1 'UnObstrusive JavaScript'
      ul ->
        li -> "Ability to dynamically attach script to the dom"

  div 'data-role': 'page', id: 'selectors', ->
    div 'data-role': 'header','data-backbtn': 'false', ->
      h1 'JQuery Selectors'
    div 'data-role': 'content', ->
      h1 'JQuery Selectors'
      script src: "https://gist.github.com/959556.js?file=JQuery-Selectors.js"

  div 'data-role': 'page', id: 'chaining', ->
    div 'data-role': 'header','data-backbtn': 'false', ->
      h1 'JQuery Chaining'
    div 'data-role': 'content', ->
      h1 'JQuery Chanining'
      pre ->
        code ->
          '''
          $('p').add('<div>Hello World</div>');

          $('img').addClass('glossy').filter('[title*=apple]').addClass('bigBorder');


          '''
  div 'data-role': 'page', id: 'plugins', ->
    div 'data-role': 'header','data-backbtn': 'false', ->
      h1 'JQuery Plugins'
    div 'data-role': 'content', ->
      h1 'JQuery Plugins'
      script src: "https://gist.github.com/959562.js?file=plugin.js"
      h1 'CoffeeScript'
      script src: "https://gist.github.com/959567.js?file=plugin.coffee"