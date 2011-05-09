div 'data-role': 'page', id: 'plugins', ->
  div 'data-role': 'header','data-backbtn': 'false', ->
    h1 'JQuery Plugins'
  div 'data-role': 'content', ->
    h1 'JQuery Plugins'
    script src: "https://gist.github.com/959562.js?file=plugin.js"
    h1 'CoffeeScript'
    script src: "https://gist.github.com/959567.js?file=plugin.coffee"