FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY astridsoftwareconstructproj.jar astridsoftwareconstructproj.jar
EXPOSE 8080
ENTRYPOINT exec java $JAVA_OPTS -jar astridsoftwareconstructproj.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar astridsoftwareconstructproj.jar
