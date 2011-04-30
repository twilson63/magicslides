var net = require('net');

exports.MultiServer = function(everyone, pingTime){
  pingTime = pingTime || 6000;
	var socketMap = {};
  var serverName = generateServerName();
  var numPeers = 0;
	
	var messageHandlers = {
	  listPeers: function(message, socket){
		var peers = message.data.peers;
      for(var peerName in peers){
        numPeers++;
        var connection = net.createConnection(peers[peerName].port, peers[peerName].host);
        connection.on('connect', function(){
        connection.write(JSON.stringify({type: 'identify', data:{name: serverName}}));
        });
        connection.on('data', onPeerData);
        connection.on('close', onPeerClose);
        socketMap[peerName] = connection;
      }
      console.log("Total peers: " + numPeers);
    },
	  
	  identify: function(message, socket){
      socketMap[message.data.name] = socket;
      numPeers++;
      console.log("Total peers: " + numPeers);
	  },
    
    peerDisconnect: function(message, socket){
      delete socketMap[message.data.name];
      numPeers--;
      console.log("Total peers: " + numPeers);
    }    
	}

	var tcp = net.createServer(function(socket){
	  socket.on('data', function(message){
		message = JSON.parse(message);
		messageHandlers[message.type](message, socket);
	  });
	  
	  socket.on('close', onPeerClose);
	});

	var lbConnection = net.createConnection(8124);

	lbConnection.on('data', function(message){
	  message = JSON.parse(message.toString());
	  messageHandlers[message.type](message, lbConnection);
	});


	lbConnection.on('connect', function(){
	  tcp.listen(onTcpReady);
    setInterval(pingLoadBalancer, pingTime);
	});
  
  function generateServerName(){
    var text = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

    for( var i=0; i < 5; i++ )
    text += possible.charAt(Math.floor(Math.random() * possible.length));

    return text;
  }
  
  function onTcpReady(){
    var address = tcp.address();
    console.log("opened server on %j", address);
    
    //Ask the load balancer for list of peers
    var tcpAddress = tcp.address();
    lbConnection.write(JSON.stringify({type: 'identify', data: {name: serverName, port:tcpAddress.port}}));
  }

	function onPeerClose(){


	}

	function onPeerData(){

	}
  
  function pingLoadBalancer(){
    lbConnection.write(JSON.stringify({type: 'ping', data: {name: serverName}}));
  }
}