#! /bin/bash

./configure \
    --prefix=/usr/local/nginx \
    --with-http_ssl_module \
    --with-pcre=../pcre2-10.40 \
    --with-zlib=../zlib-1.2.12 \
    --with-openssl=../openssl-openssl-3.0.5
