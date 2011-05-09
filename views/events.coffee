div 'data-role': 'page', id: 'events', ->
  div 'data-role': 'header','data-backbtn': 'false', ->
    h1 'shortcut'
  div 'data-role': 'content', class: 'code-slide', ->
    h1 'Shortcut'
    pre ->
      code ->
        '''
        &lt;script&gt;
          $("a").click(function(){

          });
        &lt;/script&gt;
        '''
