FROM tiangolo/nginx-rtmp

EXPOSE 80

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY web /web
