# AlpineLinux, Java 7, Play framwork

FROM ashtonw/alpine-java-7
MAINTAINER ashtonw

# Install python
RUN apk --update add python

RUN curl -O https://downloads.typesafe.com/play/1.2.5.5/play-1.2.5.5.zip
RUN unzip play-1.2.5.5.zip -d / && rm play-1.2.5.5.zip && chmod a+x /play-1.2.5.5/play
ENV PATH $PATH:/play-1.2.5.5

EXPOSE 9000 8888
RUN mkdir /app

CMD ["play", "run"]
