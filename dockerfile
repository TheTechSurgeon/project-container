#grab lightweight nginx
FROM nginx:alpine

#set our envirment variable for the random string to print
ENV RANDOM_STRING=""
# take index.html from pwd and put it in docker container
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
# do the same thing for the bash script
COPY entrypoint.sh /
#since it will run in the container we need to give it permission
RUN chmod +x /entrypoint.sh
#entrypoint runs the script once the container starts
ENTRYPOINT ["/entrypoint.sh"]
#run nginx in the foreground to prevent exit
CMD ["nginx", "-g", "daemon off;"]
