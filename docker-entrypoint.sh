#! /bin/sh
set -e

warning_text="# === THIS FILE IS GENERATED DO NOT EDIT, EDIT TEMPLATE INSTEAD === #\n"
echo $warning_text > /etc/nginx/nginx.conf

# This will generate the conf file 
envsubst < ./nginx.conf.template >> /etc/nginx/nginx.conf

# Run the CMD
echo "Running: $@"
exec "$@"