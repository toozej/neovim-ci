FROM alpine:latest

RUN apk update && \ 
    apk --no-cache add neovim git curl && \
    rm -rf /var/cache/apk/*

RUN rm -rf /root/.config/nvim/ && \
    mkdir -p /root/.config/nvim/
