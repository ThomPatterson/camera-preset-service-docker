FROM mhart/alpine-node:10.6

WORKDIR /usr/app

RUN apk update && \
    apk upgrade && \
    apk add git tzdata && \
    git clone https://github.com/ThomPatterson/camera-preset-service.git && \
    cd camera-preset-service && \
    npm install && \
    apk del git && \
    rm -rf /tmp/npm*

WORKDIR /usr/app/camera-preset-service

ENV CONFIG={\"CAMERA_ADDRESS\":\"192.168.0.1\",\"ONVIF_PORT\":80,\"ONVIF_USER\":\"admin\",\"ONVIF_PASS\":\"123456\",\"ONVIF_SERVICE_PATH\":\"\"}

ENV TZ=America/Chicago

EXPOSE 8080

CMD ["node", "index.js"]
