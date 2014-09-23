var express = require('express');
var app = express();

// Add a basic route – index page
app.get('/', function (req, res) {
  res.json({
    status: "ok",
    env: process.env
  });
});

var port = process.env.HTTP_PORT || 3000;
var server = server = require('http').createServer(app);
server.listen(port);
console.log('Listening on port ' + port);