FROM tiangolo/nginx-rtmp

# Install dependencies for env substitiution.
RUN apt-get update 
RUN apt-get install -y gettext

EXPOSE 80

# run envsubst on the template to set the configurable parts.
COPY ./docker-entrypoint.sh ./docker-entrypoint.sh
COPY nginx/templates/nginx.conf.template ./nginx.conf.template
COPY web /web

ENTRYPOINT [ "./docker-entrypoint.sh" ]

# Need to redefine CMD from parent image if ENTRYPOINT is defined: https://github.com/moby/moby/issues/5147
CMD ["nginx", "-g", "daemon off;"]