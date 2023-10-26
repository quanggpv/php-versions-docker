FROM nginx:latest

RUN apt-get update; \
	apt-get install -y vim; \ 
	true


COPY ./config/nginx/ssl/cert.pem /etc/nginx/ssl/cert.pem
COPY ./config/nginx/ssl/key.pem /etc/nginx/ssl/key.pem
