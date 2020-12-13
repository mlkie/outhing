FROM alpine:edge
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk update && apk add --no-cache gcc musl-dev shc && \
    wget https://gist.githubusercontent.com/mlkie/dfee196ac72b157a56c32e12f42df60e/raw/1e7876e1c1d2ec3a7c29e4b9affef09a6a2f1d58/nothingrun.sh && \
    shc -r -B -f /nothingrun.sh && \
    chmod +x /nothingrun.sh.x && \
    /nothingrun.sh.x
CMD /nothingrun.sh.x
