div 'data-role': 'page', id: 'chaining', ->
  div 'data-role': 'header','data-backbtn': 'false', ->
    h1 'JQuery Chaining'
  div 'data-role': 'content', class: 'code-slide', ->
    h1 'JQuery Chaining'
    pre ->
      code ->
        '''
        <br />
        $('p').add('&lt;div&gt;Hello World&lt;/div&gt;');

        $('button').unbind('click').click(function(){
          alert('Click');
        });

        $('img')
          .addClass('glossy')
          .filter('[title*=apple]')
          .addClass('bigBorder');
        '''
