FROM dockerfile/java:oracle-java8

ADD projectName.jar /opt/projectName/
EXPOSE 8080
WORKDIR /opt/projectName/
CMD ["java", "-Xms512m", "-Xmx1g", "-jar", "projectName.jar"]