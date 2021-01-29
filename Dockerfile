FROM alpine

ENV CONFIG=https://raw.githubusercontent.com/PeterZhenhh/v2ray-kintohub/main/config.json

RUN apk update && apk --no-cache add ca-certificates unzip && \
    wget -c https://github.com/PeterZhenhh/v2ray-kintohub/releases/download/1.0/v2ray-linux-64.zip && \
    unzip v2ray-linux-64.zip && rm -f v2ray-linux-64.zip && \
    chmod 700 v2ray v2ctl
    
CMD ./v2ray -config $CONFIG
