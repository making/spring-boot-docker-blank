# Spring Boot Docker Blank

Maven archetype to create a docker-configured maven project for Spring Boot Application

#### Build the application

```
$ mvn clean package
$ sudo docker build -t spring-boot-docker-demo .
```

#### Deploy to Docker container

```
$ sudo docker run -p 8080:8080 -t spring-boot-docker-demo
```
Access [http://localhost:8080](http://localhost:8080)

## License

Licensed under the Apache License, Version 2.0.
