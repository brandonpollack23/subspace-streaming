# Running
Docker up and map ports 80:80 and 1935:1935 for HTTP and RTMP respectively.

Stream to the RTMP port and watch at the html live.html address.

the container is [brandonpollack23/subspace-streaming](https://hub.docker.com/repository/docker/brandonpollack23/subspace-streaming)
use any label you wish :)

Follow instructions [here](https://hub.docker.com/r/tiangolo/nginx-rtmp)

To run it there is a convenient and simple docker-compose.yml for you to run:
`STREAMING_SOURCE=IP_ADDRESS docker-compose up -d`

replace all with any ip you like if you want to be restrictive.

Example run:
`docker run -d -p 80:80 -p 1935:1935 --name sss brandonpollack23/subspace-streaming:0.0.1`

# Development
It is convenient for development to mount volumes.  This can be done manually like so:

`docker run -d -v "$(pwd)"/nginx:/etc/nginx -p 80:80 -p 1935:1935 --name sss brandonpollack23/subspace-streaming:0.0.1`

`docker run -d -v "$(pwd)"/nginx:/etc/nginx -v "$(pwd)"/web:/web -p 80:80 -p 1935:1935 --name sss brandonpollack23/subspace-streaming:0.0.1`


Or it can be done with the `docker-compose.dev.yml` using

`$ docker-compose up -f docker-compose.dev.yml -d`

and the environmental variables that configure the container can be passed as usual.


`$ STREAMING_SOURCE=127.0.0.1 docker-compose up -f docker-compose.dev.yml -d`

# Gotchas

If you're on WSL (Windows Subsystem for Linux) make sure you're using the right IP address to allow streaming from.
The easiest way I've found to do this (since i am not sure how WSL configures its networking) is not detach from the container on startup, try to connect, and see what IP is getting denied.