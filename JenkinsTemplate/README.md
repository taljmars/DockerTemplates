# Jenkins Template

Deployable Jenkins for AWS Elastic Beantalk. 
Unlike the standard jenkins this one comes with the following enhancments:
- Maven 3.0.4
- Java 1.8
- Git

Please pay attention, some jenkins plugins are installed by default as part of the installation this docker deployment.
The list of installed plugin can be found in plugins.txt file, if you wish to change it you will need to clone this branch/view, modify the plugin and build the docker image once again.

## Prerequisites
Docker environment or AWS elastic beanstalk environment

## Usage 
### AWS Usage
Create a Elastic Beanstalk instance of Docker type and import 'Dockerrun.aws.json' file to it
### Docker Usage
Running an image via docker
```
$ sudo docker run -d taljmars/jenkins_template:latest
```
Open Jenkins and enjoy http://\<your-server-ip\>

## Initial Access
A single user is already configured in the jenkins named 'admin', password for this user exist in the  /var/jenkins_home/secrets/initialAdminPassword 

## Building
In case you would like to build the image localy based on this github branch, you can always clone it localy and run the following:
```
$ sudo docker build .-t <your-image-name>:latest
$ sudo docker run <your-image-name>:latest
```

Enjoy !
taljmars@gmail.com
