example-docker
======================
This example shows a developer workflow using docker and node.

To get started:

Install docker
https://www.docker.com/

Install boot2docker
http://boot2docker.io/

Run in terminal
$ export DOCKER_USER="jsonxr"
$ boot2docker init
$ boot2docker up
$ docker build -t $DOCKER_USER/example-node .

$ docker login
$ docker push jsonxr/example-node

$ # RUN LOCALLY
$ docker run -d -e SERVER=www.pensco.com -e CONTEXT_ROOT=/partners -p 3000:3000 -t $DOCKER_USER/example-node
$ open http://192.168.59.104:3000/



$ curl -sSL https://sdk.cloud.google.com | bash
$ gcloud auth login
$ gcloud config set project example-docker


Deploy to google compute:

$ # Create an image on google compute engine
$ gcloud compute instances create docker-playground \
  --image container-vm-v20140826 \
  --image-project google-containers \
  --zone us-central1-a \
  --machine-type f1-micro
  
$ gcloud compute ssh --zone us-central1-a docker-playground
$$ docker-playground:~$ docker run -d -p 80:3000 -t jsonxr/example-node