FROM taljmars/ubuntu1404_jdk8:latest
MAINTAINER Tal Martsiano <taljmars@gmail.com>


RUN echo "Update system tools"
RUN apt-get install wget -y -q

RUN echo "Adding admin user"
RUN adduser --disabled-password --gecos "" admin

WORKDIR /home/admin/
RUN echo "Downloading the latest drone server images"
RUN wget https://github.com/taljmars/DroneServer/raw/master/ServerInstallation/Linux-lite/ServerCore-2.1.4.RELEASE-linux.tar

RUN tar -xvf ServerCore-*.tar

RUN echo "Installing drone server"
RUN chmod +x install.bash
RUN ./install.bash

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]



#wget https://github.com/taljmars/DroneServer/raw/master/ServerInstallation/Linux-lite/ServerCore-2.1.4.RELEASE-linux.tar
