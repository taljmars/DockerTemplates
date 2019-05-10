# start from base
FROM taljmars/jenkins_enhanced
MAINTAINER Tal Martsiano <taljmars@gmail.com>

RUN mkdir /var/tmp/jenkins_tmp/jobs
COPY jobs /var/tmp/jenkins_tmp/jobs

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

