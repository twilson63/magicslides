div 'data-role': 'page', id: 'ready', ->
  div 'data-role': 'header','data-backbtn': 'false', ->
    h1 'Document Ready'
  div 'data-role': 'content', class: 'code-slide', ->
    h1 'Document Ready'
    pre ->
      code ->
        '''
        &lt;script&gt;
          $(document).ready(function() {
            ...
          });
        &lt;/script&gt;
        '''

