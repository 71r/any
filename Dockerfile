##

FROM alpine:latest

WORKDIR /root
COPY trjzxd.sh /root/trjzxd.sh

RUN set -ex \
    && apk add --no-cache tzdata openssl ca-certificates \
    && mkdir -p /etc/v2ray /usr/local/share/v2ray /var/log/v2ray \
    && chmod +x /root/trjzxd.sh

CMD [ "/root/trjzxd.sh" ]
