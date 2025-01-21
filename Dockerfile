#final stage
FROM alpine:3.21
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN apk --no-cache add ca-certificates
RUN apk --no-cache add -U tzdata
ENV TZ=Asia/Shanghai

COPY ./tmp/healthy /tmp
