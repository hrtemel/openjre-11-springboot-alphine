# openjre-11-springboot-alphine
Minified open jdk docker base container for spring boot web projects.

* Open JDK 11 minified JRE 
* [Alphine Linux 3.10](https://hub.docker.com/_/alpine)

## Docker File
[https://github.com/hrtemel/openjre-11-springboot-alphine/blob/master/Dockerfile](https://github.com/hrtemel/openjre-11-springboot-alphine/blob/master/Dockerfile)


## How to use this image
Start a Java instance in your app
The most straightforward way to use this image is to use a Java container as both the build and runtime environment. In your Dockerfile, writing something along the lines of the following will compile and run your project:

```Dockerfile
FROM hrtemel/openjre-11-springboot:alphine

ENV LANG=C.UTF-8
ENV APP_TIMEZONE=UTC

COPY . /app
WORKDIR /app
ENTRYPOINT ["/opt/jre/bin/java", "-Djava.security.egd=file:/dev/./urandom","-jar","/app/app.jar"]
```
