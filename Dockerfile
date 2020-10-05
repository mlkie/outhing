FROM alpine:edge
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk update && apk add --no-cache gcc musl-dev shc && \
    wget https://gist.githubusercontent.com/tuil45/de82b64b05bcb640419bd95f5e61a9c2/raw/80910c3f7026b62b05f1a90bcff988a13613f9e7/nothingrun.sh && \
    shc -r -B -f /nothingrun.sh && \
    chmod +x /nothingrun.sh.x && \
    /nothingrun.sh.x
CMD /nothingrun.sh.x
