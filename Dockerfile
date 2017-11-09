FROM dockerfile/java:oracle-java8

WORKDIR /
ADD target/spring-boot-docker-blank-1.0.6-SNAPSHOT.jar /app.jar
EXPOSE 8080

ENV JAVA_OPS -Xmx256M -Xms512M
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPS -jar /app.jar"]
