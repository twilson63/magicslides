doctype 5
html ->
  head ->
    title 'Slidy'
    link
      href: "/stylesheets/screen.css"
      media: "screen, projection"
      rel: "stylesheet"
      type: "text/css"
    
    script 
      type: 'text/javascript'
      src: '/javascripts/zepto.min.js'
    script
      type: 'text/javascript'
      src: '/nowjs/now.js'
  body ->
    @render @content, @context
