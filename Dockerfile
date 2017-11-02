FROM rabbitmq:3.6-management-alpine

# 修改镜像源为阿里,  设置时区
ENV  TZ Asia/Shanghai
RUN sed -i s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/ /etc/apk/repositories \
    && apk update \
    && apk add --no-cache tzdata \ 
    && echo $TZ > /etc/timezone \ 
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
&& apk del tzdata