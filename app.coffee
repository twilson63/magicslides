http = require 'http'
connect = require 'connect'
meryl = require 'meryl'
coffeekup = require './vendor/coffeekup/lib/coffeekup'
now = require 'now'

meryl
  .p(connect.static('public'))
  .get '/', (req, resp) ->
    resp.render 'layout', 
      content: 'index'

  .options = {
    templateExt: '.coffee'
    templateFunc: coffeekup.adapters.meryl
    templateDir: 'views'
  }
server = http.createServer(meryl.cgi({debug: true}))

server.listen(Number(process.env.VMC_APP_PORT) || 80)

everyone = now.initialize server

everyone.now.distributeMessage = (slide) ->
  everyone.now.receiveMessage slide

