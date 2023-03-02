#grab lightweight nginx
FROM nginx:alpine

#set our envirment variable for the random string to print
ENV RANDOM_STRING=""

COPY index.html /usr/share/nginx/html/

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

CMD["nginx", "-g", "daemon off;"]
