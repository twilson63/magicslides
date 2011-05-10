div 'data-role': 'page', id: 'selectors', ->
  div 'data-role': 'header','data-backbtn': 'false', ->
    h1 'JQuery Selectors'
  div 'data-role': 'content', class: 'form-slide', ->
    h1 'JQuery Selectors'
    div class: 'ui-grid-a', ->
      div class: 'ui-block-a', ->
        label style: 'color:white;font-size:1.5em;margin-top:5px;text-align:right;', -> 'Selector'
        input type: 'text'
      div class: 'ui-block-b', ->
        button id: 'selector-button', -> 'Select'
        button id: 'selector-reset', -> 'Reset'


    div id: 'selector-practice-area', style: 'background-color:white;padding:20px;', ->
      h2 'Header 2'
      p 'Paragraph 1'
      p class: 'someclass', -> 'Paragraph 2'
      p id: 'paragraph3', class: 'someclass', -> 'Paragraph 3'

      ul ->
        li 'List Item 1'
        li 'List Item 2'
        li 'List Item 3'

