# start from base
FROM taljmars/jenkins_enhanced
MAINTAINER Tal Martsiano <taljmars@gmail.com>

COPY jobs /var/tmp/jenkins_tmp/

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

