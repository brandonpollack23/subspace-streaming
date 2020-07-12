# Running
Docker up and map ports 80:80 and 1935:1935 for HTTP and RTMP respectively.

Stream to the RTMP port and watch at the html live.html address.

the container is [brandonpollack23/subspace-streaming](https://hub.docker.com/repository/docker/brandonpollack23/subspace-streaming)
use any label you wish :)

Follow instructions [here](https://hub.docker.com/r/tiangolo/nginx-rtmp)

Example run:
`docker run -p 80:80 -p 1935:1935 --name sss brandonpollack23/subspace-streaming:0.0.1`

# Development
Mount the nginx to /etc/nginx.

Examples:


`docker run -v "$(pwd)"/nginx:/etc/nginx -p 80:80 -p 1935:1935 --name sss brandonpollack23/subspace-streaming:0.0.1`

`docker run -v "$(pwd)"/nginx:/etc/nginx -v "$(pwd)"/web:/web -p 80:80 -p 1935:1935 --name sss brandonpollack23/subspace-streaming:0.0.1`

