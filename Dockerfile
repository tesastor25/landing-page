FROM nginx:stable-alpine

COPY . /usr/share/nginx/html/

RUN sudo apt-get install automake autotools-dev fuse g++ git libcurl4-gnutls-dev libfuse-dev libssl-dev libxml2-dev make pkg-config

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
