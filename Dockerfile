FROM hrtemel/openjdk-11:alphine AS jdk

RUN jlink \
    --verbose \
    --add-modules java.base,java.logging,java.sql,java.xml,java.desktop,java.naming,java.security.jgss,java.instrument,java.management,jdk.unsupported  \
    --compress 2 \
    --no-header-files \
    --no-man-pages \
    --strip-debug \
    --output /opt/jre \
    --vm server

FROM alpine:latest

ENV LANG=C.UTF-8
ENV APP_TIMEZONE=UTC

COPY --from=jdk /opt/jre /opt/jre
WORKDIR /opt/jre

EXPOSE 8080
