var net = require('net');
var peers = {};
var socketMap = {};
var timeouts = {};

var numPeers = 0;

var messageHandlers = {
  identify: function(message, socket){
    var remoteName = message.data.name;
    socket.write(JSON.stringify({type:'listPeers', data: {peers: peers}}));
    peers[remoteName] = {host: socket.remoteAddress, port: message.data.port};
    socketMap[remoteName] = socket;
    
    ++numPeers
    console.log("Total peers: " + numPeers);
  },
  
  ping: function(message, socket){
    clearTimeout(timeouts[message.data.name]);
    timeouts[message.data.name] = setTimeout(function(){
      delete peers[message.data.name];
      delete socketMap[message.data.name];
      
      for(var i in socketMap){
        socketMap[i].write(JSON.stringify({type: "peerDisconnect", data:{name: message.data.name}}));
      }
      
      --numPeers;
      console.log("Total peers: " + numPeers);
    }, 6000*1.5);
  }
}

var tcp = net.createServer(function (socket) {
  
  socket.on('data', function(message){
    message = JSON.parse(message.toString());
    messageHandlers[message.type](message, socket);
  });
  
});

tcp.listen(8124);