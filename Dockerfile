FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java",”-Dspring.data.mongodb.uri=mongodb://mongo/my-web-app”,"-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
