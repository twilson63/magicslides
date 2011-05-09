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
        a href: '#johnresig', 'data-panel': 'main', 'data-transition': "flip", -> 'John Resig'
      li ->
        a href: '#html1998', 'data-panel': 'main', 'data-transition': "flip", -> 'HTML 1998'
      li ->
        a href: '#html2003', 'data-panel': 'main', 'data-transition': "flip", -> 'HTML 2003'
      li ->
        a href: '#html2007', 'data-panel': 'main', 'data-transition': "flip", -> 'HTML 2007'
      li ->
        a href: '#ujs', 'data-panel': 'main', 'data-transition': "flip", -> 'UnObstrusive JavaScript'
      li ->
        a href: '#ready', 'data-panel': 'main', 'data-transition': "flip", -> 'Ready'
      li ->
        a href: '#shortcut', 'data-panel': 'main', 'data-transition': "flip", -> 'Shortcut'
      li ->
        a href: '#selectors', 'data-panel': 'main', 'data-transition': "flip", -> 'Selectors'
      li ->
        a href: '#events', 'data-panel': 'main', 'data-transition': "flip", -> 'Events'
      li ->
        a href: '#chaining', 'data-panel': 'main', 'data-transition': "flip", -> 'Chaining'
      li ->
        a href: '#plugins', 'data-panel': 'main', 'data-transition': "flip", -> 'Plugins'
      li ->
        a href: '#css', 'data-panel': 'main', 'data-transition': "flip", -> 'Stylesheets'
      li ->
        a href: '#effects', 'data-panel': 'main', 'data-transition': "flip", -> 'Effects'
      li ->
        a href: '#ajax', 'data-panel': 'main', 'data-transition': "flip", -> 'Ajax'
      li ->
        a href: '#jquery-ui', 'data-panel': 'main', 'data-transition': "flip", -> 'JQuery UI'
