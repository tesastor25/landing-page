FROM nginx:stable-alpine

RUN apk update \
    && apk --update add fuse alpine-sdk automake autoconf libxml2-dev fuse-dev curl-dev git openssl-dev

RUN git clone https://github.com/s3fs-fuse/s3fs-fuse.git

COPY . /usr/share/nginx/html/

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
