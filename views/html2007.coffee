div 'data-role': 'page', id: 'html2007', ->
  div 'data-role': 'header','data-backbtn': 'false', ->
    h1 'Html 2007'
  div 'data-role': 'content', class: 'code-slide', ->
    h1 'Html 2007'
    pre ->
      code ->
        '''
        &lt;script&gt;
          $(document).ready(function() {
            $('a').click(function() {
              alert("hello");
            });
          });
        &lt;/script&gt;
        &lt;p&gt;
          &lt;a href='#'&gt;
            Awesome Link
          &lt;/a&gt;
        &lt;/p&gt;
        '''

