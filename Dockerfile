FROM alpine

ENV CONFIG=https://raw.githubusercontent.com/PeterZhenhh/v2ray-kintohub/main/config.json

RUN apk update && apk --no-cache add ca-certificates unzip && \
    wget -c https://github.com/PeterZhenhh/v2ray-kintohub/releases/download/1.0/something.zip && \
    unzip something.zip && rm -f something.zip && \
    chmod 700 v2ray v2ctl
    
CMD ./v2ray -config $CONFIG
