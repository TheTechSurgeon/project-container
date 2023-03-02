#!/bin/sh
RANDOM_STRING=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 10 | head -n 1)
sed -i "s/{{RANDOM_STRING}}/${RANDOM_STRING}/g" /usr/share/nginx/html/index.html
exec "$@"
