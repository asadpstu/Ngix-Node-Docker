FROM nginx:latest
COPY ./.docker/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
