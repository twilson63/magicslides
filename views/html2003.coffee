div 'data-role': 'page', id: 'html2003', ->
  div 'data-role': 'header','data-backbtn': 'false', ->
    h1 'Html 2003'
  div 'data-role': 'content', class: 'code-slide', ->
    h1 'Html 2003'
    pre ->
      code ->
        '''
        &lt;style&gt;
          a {
            font-family: 'arial';
            font-size: '1em';
          }
        &lt;/style&gt;
        &lt;p&gt;
          &lt;a href='#' onclick='javascript: alert('hello');'&gt;
            Awesome Link
          &lt;/a&gt;
        &lt;/p&gt;
        '''

