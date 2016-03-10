FROM anapsix/alpine-java:jre

ENV PLANTUML_VERSION 8037
ENV LANG en_US.UTF-8
RUN apk add --no-cache graphviz ttf-droid ttf-droid-nonlatin curl \
    && mkdir /app \
    && curl -L https://sourceforge.net/projects/plantuml/files/plantuml.${PLANTUML_VERSION}.jar/download -o /app/plantuml.jar \
    && apk del curl

ENTRYPOINT [ "java", "-jar", "/app/plantuml.jar" ]
CMD [ "-h" ]
