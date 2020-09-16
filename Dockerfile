FROM alpine
WORKDIR /v2ray
RUN wget https://github.com/v2ray/v2ray-core/releases/download/v4.22.1/v2ray-linux-64.zip && unzip v2ray-linux-64.zip && rm -f v2ray-linux-64.zip
COPY docker-entrypoint.sh .
RUN chmod +x /v2ray/docker-entrypoint.sh
CMD ["/v2ray/docker-entrypoint.sh"]