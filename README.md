example-docker
======================
This example shows a developer workflow using docker and node.

To get started:

Install docker
https://www.docker.com/

Install boot2docker
http://boot2docker.io/

Run in terminal
$ boot2docker init
$ boot2docker up
$ docker build -t example-node .
$ docker run -d -p 3000:3000 -t my-app
$ open http://192.168.59.104:3000/