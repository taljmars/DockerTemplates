# Ubunutu1404JDK18Docker

Deployable Ubuntu 14.04 with JDK 1.8 for general docker use or AWS Elastic Beantalk. Unlike the standard 14.04 this one comes with the following enhancments so you can easy run, deploy or develop any Java application.

- Java (JDK) 1.8
- Git

## Prerequisites
Docker environment or AWS elastic beanstalk environment

## Usage
### AWS Usage
Create a Elastic Beanstalk instance of Docker type and import 'Dockerrun.aws.json' file to it
### Docker Usage
Running an image via docker 
```
$ sudo docker run -d taljmars/ubuntu1404_jdk8
```

Open Jenkins and enjoy http://<your-server-ip>

Enjoy ! taljmars@gmail.com
