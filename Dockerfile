FROM alpine:3.6
RUN apk add -U tzdata \
&& ls /usr/share/zoneinfo \
&& cp /usr/share/zoneinfo/Asia/Taipei /etc/localtime \
&& echo "Asia/Taipei" > /etc/timezone \
&& apk del tzdata

CMD ["date"]