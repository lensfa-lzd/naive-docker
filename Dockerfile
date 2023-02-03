FROM debian :latest

WORKDIR /root
COPY caddy /root/caddy
COPY Caddyfile /root/Caddyfile
COPY fullchain.pem /cert/fullchain.pem
COPY privkey.pem /cert/privkey.pem

VOLUME /root
ENV TZ=Asia/Shanghai
CMD [ "caddy", "--config", "Caddyfile" ]