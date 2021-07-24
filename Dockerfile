FROM nginx:stable-alpine

RUN apk update \
    && apk install automake autotools-dev fuse g++ git libcurl4-gnutls-dev libfuse-dev libssl-dev libxml2-dev make pkg-config

RUN git clone https://github.com/s3fs-fuse/s3fs-fuse.git

COPY . /usr/share/nginx/html/

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
