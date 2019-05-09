# start from base
FROM taljmars/jenkins_enhanced
MAINTAINER Tal Martsiano <taljmars@gmail.com>

RUN mkdir /var/tmp/jenkings_tmp

COPY jobs /var/tmp/jenkings_tmp/
COPY hudson.tasks.Maven.xml /var/tmp/jenkings_tmp/
COPY config.xml /var/tmp/jenkings_tmp/

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

