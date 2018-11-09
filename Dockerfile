FROM alpine:3.3

RUN apk --update add imagemagick \
    && sed -r -i "s|^.*pattern\=\"PDF\".*$||g" /etc/ImageMagick-6/policy.xml \
    && rm -rf /var/cache/apk/*
