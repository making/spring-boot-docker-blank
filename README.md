# Spring Boot Docker Blank

Maven archetype to create a docker-configured maven project for Spring Boot Application

## How to use

with Bash

    mvn archetype:generate\
     -DarchetypeGroupId=am.ik.archetype\
     -DarchetypeArtifactId=spring-boot-docker-blank-archetype\
     -DarchetypeVersion=1.0.0

with CommandPrompt (Windows)

    mvn archetype:generate^
     -DarchetypeGroupId=am.ik.archetype^
     -DarchetypeArtifactId=spring-boot-docker-blank-archetype^
     -DarchetypeVersion=1.0.0

### Example

#### Create a project

```
$ mvn archetype:generate -B\
 -DarchetypeGroupId=am.ik.archetype\
 -DarchetypeArtifactId=spring-boot-docker-blank-archetype\
 -DarchetypeVersion=1.0.0\
 -DgroupId=com.example\
 -DartifactId=hajiboot\
 -Dversion=1.0.0-SNAPSHOT
```

#### Build the application

```
$ mvn clean package
$ cd target
$ sudo docker build -t spring-boot-docker-demo .
```

#### Deploy to Docker container

```
$ sudo docker run -p 8080:8080 -t spring-boot-docker-demo
```
Access [http://localhost:8080](http://localhost:8080)

### Deploy to AWS Elastic Beanstalk

At `target` directory after `mvn package`, you can find `app.zip`.

This file has been created automatically like following

```
$ zip app.zip Dockerfile Dockerrun.aws.json *.jar
```

Go to "AWS Elastic Beanstalk Management Console".

![Beanstalk01](images/beanstalk-01.png)

Change the platform to "Docker".

![Beanstalk02](images/beanstalk-02.png)

Wait a few minutes until the default environment is created.

![Beanstalk03](images/beanstalk-03.png)

when the "Health" gets "Green", your environment is ready.

![Beanstalk04](images/beanstalk-04.png)

Then, select `app.zip` you've just created and enter the application version.
Click "Deploy".

![Beanstalk05](images/beanstalk-05.png)

After your app is deployed, the "Health" will get "Green" again.

![Beanstalk06](images/beanstalk-06.png)

Access the endpoint (default-environment-XXXXXXXX.elasticbeanstalk.com), you can meet "Hello World!".

![Beanstalk07](images/beanstalk-07.png)

You can also know the environment info using "Spring Boot Actuator" :-)

![Beanstalk08](images/beanstalk-08.png)


## License

Licensed under the Apache License, Version 2.0.
