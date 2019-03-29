FROM openjdk:8-jre-alpine
LABEL maintainer="Kensuke ISHIDA <kensuke@dreamarts.co.jp>"
EXPOSE 8080

ARG JAR_FILE=target/echo-0.0.1-SNAPSHOT.jar

ADD ${JAR_FILE} service.jar

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-Dspring.config.location=/etc/config/application.yaml", "-jar", "/service.jar"]
