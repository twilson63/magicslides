div 'data-role': 'page', id: 'html1998', ->
  div 'data-role': 'header','data-backbtn': 'false', ->
    h1 'Html 1998'
  div 'data-role': 'content', class: 'code-slide', ->
    h1 'Html 1998'
    pre ->
      code ->
        '''
        &lt;p&gt;
          &lt;font family='arial' size='20pt' &gt;
            &lt;a href='#' onclick='javascript: alert('hello');'&gt;
              Awesome Link
            &lt;/a&gt;
          &lt;/font&gt;
        &lt;/p&gt;
        '''

